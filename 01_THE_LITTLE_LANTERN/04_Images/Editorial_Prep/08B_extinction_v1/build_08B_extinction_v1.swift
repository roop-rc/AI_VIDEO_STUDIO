import AppKit
import AVFoundation
import CoreVideo
import Foundation
let root=URL(fileURLWithPath:FileManager.default.currentDirectoryPath).appendingPathComponent("01_THE_LITTLE_LANTERN")
let out=root.appendingPathComponent("04_Images/Editorial_Prep/08B_extinction_v1")
let src=root.appendingPathComponent("04_Images/Approved/SHOT_08AB_BELLWOOD_STORM_LIT_MASTER_v1.jpeg")
let b=NSBitmapImageRep(data:try Data(contentsOf:src))!
let w=b.pixelsWide,h=b.pixelsHigh
var pre=[Double](repeating:0,count:w*h*3)
for y in 0..<h {for x in 0..<w {let c=b.colorAt(x:x,y:y)!.usingColorSpace(.deviceRGB)!;let i=(y*w+x)*3;pre[i]=c.redComponent;pre[i+1]=c.greenComponent;pre[i+2]=c.blueComponent}}
var post=pre
// Remove direct flame within the central glass pane using adjacent same-pane material.
// Interpolate horizontally, keeping a subtle vertically varying cold glass texture.
for y in 334..<389 {for x in 450..<482 {let i=(y*w+x)*3;let q=min(1,max(0,Double(x-450)/31));let edge=min(1,Double(min(x-450,481-x))/3);let fade=min(1,Double(min(y-334,388-y))/4);let a=edge*fade
 for k in 0..<3 {let left=pre[(y*w+448)*3+k],right=pre[(y*w+484)*3+k];let sky=pre[(y*w+520+(x-450))*3+k];let v=(left*(1-q)+right*q)*0.12+sky*0.55;let cold=[0.70,0.87,1.0][k];post[i+k]=pre[i+k]*(1-a)+v*cold*a}
}}
// Cool residual beacon warmth, preserving masonry/enclosure luminance variations.
for y in 315..<415 {for x in 421..<514 {let i=(y*w+x)*3;let r=post[i],g=post[i+1],bl=post[i+2];let warm=max(0,min(1,(r-bl-0.015)*8));let dx=(Double(x)-466)/48,dy=(Double(y)-365)/54;let spatial=max(0,min(1,(1.25-dx*dx-dy*dy)*4));let a=warm*spatial;let l=min(0.23,0.2126*r+0.7152*g+0.0722*bl);for k in 0..<3 {post[i+k]=post[i+k]*(1-a)+l*[0.64,0.83,1.0][k]*a}}}
func bitmap(_ p:[Double])->NSBitmapImageRep {let z=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:w,pixelsHigh:h,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:w*4,bitsPerPixel:32)!;let d=z.bitmapData!;for i in 0..<(w*h){for k in 0..<3{d[i*4+k]=UInt8(max(0,min(255,p[i*3+k]*255)).rounded())};d[i*4+3]=255};return z}
let pb=bitmap(pre),qb=bitmap(post)
try pb.representation(using:.png,properties:[:])!.write(to:out.appendingPathComponent("08B_PRE_EXTINCTION_REFERENCE.png"))
try qb.representation(using:.png,properties:[:])!.write(to:out.appendingPathComponent("08B_POST_EXTINCTION_v1.png"))
let url=out.appendingPathComponent("08B_EXTINCTION_PREVIEW_v1.mp4")
if FileManager.default.fileExists(atPath:url.path){try FileManager.default.removeItem(at:url)}
let writer=try AVAssetWriter(outputURL:url,fileType:.mp4)
let input=AVAssetWriterInput(mediaType:.video,outputSettings:[AVVideoCodecKey:AVVideoCodecType.h264,AVVideoWidthKey:1920,AVVideoHeightKey:1080,AVVideoCompressionPropertiesKey:[AVVideoAverageBitRateKey:12000000,AVVideoMaxKeyFrameIntervalKey:24]])
input.expectsMediaDataInRealTime=false
let adaptor=AVAssetWriterInputPixelBufferAdaptor(assetWriterInput:input,sourcePixelBufferAttributes:[kCVPixelBufferPixelFormatTypeKey as String:kCVPixelFormatType_32ARGB,kCVPixelBufferWidthKey as String:1920,kCVPixelBufferHeightKey as String:1080,kCVPixelBufferCGImageCompatibilityKey as String:true,kCVPixelBufferCGBitmapContextCompatibilityKey as String:true])
writer.add(input);writer.startWriting();writer.startSession(atSourceTime:.zero)
let preCG=pb.cgImage!,postCG=qb.cgImage!
for n in 0..<96 {while !input.isReadyForMoreMediaData {Thread.sleep(forTimeInterval:0.005)}
 var buffer:CVPixelBuffer?;CVPixelBufferPoolCreatePixelBuffer(nil,adaptor.pixelBufferPool!,&buffer);let buf=buffer!;CVPixelBufferLockBaseAddress(buf,[])
 let ctx=CGContext(data:CVPixelBufferGetBaseAddress(buf),width:1920,height:1080,bitsPerComponent:8,bytesPerRow:CVPixelBufferGetBytesPerRow(buf),space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGImageAlphaInfo.noneSkipFirst.rawValue)!
 ctx.interpolationQuality = .high
 // Aspect fill: scale 1.40625; crop 5.333333 native pixels from each horizontal edge.
 let rect=CGRect(x:-7.5,y:0,width:1935,height:1080)
 ctx.draw(preCG,in:rect)
 let t=Double(n)/24;let extinct=max(0,min(1,(t-1.0833333333)/0.2083333333))
 ctx.setAlpha(extinct);ctx.draw(postCG,in:rect);ctx.setAlpha(1)
 var flash=0.0
 if t>=0.625 && t<0.75 {flash=0.26*(t-0.625)/0.125}
 if t>=0.75 && t<=1.0833333333 {flash=0.26*(1-(t-0.75)/0.3333333333)}
 ctx.setFillColor(CGColor(red:0.80,green:0.89,blue:1,alpha:max(0,flash)));ctx.fill(CGRect(x:0,y:0,width:1920,height:1080))
 CVPixelBufferUnlockBaseAddress(buf,[])
 guard adaptor.append(buf,withPresentationTime:CMTime(value:Int64(n),timescale:24)) else {fatalError("append failed: \(String(describing:writer.error))")}
}
input.markAsFinished();writer.endSession(atSourceTime:CMTime(value:4,timescale:1));let sem=DispatchSemaphore(value:0);writer.finishWriting{sem.signal()};sem.wait();guard writer.status == .completed else {fatalError("encode failed \(String(describing:writer.error))")}
let movie=AVURLAsset(url:url);print("duration",CMTimeGetSeconds(movie.duration));for t in movie.tracks {print("track",t.mediaType.rawValue,"size",t.naturalSize,"fps",t.nominalFrameRate)}
let gen=AVAssetImageGenerator(asset:movie);gen.appliesPreferredTrackTransform=true;gen.requestedTimeToleranceBefore = .zero;gen.requestedTimeToleranceAfter = .zero
for (name,t) in [("QA_FIRST",0.0),("QA_FLASH",0.75),("QA_POST",3.5)]{let cg=try gen.copyCGImage(at:CMTime(seconds:t,preferredTimescale:24),actualTime:nil);let z=NSBitmapImageRep(cgImage:cg);try z.representation(using:.png,properties:[:])!.write(to:out.appendingPathComponent(name+".png"))}
