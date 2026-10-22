# The Little Lantern — Animatic v0.1 Build Notes

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
| 01A | 00:00 | 6s | D | DERIVATIVE | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 01B | 00:06 | 6s | M | MASTER | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` | static aspect-preserving master |
| 02A | 00:12 | 6s | M/D | MASTER | `04_Images/References/Environments/ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg` | static aspect-preserving master |
| 02B | 00:18 | 7s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 03A | 00:25 | 4s | D/E | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 03B | 00:29 | 7s | P | ROUGH COMPOSITE | `04_Images/References/Environments/ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg`; `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 03C | 00:36 | 7s | M | MASTER | `04_Images/References/Environments/ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg` | static aspect-preserving master |
| 04A | 00:43 | 6s | P | ROUGH COMPOSITE | `04_Images/References/Environments/ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg`; `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 04B | 00:49 | 6s | D | DERIVATIVE | `04_Images/References/Environments/ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 04C | 00:55 | 5s | D/P | ROUGH COMPOSITE | `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 05A | 01:00 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 05B | 01:05 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 05C | 01:10 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 05D | 01:15 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 06A | 01:20 | 4s | M | MASTER | `04_Images/References/Environments/ENV_04_FOREST_PATH_DAY_MASTER.jpeg` | static aspect-preserving master |
| 06B | 01:24 | 4s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 06C | 01:28 | 4s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 06D | 01:32 | 2s | P | ROUGH COMPOSITE | `02_Character_Bible/References/Scale/maya_lumi_scale_master.jpeg` | static reference inset; not a production frame |
| 06E | 01:34 | 2s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_04_FOREST_PATH_DAY_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 07A | 01:36 | 5s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_05_FOREST_PATH_STORM_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 07B | 01:41 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 07C | 01:46 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 07D | 01:51 | 6s | D/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 08A | 01:57 | 5s | S/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 08B | 02:02 | 4s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 08C | 02:06 | 4s | P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 09A | 02:10 | 5s | P/E | ROUGH COMPOSITE | `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 09B | 02:15 | 5s | D/E | ROUGH COMPOSITE | `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 09C | 02:20 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 09D | 02:25 | 4s | P | ROUGH COMPOSITE | `02_Character_Bible/References/Maya/maya_master_3quarter.jpeg` | static reference inset; not a production frame |
| 10A | 02:29 | 6s | D/E | ROUGH COMPOSITE | `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 10B | 02:35 | 7s | P/E | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 10C | 02:42 | 6s | D/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 11A | 02:48 | 5s | P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 11B | 02:53 | 4s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 11C | 02:57 | 4s | D/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 11D | 03:01 | 4s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 12A | 03:05 | 5s | D/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 12B | 03:10 | 4s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 12C | 03:14 | 4s | E/D | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 12D | 03:18 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 13A | 03:23 | 4s | P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 13B | 03:27 | 4s | D/P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 13C | 03:31 | 4s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 13D | 03:35 | 4s | P/E | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 14A | 03:39 | 4s | P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 14B | 03:43 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 14C | 03:48 | 5s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 15A | 03:53 | 6s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 15B | 03:59 | 6s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 15C | 04:05 | 7s | P | ROUGH COMPOSITE | `04_Images/References/Environments/ENV_07_BELLWOOD_STREET_NIGHT_MASTER.jpeg`; `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` | static reference inset; not a production frame |
| 16A | 04:12 | 6s | S→P | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 16B | 04:18 | 6s | P/E | PLACEHOLDER | None — labelled card / approved title wording | static labelled card |
| 16C | 04:24 | 5s | D/E | DERIVATIVE | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` | static 8% tighter crop/reframe; effect intent labelled |
| 17A | 04:29 | 6s | E | EDIT/EFFECT | None — labelled card / approved title wording | static approved title / end-card wording |

Representation counts: MASTER: 4, DERIVATIVE: 10, PLACEHOLDER: 31, ROUGH COMPOSITE: 9, EDIT/EFFECT: 1.

## Voice placements

All 32 approved WAVs are inserted once, at original sample duration and normal playback speed. No WAV is edited, regenerated, time-stretched or trimmed. Gaps remain digital silence. No music or SFX. Placement times are seconds from timeline start.

| Voice ID | File | Start | End | Duration |
|---|---|---|---|---|
| VO_NAR_001 | `06_Voiceover/Temp/VO_NAR_001.wav` | 0.000000 | 9.771020 | 9.771020 |
| VO_NAR_002 | `06_Voiceover/Temp/VO_NAR_002.wav` | 12.000000 | 18.129206 | 6.129206 |
| VO_NAR_003 | `06_Voiceover/Temp/VO_NAR_003.wav` | 25.000000 | 29.436644 | 4.436644 |
| VO_NAR_004 | `06_Voiceover/Temp/VO_NAR_004.wav` | 34.000000 | 39.793288 | 5.793288 |
| VO_NAR_005 | `06_Voiceover/Temp/VO_NAR_005.wav` | 43.000000 | 46.266939 | 3.266939 |
| VO_LUMI_001 | `06_Voiceover/Temp/VO_LUMI_001.wav` | 49.000000 | 50.813923 | 1.813923 |
| VO_MAYA_001 | `06_Voiceover/Temp/VO_MAYA_001.wav` | 65.000000 | 65.719637 | 0.719637 |
| VO_SHOPKEEPER_001 | `06_Voiceover/Temp/VO_SHOPKEEPER_001.wav` | 68.000000 | 69.693469 | 1.693469 |
| VO_MAYA_002 | `06_Voiceover/Temp/VO_MAYA_002.wav` | 75.000000 | 76.143764 | 1.143764 |
| VO_NAR_006 | `06_Voiceover/Temp/VO_NAR_006.wav` | 77.000000 | 81.533515 | 4.533515 |
| VO_NAR_007 | `06_Voiceover/Temp/VO_NAR_007.wav` | 81.833515 | 87.205805 | 5.372290 |
| VO_NAR_008 | `06_Voiceover/Temp/VO_NAR_008.wav` | 96.000000 | 99.085896 | 3.085896 |
| VO_NAR_009 | `06_Voiceover/Temp/VO_NAR_009.wav` | 106.000000 | 111.445760 | 5.445760 |
| VO_NAR_010 | `06_Voiceover/Temp/VO_NAR_010.wav` | 122.000000 | 123.877370 | 1.877370 |
| VO_NAR_011 | `06_Voiceover/Temp/VO_NAR_011.wav` | 126.000000 | 128.008481 | 2.008481 |
| VO_LUMI_002 | `06_Voiceover/Temp/VO_LUMI_002.wav` | 135.000000 | 136.057823 | 1.057823 |
| VO_MAYA_003 | `06_Voiceover/Temp/VO_MAYA_003.wav` | 145.000000 | 146.249116 | 1.249116 |
| VO_NAR_012 | `06_Voiceover/Temp/VO_NAR_012.wav` | 149.000000 | 151.066349 | 2.066349 |
| VO_NAR_013 | `06_Voiceover/Temp/VO_NAR_013.wav` | 155.000000 | 156.874376 | 1.874376 |
| VO_NAR_014 | `06_Voiceover/Temp/VO_NAR_014.wav` | 162.000000 | 164.308027 | 2.308027 |
| VO_NAR_015 | `06_Voiceover/Temp/VO_NAR_015.wav` | 168.000000 | 172.498095 | 4.498095 |
| VO_OLDWOMAN_001 | `06_Voiceover/Temp/VO_OLDWOMAN_001.wav` | 193.000000 | 193.958367 | 0.958367 |
| VO_VILLAGER_001 | `06_Voiceover/Temp/VO_VILLAGER_001.wav` | 198.000000 | 198.437143 | 0.437143 |
| VO_NAR_016 | `06_Voiceover/Temp/VO_NAR_016.wav` | 203.000000 | 204.479501 | 1.479501 |
| VO_NAR_017 | `06_Voiceover/Temp/VO_NAR_017.wav` | 207.000000 | 208.282585 | 1.282585 |
| VO_NAR_018 | `06_Voiceover/Temp/VO_NAR_018.wav` | 211.000000 | 213.911973 | 2.911973 |
| VO_MAYA_004 | `06_Voiceover/Temp/VO_MAYA_004.wav` | 219.000000 | 219.467166 | 0.467166 |
| VO_NAR_019 | `06_Voiceover/Temp/VO_NAR_019.wav` | 233.000000 | 236.569887 | 3.569887 |
| VO_NAR_020 | `06_Voiceover/Temp/VO_NAR_020.wav` | 247.000000 | 248.689660 | 1.689660 |
| VO_NAR_021 | `06_Voiceover/Temp/VO_NAR_021.wav` | 252.000000 | 254.689932 | 2.689932 |
| VO_NAR_022 | `06_Voiceover/Temp/VO_NAR_022.wav` | 258.000000 | 258.953741 | 0.953741 |
| VO_NAR_023 | `06_Voiceover/Temp/VO_NAR_023.wav` | 260.000000 | 262.593605 | 2.593605 |

## Boundary crossing and pauses

- VO_NAR_006: **77.000000–81.533515s** (01:17.000–01:21.534). Crosses **05D → 06A at 80.000s / 01:20.000**, continuing 1.533515s into the forest establishing shot. No shot boundary changes.
- VO_NAR_007: moved within its planned visual range to **81.833515s**, after a 0.3s timeline gap following VO_NAR_006. This prevents overlapping narrator clips. Its original proposed start was 80s; this is a voice-placement change only.
- VO_MAYA_002: 75.000000–76.143764s; silence until narration starts at 77s, so the intended 0.3s pause is available.
- VO_NAR_021: 252.000000–254.689932s; silence until 258s gives 3.310068s breathing room before “Sometimes...”.
- VO_NAR_022: 258.000000–258.953741s; timeline silence to 260s is **1.046259s**, preserving the intended one-second thematic hold without modifying the WAV.
- VO_NAR_023: 260.000000–262.593605s; 6.406395s breathing room remains before the 269s end card. Review whether these holds feel too long; timing remains unlocked.

## Timing observations and review

Audio occupies approximately 89.179s (32.43%) of the 275s film; 185.821s is without voice, including synthesizer silence in the audio duration calculation. The absence of music and SFX can make visual-only sections feel sparse. The longest pause between speech clips is measured below. This is a rough timing test, not evidence that the eventual final performance will match temporary synthetic pacing. Review emotional progression, placeholder holds, workshop-to-forest transition, arrow-marker discovery and final thematic pauses before approving any timing edits.

Longest inter-voice gap: **20.501905s** between VO_NAR_015 and VO_OLDWOMAN_001.

## Validation

- Export duration 275.000000s; 1920x1080; 24fps; 6600 video samples; audio tracks: 1.
- 55 unique, contiguous original shot slots totaling 275s; all 6600 video samples read successfully.
- 32 unique WAV placements, no overlap or truncation; source WAV counts/durations checked. No time scaling.
- Canonical source hashes, approved Markdown, all WAVs and every pre-existing file outside authorized state files verified unchanged before state update.
- Contact sheet and exported representative master, composite, placeholder and end-card previews reviewed visually.
- Technical validation does not substitute for human playback, pronunciation and emotional pacing review.

## Current approval gate

Stage 7A temporary voice: COMPLETE FOR ANIMATIC. Stage 7B: v0.1 RENDERED / AWAITING REVIEW. Timing lock FALSE. Production-image generation NOT APPROVED. Next action: human review of Animatic v0.1. No further production work is authorized by this build.
