from pathlib import Path
import json,subprocess,hashlib,collections,wave
O=Path(__file__).resolve().parent; R=O.parents[2]
c=json.loads((O/'timeline_v0_1.json').read_text());v=json.loads((O/'render_validation.json').read_text());assert v['status']=='passed'
before=json.loads((O/'source_hashes.json').read_text())
assert all((R/p).exists() and hashlib.sha256((R/p).read_bytes()).hexdigest()==h for p,h in before.items()),'Unexpected source changes; STOP'
counts=collections.Counter(s['kind'] for s in c['shots'])
notes='''# The Little Lantern — Animatic v0.1 Build Notes

## Build and output

Built using already-installed Swift, Apple AppKit/CoreVideo, AVFoundation and hardware-supported H.264 encoding. FFmpeg/ffprobe and DaVinci Resolve were not found; iMovie is installed. No software installation, cloud generation, AI image/video generation or voice resynthesis was used.

Run `sh build_animatic_v0_1.sh` from this directory (or pass its full path). The script prepares `timeline_v0_1.json`, decodes all canonical references for a contact sheet, renders 55 static panels with shot labels, repeats each panel for the approved number of 24fps frames, and mixes the 32 existing WAV files at documented placements before MP4 export. Build files, module cache and intermediates stay under this project directory. Successful render removes the silent intermediate MOV. Rebuild overwrites only this version's generated artifacts; source files are read-only. State updates are a separate post-validation step, not part of the render script.

Output: `THE_LITTLE_LANTERN_ANIMATIC_v0_1.mp4`  
Runtime: **275 seconds / 4:35**  
Format: **1920x1080, 16:9, 24fps**, H.264 MP4 with audio  
Slots: **55**, **6600 frames**, original boundaries preserved.

## Canonical reference inspection

All five character/scale and seven environment masters were decoded and visually reviewed using `canonical_reference_contact_sheet.png`. Only manifest-listed canonical files are visual sources. No candidate/test imagery was used. Reference art is illustrative only; character insets are clearly labelled rough reference composites, not final compositions. Images retain their aspect ratio using centre fit/crop, never stretching.

## Visual strategy and limitations

Existing establishing masters are held as static frames. Derivatives use a fixed 8% tighter centre crop/reframe. This rough version deliberately uses cuts and holds rather than simulated character animation. The intended camera language is shown on placeholder cards; planned flame/weather/lighting/many-lantern effects are labelled intent only where no appropriate visual exists. Darkening, flame extinction/relight, rain escalation and crowd growth are not faithfully represented by the reused masters. Shot 02A retains the source master's lit lantern although the final plan calls for it initially dark. These continuity limitations must not be mistaken for final imagery.

Missing character actions, marker compositions, crowd scenes and other production frames use readable 1920x1080 placeholder cards. The end card uses approved script wording. No music, SFX, final captions, production images or generated video were created. Shot labels are temporary. Placeholder blocks and long silence are intentional for timing review.

## Per-shot sources

All source paths are relative to `01_THE_LITTLE_LANTERN/`. No source asset is implied for a card generated entirely from shot-plan labels.

| Shot | Start | Duration | Storyboard class | Representation | Source assets | Treatment |
|---|---|---|---|---|---|---|
'''
for s in c['shots']:notes+=f'| {s["shot_id"]} | {s["start_time"]} | {s["duration_seconds"]}s | {s["storyboard_class"]} | {s["kind"]} | '+('; '.join('`'+p+'`' for p in s['sources']) or 'None — labelled card / approved title wording')+f' | {s["motion"]} |\n'
notes+='\nRepresentation counts: '+', '.join(f'{k}: {counts[k]}' for k in ['MASTER','DERIVATIVE','PLACEHOLDER','ROUGH COMPOSITE','EDIT/EFFECT'])+'.\n\n## Voice placements\n\nAll 32 approved WAVs are inserted once, at original sample duration and normal playback speed. No WAV is edited, regenerated, time-stretched or trimmed. Gaps remain digital silence. No music or SFX. Placement times are seconds from timeline start.\n\n| Voice ID | File | Start | End | Duration |\n|---|---|---|---|---|\n'
for a in c['voices']:notes+=f'| {a["id"]} | `{a["path"]}` | {a["start"]:.6f} | {a["end"]:.6f} | {a["duration"]:.6f} |\n'
notes+='''
## Boundary crossing and pauses

- VO_NAR_006: **77.000000–81.533515s** (01:17.000–01:21.534). Crosses **05D → 06A at 80.000s / 01:20.000**, continuing 1.533515s into the forest establishing shot. No shot boundary changes.
- VO_NAR_007: moved within its planned visual range to **81.833515s**, after a 0.3s timeline gap following VO_NAR_006. This prevents overlapping narrator clips. Its original proposed start was 80s; this is a voice-placement change only.
- VO_MAYA_002: 75.000000–76.143764s; silence until narration starts at 77s, so the intended 0.3s pause is available.
- VO_NAR_021: 252.000000–254.689932s; silence until 258s gives 3.310068s breathing room before “Sometimes...”.
- VO_NAR_022: 258.000000–258.953741s; timeline silence to 260s is **1.046259s**, preserving the intended one-second thematic hold without modifying the WAV.
- VO_NAR_023: 260.000000–262.593605s; 6.406395s breathing room remains before the 269s end card. Review whether these holds feel too long; timing remains unlocked.

## Timing observations and review

Audio occupies approximately 89.179s (32.43%) of the 275s film; 185.821s is without voice, including synthesizer silence in the audio duration calculation. The absence of music and SFX can make visual-only sections feel sparse. The longest pause between speech clips is measured below. This is a rough timing test, not evidence that the eventual final performance will match temporary synthetic pacing. Review emotional progression, placeholder holds, workshop-to-forest transition, arrow-marker discovery and final thematic pauses before approving any timing edits.

'''
vs=sorted(c['voices'],key=lambda a:a['start']);gaps=[(a['id'],b['id'],b['start']-a['end']) for a,b in zip(vs,vs[1:])];big=max(gaps,key=lambda a:a[2]);notes+=f'Longest inter-voice gap: **{big[2]:.6f}s** between {big[0]} and {big[1]}.\n'
notes+='\n## Validation\n\n'+f'- Export duration {v["duration_seconds"]:.6f}s; {v["width"]}x{v["height"]}; {v["fps"]}fps; {v["video_sample_count"]} video samples; audio tracks: {v["audio_track_count"]}.\n'
notes+='''- 55 unique, contiguous original shot slots totaling 275s; all 6600 video samples read successfully.
- 32 unique WAV placements, no overlap or truncation; source WAV counts/durations checked. No time scaling.
- Canonical source hashes, approved Markdown, all WAVs and every pre-existing file outside authorized state files verified unchanged before state update.
- Contact sheet and exported representative master, composite, placeholder and end-card previews reviewed visually.
- Technical validation does not substitute for human playback, pronunciation and emotional pacing review.

## Current approval gate

Stage 7A temporary voice: COMPLETE FOR ANIMATIC. Stage 7B: v0.1 RENDERED / AWAITING REVIEW. Timing lock FALSE. Production-image generation NOT APPROVED. Next action: human review of Animatic v0.1. No further production work is authorized by this build.
'''
(O/'ANIMATIC_v0_1_BUILD_NOTES.md').write_text(notes)
mp=R/'studio_manifest.yaml';m=json.loads(subprocess.run(['ruby','-ryaml','-rjson','-e','puts JSON.generate(YAML.safe_load(File.read(ARGV[0]), [], [], false))',str(mp)],capture_output=True,text=True,check=True).stdout)
oldshots=m['shots'];m['production'].update(current_stage='7B',current_stage_name='Animatic v0.1 — rendered / awaiting review',current_stage_status='rendered_awaiting_review',next_stage='7B',next_stage_name='Human review of Animatic v0.1',next_action='Human review of Animatic v0.1',stage_7a_complete=True,temporary_audio_status='complete_for_animatic',timing_locked=False,playable_animatic_created=True,production_image_generation_approved=False,stage_7a_authorized_scope='Temporary audio approved for animatic use; no further generation authorized.')
m['temporary_audio']['status']='complete_for_animatic';m['documents']['temporary_audio_manifest']['status']='approved_for_animatic_use';m['documents']['animatic_build_notes']={'role':'animatic_build_notes','path':'09_Edit/Animatic/v0_1/ANIMATIC_v0_1_BUILD_NOTES.md','status':'rendered_awaiting_review'}
m['animatic']={'version':'0.1','status':'rendered_awaiting_review','path':'09_Edit/Animatic/v0_1/THE_LITTLE_LANTERN_ANIMATIC_v0_1.mp4','build_script':'09_Edit/Animatic/v0_1/build_animatic_v0_1.sh','shot_slots':55,'runtime_seconds':275,'width':1920,'height':1080,'fps':24,'visual_counts':dict(counts),'voice_clips':32,'timing_locked':False,'production_image_generation_approved':False,'voice_placement_exception':{'voice_id':'VO_NAR_006','start_seconds':77,'end_seconds':77+99964/22050,'crossed_boundary':'05D → 06A','boundary_seconds':80,'following_voice_id':'VO_NAR_007','following_start_seconds':77+99964/22050+.3}}
mp.write_text(subprocess.run(['ruby','-rjson','-ryaml','-e','puts YAML.dump(JSON.parse(STDIN.read))'],input=json.dumps(m,ensure_ascii=False),text=True,capture_output=True,check=True).stdout)
p=R/'PROJECT_STATE.md';s=p.read_text();a=s.index('Stage 7 planning complete');b=s.index('## Canonical Production Facts');s=s[:a]+'''Stage 7A Temporary Voice: **COMPLETE FOR ANIMATIC**. The 32 approved temporary WAVs were used unchanged.

Stage 7B Animatic: **v0.1 RENDERED / AWAITING REVIEW**.

Output: `09_Edit/Animatic/v0_1/THE_LITTLE_LANTERN_ANIMATIC_v0_1.mp4`.

Timing lock: **FALSE**. Production image generation: **NOT APPROVED**.

Next action: **Human review of Animatic v0.1**.

'''+s[b:];s=s.replace('- Edit: `09_Edit/`.\n','').replace('Verified empty during temporary audio generation (voiceover now contains the temporary clips and manifest):','Verified empty after animatic rendering (Voiceover contains temporary clips; Edit contains Animatic v0.1):')
a=s.index('## Next Approved Action');b=s.index('## Safety / Authority Rule');s=s[:a]+'''## Next Approved Action

Human review of Animatic v0.1 before any timing changes or production imagery. See `09_Edit/Animatic/v0_1/ANIMATIC_v0_1_BUILD_NOTES.md` for all 55 visual sources, 32 voice placements and known rough-visual limitations.

VO_NAR_006 runs from 77.000000s to 81.533515s, crossing 05D → 06A at 80s. VO_NAR_007 begins at 81.833515s after a 0.3s gap. Shot boundaries remain unchanged. The final thematic pause after VO_NAR_022 is 1.046259s on the timeline; WAVs are unmodified.

Stage 7A voice is complete for animatic use only. Final voiceover is not complete. Stage 7B v0.1 is rendered and awaiting human review; timing remains unlocked and production image generation is not approved. No additional generative assets, audio retries or production prompts are authorized.

'''+s[b:];p.write_text(s)
changed=[]
for path,h in before.items():
 if hashlib.sha256((R/path).read_bytes()).hexdigest()!=h:changed.append(path)
assert set(changed)=={'studio_manifest.yaml','PROJECT_STATE.md'},changed
print(json.dumps({'validation':v,'visual_counts':dict(counts),'changed_existing':changed,'all_other_sources_unchanged':True},indent=2))
