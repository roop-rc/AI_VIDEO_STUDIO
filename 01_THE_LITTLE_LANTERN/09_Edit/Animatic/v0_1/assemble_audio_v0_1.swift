import Foundation
import AppKit
import AVFoundation
import CoreVideo
let here=URL(fileURLWithPath:CommandLine.arguments[1]).standardizedFileURL
let root=here.deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent()
let cfg=try JSONSerialization.jsonObject(with:Data(contentsOf:here.appendingPathComponent("timeline_v0_1.json"))) as! [String:Any]
let shots=cfg["shots"] as! [[String:Any]], voices=cfg["voices"] as! [[String:Any]]
let W=1920,H=1080
func text(_ s:String,_ rect:NSRect,_ size:CGFloat=32,_ color:NSColor = .white){
 let p=NSMutableParagraphStyle();p.lineBreakMode = .byWordWrapping
 (s as NSString).draw(in:rect,withAttributes:[.font:NSFont.systemFont(ofSize:size,weight:.medium),.foregroundColor:color,.paragraphStyle:p])
}
func image(_ path:String,_ rect:NSRect,_ crop:Bool=false,_ zoom:CGFloat=1){
 guard !path.isEmpty,let im=NSImage(contentsOf:root.appendingPathComponent(path)) else{return}
 let sz=im.size; let f=(crop ? max(rect.width/sz.width,rect.height/sz.height):min(rect.width/sz.width,rect.height/sz.height))*zoom
 NSGraphicsContext.saveGraphicsState();NSBezierPath(rect:rect).addClip()
 im.draw(in:NSRect(x:rect.midX-sz.width*f/2,y:rect.midY-sz.height*f/2,width:sz.width*f,height:sz.height*f));NSGraphicsContext.restoreGraphicsState()
}
func bitmap(_ w:Int,_ h:Int)->NSBitmapImageRep{NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:w,pixelsHigh:h,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:w*4,bitsPerPixel:32)!}
func drawShot(_ s:[String:Any])->NSBitmapImageRep{
 let b=bitmap(W,H);NSGraphicsContext.saveGraphicsState();NSGraphicsContext.current=NSGraphicsContext(bitmapImageRep:b)
 NSColor(calibratedRed:0.055,green:0.075,blue:0.10,alpha:1).setFill();NSRect(x:0,y:0,width:W,height:H).fill()
 let kind=s["kind"] as! String;let sid=s["shot_id"] as! String
 if kind=="PLACEHOLDER"{
  text(sid,NSRect(x:120,y:855,width:1680,height:115),88,NSColor.systemOrange)
  text(s["description"] as! String,NSRect(x:120,y:650,width:1630,height:185),58)
  text("CAMERA / COMPOSITION: \(s["camera"]!)\nCHARACTERS: \(s["characters"]!)\nENVIRONMENT: \(s["environment"]!)",NSRect(x:120,y:350,width:1680,height:250),32)
  text("STORYBOARD PLACEHOLDER — FINAL IMAGE NOT YET GENERATED",NSRect(x:120,y:215,width:1680,height:80),30,.systemOrange)
 }else if kind=="EDIT/EFFECT"{
  text("THE LITTLE LANTERN",NSRect(x:300,y:540,width:1450,height:130),78)
  text("Even the smallest light can make a difference.",NSRect(x:300,y:400,width:1450,height:100),42)
 }else{
  image(s["image"] as! String,NSRect(x:0,y:0,width:W,height:H),true,kind=="DERIVATIVE" ? 1.08:1)
  if kind=="ROUGH COMPOSITE"{
   NSColor(calibratedWhite:0.08,alpha:0.95).setFill();NSRect(x:1050,y:160,width:740,height:800).fill()
   image(s["inset"] as! String,NSRect(x:1070,y:190,width:700,height:730))
   text("ROUGH REFERENCE — NOT FINAL",NSRect(x:100,y:150,width:1600,height:70),30,.systemOrange)
  }
 }
 NSColor(calibratedWhite:0,alpha:0.78).setFill();NSRect(x:0,y:0,width:W,height:110).fill()
 text("\(sid)  |  \(kind)  |  \(s["duration_seconds"]!)s  |  \(s["description"]!)",NSRect(x:45,y:26,width:1830,height:64),26)
 NSGraphicsContext.restoreGraphicsState();return b
}
func save(_ b:NSBitmapImageRep,_ name:String)throws{try b.representation(using:.png,properties:[:])!.write(to:here.appendingPathComponent(name))}
if CommandLine.arguments.contains("--inspect"){
 let refs=cfg["canonical"] as! [String];let b=bitmap(1600,1440);NSGraphicsContext.current=NSGraphicsContext(bitmapImageRep:b);NSColor.darkGray.setFill();NSRect(x:0,y:0,width:1600,height:1440).fill()
 for (i,p) in refs.enumerated(){let x=CGFloat(i%4)*400,y=CGFloat(2-i/4)*480;image(p,NSRect(x:x+10,y:y+65,width:380,height:400));text(URL(fileURLWithPath:p).lastPathComponent,NSRect(x:x+10,y:y+5,width:380,height:60),16)}
 try save(b,"canonical_reference_contact_sheet.png");print("12 canonical references decoded and contact sheet created");exit(0)
}

let video=here.appendingPathComponent("THE_LITTLE_LANTERN_ANIMATIC_v0_1.mp4");let output=here.appendingPathComponent("mixed_timeline.mp4")
let composition=AVMutableComposition();let va=AVURLAsset(url:video);let vt=composition.addMutableTrack(withMediaType:.video,preferredTrackID:kCMPersistentTrackID_Invalid)!
try vt.insertTimeRange(CMTimeRange(start:.zero,duration:CMTime(seconds:275,preferredTimescale:24)),of:va.tracks(withMediaType:.video)[0],at:.zero)
let t=composition.addMutableTrack(withMediaType:.audio,preferredTrackID:kCMPersistentTrackID_Invalid)!
for v in voices{
 let a=AVURLAsset(url:root.appendingPathComponent(v["path"] as! String))
 try t.insertTimeRange(CMTimeRange(start:.zero,duration:a.duration),of:a.tracks(withMediaType:.audio)[0],at:CMTime(seconds:v["start"] as! Double,preferredTimescale:22050))
}
let exporter=AVAssetExportSession(asset:composition,presetName:AVAssetExportPresetHighestQuality)!;exporter.outputURL=output;exporter.outputFileType = .mp4;exporter.shouldOptimizeForNetworkUse=true
let es=DispatchSemaphore(value:0);exporter.exportAsynchronously{es.signal()};es.wait();guard exporter.status == .completed else{fatalError("export \(String(describing:exporter.error))")}

try FileManager.default.removeItem(at:video);try FileManager.default.moveItem(at:output,to:video);print("Single audio track export complete")
