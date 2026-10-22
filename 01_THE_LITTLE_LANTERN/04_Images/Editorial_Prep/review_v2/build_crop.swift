import AppKit
import Foundation
let project=URL(fileURLWithPath:FileManager.default.currentDirectoryPath).appendingPathComponent("01_THE_LITTLE_LANTERN")
let dir=project.appendingPathComponent("04_Images/Editorial_Prep/review_v2")
struct Raster {let w:Int;let h:Int;var p:[Double]}
var cache:[String:Raster]=[:]
func load(_ path:String)throws->Raster {if let r=cache[path]{return r};let b=NSBitmapImageRep(data:try Data(contentsOf:project.appendingPathComponent(path)))!;var a=[Double](repeating:0,count:b.pixelsWide*b.pixelsHigh*3);for y in 0..<b.pixelsHigh {for x in 0..<b.pixelsWide {let c=b.colorAt(x:x,y:y)!.usingColorSpace(.deviceRGB)!;let i=(y*b.pixelsWide+x)*3;a[i]=c.redComponent;a[i+1]=c.greenComponent;a[i+2]=c.blueComponent}};let r=Raster(w:b.pixelsWide,h:b.pixelsHigh,p:a);cache[path]=r;return r}
func sample(_ r:Raster,_ x:Double,_ y:Double)->[Double]{let x=max(0,min(Double(r.w-1),x)),y=max(0,min(Double(r.h-1),y));let ix=Int(x),iy=Int(y),jx=min(r.w-1,ix+1),jy=min(r.h-1,iy+1),fx=x-Double(ix),fy=y-Double(iy);var z=[Double](repeating:0,count:3);for k in 0..<3 {let a=r.p[(iy*r.w+ix)*3+k]*(1-fx);let b=r.p[(iy*r.w+jx)*3+k]*fx;let c=r.p[(jy*r.w+ix)*3+k]*(1-fx);let d=r.p[(jy*r.w+jx)*3+k]*fx;z[k]=(a+b)*(1-fy)+(c+d)*fy};return z}

let W=1920,H=1080
func frame(_ r:Raster,_ crop:[Double]?=nil)->Raster{var c=crop ?? [0,0,Double(r.h)*16/9,Double(r.h)];let factor=min(1,min(Double(r.w)/c[2],Double(r.h)/c[3]));c[2]*=factor;c[3]*=factor;c[0]=max(0,min(Double(r.w)-c[2],c[0]));c[1]=max(0,min(Double(r.h)-c[3],c[1]));var a=[Double](repeating:0,count:W*H*3);for y in 0..<H{for x in 0..<W{let q=sample(r,c[0]+Double(x)*c[2]/Double(W),c[1]+Double(y)*c[3]/Double(H));let i=(y*W+x)*3;for k in 0..<3{a[i+k]=q[k]}}};return Raster(w:W,h:H,p:a)}
func glow(_ a:inout Raster,_ cx:Double,_ cy:Double,_ rx:Double,_ ry:Double,_ amount:Double){for y in max(0,Int(cy-ry*3))..<min(H,Int(cy+ry*3)){for x in max(0,Int(cx-rx*3))..<min(W,Int(cx+rx*3)){let q=pow((Double(x)-cx)/rx,2)+pow((Double(y)-cy)/ry,2);if q>9{continue};let v=amount*exp(-q*1.5);let i=(y*W+x)*3;for k in 0..<3{a.p[i+k]=min(1,a.p[i+k]+v*[1,0.52,0.16][k])}}}}
func write(_ a:Raster,_ name:String)throws {let b=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:W,pixelsHigh:H,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:W*4,bitsPerPixel:32)!;let d=b.bitmapData!;for i in 0..<(W*H){for k in 0..<3{d[i*4+k]=UInt8(max(0,min(255,a.p[i*3+k]*255)))};d[i*4+3]=255};try b.representation(using:.png,properties:[:])!.write(to:dir.appendingPathComponent(name+".png"));print(name)}

try write(frame(load("04_Images/Approved/SHOT_13D_PATH_OF_LIGHTS_v1.jpeg"),[440,300,620,348.75]),"13C_village_edge_crop_REVIEW")
