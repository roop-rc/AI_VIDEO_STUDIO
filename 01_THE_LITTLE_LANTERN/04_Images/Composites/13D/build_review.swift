import AppKit
import Foundation
let root="/Users/anju/github/AI_VIDEO_STUDIO/01_THE_LITTLE_LANTERN/"
let src=NSBitmapImageRep(data:try Data(contentsOf:URL(fileURLWithPath:root+"04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg")))!
let w=src.pixelsWide,h=src.pixelsHigh
let out=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:w,pixelsHigh:h,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:w*4,bitsPerPixel:32)!
let d=out.bitmapData!
for y in 0..<h {for x in 0..<w {let c=src.colorAt(x:x,y:y)!.usingColorSpace(.deviceRGB)!; let i=y*out.bytesPerRow+x*4; let r=c.redComponent,g=c.greenComponent,b=c.blueComponent
var rr=r*0.27,gg=g*0.36,bb=b*0.49
// Remove flame and warm interior within original architectural lantern, retaining frame.
if x>799 && x<851 && y>176 && y<245 {let v=0.038+Double((x*7+y*3)%11)*0.0007;rr=v;gg=v*1.13;bb=v*1.35}
// Suppress residual warm bloom immediately around the extinguished enclosure.
if x>784 && x<866 && y>163 && y<256 {let l=(rr+gg+bb)/3;rr=min(rr,l*0.8);gg=min(gg,l);bb=max(bb,l*1.16)}
d[i]=UInt8(max(0,min(255,rr*255)));d[i+1]=UInt8(max(0,min(255,gg*255)));d[i+2]=UInt8(max(0,min(255,bb*255)));d[i+3]=255}}
func blend(_ x:Int,_ y:Int,_ color:(Double,Double,Double),_ a:Double){if x<0 || y<0 || x>=w || y>=h{return};let i=y*out.bytesPerRow+x*4;for k in 0..<3 {let c=[color.0,color.1,color.2][k];d[i+k]=UInt8(max(0,min(255,Double(d[i+k])*(1-a)+c*255*a)))}}
func ellipse(_ cx:Double,_ cy:Double,_ rx:Double,_ ry:Double,_ col:(Double,Double,Double),_ opacity:Double){for y in max(0,Int(cy-ry*3))..<min(h,Int(cy+ry*3)+1){for x in max(0,Int(cx-rx*3))..<min(w,Int(cx+rx*3)+1){let q=pow((Double(x)-cx)/rx,2)+pow((Double(y)-cy)/ry,2);if q<9{blend(x,y,col,opacity*exp(-q*1.8))}}}}
// Distinct household lights follow visible paving; no continuous emissive road.
let lights:[(Double,Double,Double)]=[(748,469,0.62),(763,481,0.65),(786,472,0.6),(804,457,0.57),(923,414,0.62),(940,427,0.66),(957,441,0.7),(975,458,0.74),(990,478,0.78),(1003,499,0.82),(1010,520,0.86),(1005,544,0.91),(991,566,0.94),(955,583,0.98),(925,600,1.02),(892,616,1.05),(852,632,1.10),(808,648,1.15),(770,669,1.2),(730,693,1.25),(692,717,1.3),(651,744,1.35)]
let crowd=NSBitmapImageRep(data:try Data(contentsOf:URL(fileURLWithPath:root+"04_Images/Approved/PI_021_WORRIED_VILLAGERS_DARK_TOWER_v1.jpeg")))!
for (j,l) in lights.enumerated(){let(x,y,s)=l;let side=j%2==0 ? -1.0:1.0;let px=x+side*5*s
// Tiny masked sample of approved PI_021 far-right resident; subordinate aerial scale.
for yy in 0..<Int(17*s) {for xx in 0..<Int(6*s) {let u=Double(xx)/(6*s),v=Double(yy)/(17*s);if (v<0.2 && pow((u-0.5)/0.25,2)+pow((v-0.1)/0.1,2)<1) || (v>=0.2 && abs(u-0.5)<0.3){let c=crowd.colorAt(x:1200+Int(u*65),y:372+Int(v*340))!.usingColorSpace(.deviceRGB)!;blend(Int(px)+xx-Int(3*s),Int(y)-Int(17*s)+yy,(c.redComponent*0.45,c.greenComponent*0.5,c.blueComponent*0.6),0.95)}}}
ellipse(x,y+2*s,10*s,3.6*s,(0.7,0.36,0.10),0.45)
ellipse(x,y-7*s,4*s,5*s,(1,0.52,0.15),0.28)
ellipse(x,y-7*s,1.2*s,1.8*s,(1,0.77,0.36),0.98)
ellipse(x,y+5*s,1*s,5*s,(0.8,0.42,0.12),0.22)
}
// Light rain over the graded copy; deterministic and restrained.
for j in 0..<1250 {let x=(j*719+31)%w,y=(j*347+71)%h;for t in 0..<5{blend(x-t/3,y+t,(0.45,0.55,0.65),0.075)}}
let data=out.representation(using:.png,properties:[:])!
try data.write(to:URL(fileURLWithPath:root+"04_Images/Composites/13D/COMP_13D_PATH_OF_LIGHTS_review_v1.png"))
print("Created review composite \(w)x\(h), \(data.count) bytes")
