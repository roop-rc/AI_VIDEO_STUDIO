import Foundation
import AVFoundation
let dir=URL(fileURLWithPath:CommandLine.arguments[1]);let asset=AVURLAsset(url:dir.appendingPathComponent("THE_LITTLE_LANTERN_ANIMATIC_v0_1.mp4"))
let tracks=asset.tracks(withMediaType:.audio);guard !tracks.isEmpty else{fatalError("No audio")}
let reader=try AVAssetReader(asset:asset);let output=AVAssetReaderAudioMixOutput(audioTracks:tracks,audioSettings:[AVFormatIDKey:kAudioFormatLinearPCM,AVLinearPCMBitDepthKey:16,AVLinearPCMIsFloatKey:false,AVLinearPCMIsBigEndianKey:false,AVLinearPCMIsNonInterleaved:false]);reader.add(output);reader.startReading();var buffers=0;var bytes=0;var nonzero=false
while let sample=output.copyNextSampleBuffer(){buffers+=1;if let block=CMSampleBufferGetDataBuffer(sample){let n=CMBlockBufferGetDataLength(block);var data=[UInt8](repeating:0,count:n);CMBlockBufferCopyDataBytes(block,atOffset:0,dataLength:n,destination:&data);bytes+=n;if data.contains(where:{$0 != 0}){nonzero=true}}}
guard reader.status == .completed,buffers>0,nonzero else{fatalError("Audio decode failed")}
let result:[String:Any]=["status":"passed","decoded_audio_buffers":buffers,"decoded_audio_bytes":bytes,"nonzero_signal":nonzero]
try JSONSerialization.data(withJSONObject:result,options:.prettyPrinted).write(to:dir.appendingPathComponent("audio_validation.json"));print(result)
