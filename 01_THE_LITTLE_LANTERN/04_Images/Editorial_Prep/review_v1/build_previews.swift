import AppKit
import Foundation
let project=URL(fileURLWithPath:FileManager.default.currentDirectoryPath).appendingPathComponent("01_THE_LITTLE_LANTERN")
let dir=project.appendingPathComponent("04_Images/Editorial_Prep/review_v1")
struct Raster {let w:Int;let h:Int;var p:[Double]}
var cache:[String:Raster]=[:]
func load(_ path:String)throws->Raster {if let r=cache[path]{return r};let b=NSBitmapImageRep(data:try Data(contentsOf:project.appendingPathComponent(path)))!;var a=[Double](repeating:0,count:b.pixelsWide*b.pixelsHigh*3);for y in 0..<b.pixelsHigh {for x in 0..<b.pixelsWide {let c=b.colorAt(x:x,y:y)!.usingColorSpace(.deviceRGB)!;let i=(y*b.pixelsWide+x)*3;a[i]=c.redComponent;a[i+1]=c.greenComponent;a[i+2]=c.blueComponent}};let r=Raster(w:b.pixelsWide,h:b.pixelsHigh,p:a);cache[path]=r;return r}
func sample(_ r:Raster,_ x:Double,_ y:Double)->[Double]{let x=max(0,min(Double(r.w-1),x)),y=max(0,min(Double(r.h-1),y));let ix=Int(x),iy=Int(y),jx=min(r.w-1,ix+1),jy=min(r.h-1,iy+1),fx=x-Double(ix),fy=y-Double(iy);var z=[Double](repeating:0,count:3);for k in 0..<3 {let a=r.p[(iy*r.w+ix)*3+k]*(1-fx);let b=r.p[(iy*r.w+jx)*3+k]*fx;let c=r.p[(jy*r.w+ix)*3+k]*(1-fx);let d=r.p[(jy*r.w+jx)*3+k]*fx;z[k]=(a+b)*(1-fy)+(c+d)*fy};return z}

let W=1920,H=1080
func frame(_ r:Raster,_ crop:[Double]?=nil)->Raster{var c=crop ?? [0,0,Double(r.h)*16/9,Double(r.h)];let factor=min(1,min(Double(r.w)/c[2],Double(r.h)/c[3]));c[2]*=factor;c[3]*=factor;c[0]=max(0,min(Double(r.w)-c[2],c[0]));c[1]=max(0,min(Double(r.h)-c[3],c[1]));var a=[Double](repeating:0,count:W*H*3);for y in 0..<H{for x in 0..<W{let q=sample(r,c[0]+Double(x)*c[2]/Double(W),c[1]+Double(y)*c[3]/Double(H));let i=(y*W+x)*3;for k in 0..<3{a[i+k]=q[k]}}};return Raster(w:W,h:H,p:a)}
func glow(_ a:inout Raster,_ cx:Double,_ cy:Double,_ rx:Double,_ ry:Double,_ amount:Double){for y in max(0,Int(cy-ry*3))..<min(H,Int(cy+ry*3)){for x in max(0,Int(cx-rx*3))..<min(W,Int(cx+rx*3)){let q=pow((Double(x)-cx)/rx,2)+pow((Double(y)-cy)/ry,2);if q>9{continue};let v=amount*exp(-q*1.5);let i=(y*W+x)*3;for k in 0..<3{a.p[i+k]=min(1,a.p[i+k]+v*[1,0.52,0.16][k])}}}}
func write(_ a:Raster,_ name:String)throws {let b=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:W,pixelsHigh:H,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:W*4,bitsPerPixel:32)!;let d=b.bitmapData!;for i in 0..<(W*H){for k in 0..<3{d[i*4+k]=UInt8(max(0,min(255,a.p[i*3+k]*255)))};d[i*4+3]=255};try b.representation(using:.png,properties:[:])!.write(to:dir.appendingPathComponent(name+".png"));print(name)}
let env="04_Images/References/Environments/"
let approved="04_Images/Approved/"
try write(frame(load(env+"ENV_01_BELLWOOD_AERIAL_MASTER.jpeg"),[0,0,640,360]),"01A_mountain_crop_resolution_test")
try write(frame(load(env+"ENV_01_BELLWOOD_AERIAL_MASTER.jpeg")),"01A_wider_hold_alternative")
try write(frame(load(env+"ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg"),[638,170,110,61.875]),"03A_tower_flame_extreme_crop_test")
try write(frame(load("02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg"),[460,630,130,73.125]),"03A_lumi_flame_extreme_crop_test")
try write(frame(load(approved+"PI_001_LUMI_WORKSHOP_SHELF_v1.jpeg"),[450,160,926,520.875]),"04C_conservative_reframe")
try write(frame(load(approved+"PI_018_CARVED_STONE_ARROW_REVEAL_v1.jpeg"),[0,400,680,382.5]),"10C_ground_before_marker_test")
// Child-POV valley diagnostic: distant aerial behind an aperture, not a new landscape.
let forest=try load(env+"ENV_05_FOREST_PATH_STORM_MASTER.jpeg"), aerial=try load(env+"ENV_01_BELLWOOD_AERIAL_MASTER.jpeg")
var valley=frame(forest)
for y in 0..<H{for x in 0..<W{let nx=(Double(x)-970)/330,ny=(Double(y)-350)/175,q=nx*nx+ny*ny;if q<1 {let u=(Double(x)-640)/660,v=(Double(y)-175)/350;let c=sample(aerial,u*Double(aerial.w),v*Double(aerial.h));let i=(y*W+x)*3;let alpha=min(0.82,(1-q)*3);for k in 0..<3{let target=c[k]*[0.33,0.40,0.48][k]+[0.05,0.08,0.10][k];valley.p[i+k]=valley.p[i+k]*(1-alpha)+target*alpha}}}}
try write(valley,"08A_valley_sightline_diagnostic")
var lost=valley
// Occlude distant village with storm mist, including beacon; retain foreground location.
for y in 0..<H{for x in 0..<W{let q=pow((Double(x)-970)/350,2)+pow((Double(y)-350)/190,2);if q<1{let i=(y*W+x)*3,alpha=min(0.97,(1-q)*4);for k in 0..<3{lost.p[i+k]=lost.p[i+k]*(1-alpha)+[0.095,0.13,0.16][k]*alpha}}}}
try write(lost,"08B_obscured_sightline_diagnostic")
var flicker=frame(forest);glow(&flicker,960,415,2.8,3.5,0.55);try write(flicker,"12C_flicker_on");try write(frame(forest),"12C_flicker_off")
let crowd=try load(approved+"PI_021_WORRIED_VILLAGERS_DARK_TOWER_v1.jpeg")
try write(frame(crowd,[690,285,680,382.5]),"12D_reaction_crop_only_NOT_new_action")
var more=frame(crowd)
// Five visibly available foreground/midground ordinary lanterns: review placement before approval.
for pt in [(142.0,631.0),(282.0,635.0),(713.0,594.0),(755.0,610.0),(978.0,609.0)]{let x=pt.0*Double(W)/1376,y=pt.1*Double(H)/774;glow(&more,x,y,5,9,0.7);glow(&more,x,y+22,22,5,0.15)}
try write(more,"13B_five_light_activation_diagnostic")
try write(frame(load(approved+"SHOT_13D_PATH_OF_LIGHTS_v1.jpeg"),[500,300,800,450]),"13C_edge_crop_source_REVEAL_NOT_STAGED")
try write(frame(load(approved+"PI_005_MAYA_LIFTS_LUMI_v1.jpeg")),"05C_lift_endpoint_ONLY")
try write(frame(load(approved+"SHOT_14C_VILLAGERS_RECEIVE_MAYA_v1.jpeg")),"14C_reception_hold_source")
try write(frame(load(env+"ENV_07_BELLWOOD_STREET_NIGHT_MASTER.jpeg")),"16C_street_endpoint")
try write(frame(aerial),"16C_aerial_endpoint_UNMATCHED")

try write(frame(load(env+"ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg"),[410,43,560,315]),"03A_tower_moderate_match_candidate")
try write(frame(load("02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg"),[235,527,560,315]),"03A_lumi_moderate_match_candidate")
// Alternate 08A: full canonical valley plate with forest foreground at frame margins.
var overlook=frame(aerial), fg=frame(forest)
for y in 0..<H {for x in 0..<W {let i=(y*W+x)*3
 let edge=max(max(0,(330.0-Double(x))/330),max(0,(Double(x)-1570)/350))
 let ground=max(0,(Double(y)-900)/180)
 let alpha=min(0.97,max(edge,ground))
 for k in 0..<3 {let base=overlook.p[i+k]*[0.48,0.53,0.62][k];let front=fg.p[i+k]*[0.58,0.62,0.70][k];overlook.p[i+k]=base*(1-alpha)+front*alpha}
}}
try write(overlook,"08A_overlook_alternative_DIAGNOSTIC")
var obscured=overlook
for y in 0..<H{for x in 0..<W{let i=(y*W+x)*3;let edge=min(1,max(0,Double(min(x,W-1-x))/330));let depth=max(0,min(1,(900-Double(y))/350));let alpha=0.73*edge*depth;for k in 0..<3{obscured.p[i+k]=obscured.p[i+k]*(1-alpha)+[0.12,0.17,0.21][k]*alpha}
// Remove only warm beacon pixels while retaining enclosure structure.
if x>1100 && x<1220 && y>190 && y<375 && obscured.p[i]>obscured.p[i+2]*1.08 {let l=(obscured.p[i]+obscured.p[i+1]+obscured.p[i+2])/3;obscured.p[i]=l*0.65;obscured.p[i+1]=l*0.85;obscured.p[i+2]=l}
}}
try write(obscured,"08B_overlook_obscuration_alternative_DIAGNOSTIC")
// 10C retains lower marker edge; carving itself stays above crop.
var catchGround=frame(try load(approved+"PI_018_CARVED_STONE_ARROW_REVEAL_v1.jpeg"),[500,430,600,337.5]);glow(&catchGround,1510,720,130,80,0.04);try write(catchGround,"10C_marker_base_cue_candidate")
// Static flame-dip endpoint; mask must be approved before any temporal treatment.
var dipped=frame(try load(approved+"PI_001_LUMI_WORKSHOP_SHELF_v1.jpeg"),[450,160,926,520.875])
for y in 610..<870 {for x in 870..<1070 {let q=pow((Double(x)-968)/45,2)+pow((Double(y)-760)/90,2);if q<4{let i=(y*W+x)*3;let a=0.63*exp(-q);for k in 0..<3{dipped.p[i+k]*=(1-a)}}}}
try write(dipped,"04C_flame_dip_endpoint_REVIEW")
// Second-marker diagnostic: only approved stone pixels; no pasted source background.
let marker=try load(approved+"PI_018_CARVED_STONE_ARROW_REVEAL_v1.jpeg")
let poly:[(Double,Double)]=[(822,150),(896,114),(1032,129),(1098,164),(1110,315),(1103,520),(1078,649),(808,654),(770,520),(778,260)]
func inside(_ x:Double,_ y:Double)->Bool {var v=false;var j=poly.count-1;for i in 0..<poly.count {let a=poly[i],b=poly[j];if ((a.1>y) != (b.1>y)) && x < (b.0-a.0)*(y-a.1)/(b.1-a.1)+a.0 {v = !v};j=i};return v}
var second=frame(forest)
// Contact shadow on wet terrain; no physical new junction drawn.
for y in 880..<975{for x in 1220..<1620{let q=pow((Double(x)-1415)/130,2)+pow((Double(y)-930)/13,2);if q<9{let i=(y*W+x)*3;let a=0.55*exp(-q);for k in 0..<3{second.p[i+k]*=(1-a)}}}}
for sy in 114..<655 {for sx in 770..<1112 {if inside(Double(sx),Double(sy)){let dx=1290+Int(Double(sx-770)*0.67),dy=570+Int(Double(sy-114)*0.67);if dx<W && dy<H {let c=sample(marker,Double(sx),Double(sy));let i=(dy*W+dx)*3;for k in 0..<3{second.p[i+k]=c[k]*0.78}}}}}
try write(second,"11C_second_marker_mask_DIAGNOSTIC")
// 13C preview avoids the complete established corridor; it is an editorial reveal endpoint.
var edgeView=frame(try load(approved+"SHOT_13D_PATH_OF_LIGHTS_v1.jpeg"),[500,300,800,450])
for y in 0..<500{for x in 1050..<W{let i=(y*W+x)*3;let rr=edgeView.p[i],gg=edgeView.p[i+1],bb=edgeView.p[i+2];if rr>bb*1.5 && rr>0.35 && gg>bb*1.3{let l=(rr+gg+bb)/3;edgeView.p[i]=min(rr,l*0.27);edgeView.p[i+1]=min(gg,l*0.38);edgeView.p[i+2]=min(bb,l*0.47)}}}
try write(edgeView,"13C_partial_lights_endpoint_REVIEW")
