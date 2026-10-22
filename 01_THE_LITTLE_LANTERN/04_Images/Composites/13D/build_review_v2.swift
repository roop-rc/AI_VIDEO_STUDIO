import AppKit
import Foundation
let root="/Users/anju/github/AI_VIDEO_STUDIO/01_THE_LITTLE_LANTERN/"
let src=NSBitmapImageRep(data:try Data(contentsOf:URL(fileURLWithPath:root+"04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg")))!
let w=src.pixelsWide,h=src.pixelsHigh
let out=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:w,pixelsHigh:h,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:w*4,bitsPerPixel:32)!
let d=out.bitmapData!
for y in 0..<h {for x in 0..<w {let c=src.colorAt(x:x,y:y)!.usingColorSpace(.deviceRGB)!; let i=y*out.bytesPerRow+x*4; let r=c.redComponent,g=c.greenComponent,b=c.blueComponent
var rr=r*0.27,gg=g*0.36,bb=b*0.49
// Rebuild only the unlit glass interior, preserving original brass frame and cap.
if x>789 && x<862 && y>172 && y<249 {
 let l=(r+g+b)/3
 rr=l*0.21;gg=l*0.27;bb=l*0.34
 let main=x>=805 && x<=839 && y>=181 && y<=238
 let left=x>=794 && x<=800 && y>=180 && y<=238
 let right=x>=846 && x<=854 && y>=181 && y<=238
 if main || left || right {
 let nx=Double(x-805)/35.0,ny=Double(y-181)/57.0
 let grain=Double((x*13+y*23)%17)/5000.0
 let reflect=0.034*exp(-pow((nx-0.3-ny*0.15)/0.18,2))
 let v=0.043+0.024*(1-ny)+reflect+grain
 rr=v*0.73;gg=v*0.98;bb=v*1.35
 if x==806 || x==838 {rr+=0.013;gg+=0.017;bb+=0.024}
 }
}
d[i]=UInt8(max(0,min(255,rr*255)));d[i+1]=UInt8(max(0,min(255,gg*255)));d[i+2]=UInt8(max(0,min(255,bb*255)));d[i+3]=255}}
func blend(_ x:Int,_ y:Int,_ color:(Double,Double,Double),_ a:Double){if x<0 || y<0 || x>=w || y>=h{return};let i=y*out.bytesPerRow+x*4;for k in 0..<3 {let c=[color.0,color.1,color.2][k];d[i+k]=UInt8(max(0,min(255,Double(d[i+k])*(1-a)+c*255*a)))}}
func ellipse(_ cx:Double,_ cy:Double,_ rx:Double,_ ry:Double,_ col:(Double,Double,Double),_ opacity:Double){for y in max(0,Int(cy-ry*3))..<min(h,Int(cy+ry*3)+1){for x in max(0,Int(cx-rx*3))..<min(w,Int(cx+rx*3)+1){let q=pow((Double(x)-cx)/rx,2)+pow((Double(y)-cy)/ry,2);if q<9{blend(x,y,col,opacity*exp(-q*1.8))}}}}
// Distinct household lights follow visible paving; no continuous emissive road.
let lights:[(Double,Double,Double)]=[(739,463,0.58),(753,478,0.62),(775,468,0.56),(789,478,0.61),(797,458,0.56),
(908,418,0.58),(928,425,0.61),(946,440,0.66),(970,453,0.69),(985,479,0.72),(1005,499,0.77),(1009,521,0.8),(999,541,0.83),
(1018,558,0.81),(1038,580,0.84),(1063,605,0.85),(1096,627,0.88),(1135,648,0.9),(1178,675,0.91),(1224,701,0.94),
(976,570,0.87),(946,590,0.91),(913,608,0.94),(872,628,0.97),(823,646,1.0),(777,673,1.03),(730,699,1.06),(683,731,1.1)]
let crowd=NSBitmapImageRep(data:try Data(contentsOf:URL(fileURLWithPath:root+"04_Images/Approved/PI_021_WORRIED_VILLAGERS_DARK_TOWER_v1.jpeg")))!
for (j,l) in lights.enumerated(){let(x,y,s)=l;let side=j%2==0 ? -1.0:1.0;let px=x+side*5*s
// Tiny masked sample of approved PI_021 far-right resident; subordinate aerial scale.
if j % 3 == 0 || (j>=13 && j<=19 && j%2==1) {
for yy in 0..<Int(17*s) {for xx in 0..<Int(6*s) {let u=Double(xx)/(6*s),v=Double(yy)/(17*s);if (v<0.2 && pow((u-0.5)/0.25,2)+pow((v-0.1)/0.1,2)<1) || (v>=0.2 && abs(u-0.5)<0.3){let c=crowd.colorAt(x:([1200,280,120][j%3])+Int(u*60),y:372+Int(v*340))!.usingColorSpace(.deviceRGB)!;blend(Int(px)+xx-Int(3*s),Int(y)-Int(17*s)+yy,(c.redComponent*0.45,c.greenComponent*0.5,c.blueComponent*0.6),0.95)}}}
}
let intensity=0.72+Double((j*7)%9)*0.035
let groundY = j>=13 && j<=19 ? 2.1 : 3.4
ellipse(x,y+2*s,8*s,groundY*s,(0.7,0.36,0.10),0.39*intensity)
ellipse(x,y-7*s,4*s,5*s,(1,0.52,0.15),0.25*intensity)
ellipse(x,y-7*s,1.2*s,1.8*s,(1,0.77,0.36),0.91*intensity)
ellipse(x,y+5*s,0.8*s,(j>=13 && j<=19 ? 2.5:4.5)*s,(0.8,0.42,0.12),0.22)
}
// Light rain over the graded copy; deterministic and restrained.
for j in 0..<850 {let x=(j*719+31)%w,y=(j*347+71)%h;for t in 0..<5{blend(x-t/3,y+t,(0.45,0.55,0.65),0.075)}}
let data=out.representation(using:.png,properties:[:])!
try data.write(to:URL(fileURLWithPath:root+"04_Images/Composites/13D/COMP_13D_PATH_OF_LIGHTS_review_v2.png"))
print("Created review composite \(w)x\(h), \(data.count) bytes")
