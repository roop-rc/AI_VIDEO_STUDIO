# The Little Lantern — Temporary Audio Manifest

**Status:** GENERATED / AWAITING TIMING REVIEW  
**Purpose:** Timing, pacing, dialogue placement and animatic preparation only; not final voiceover.  
**Source wording:** `01_Development/11_TEMP_VOICE_SCRIPT.md`, preserved exactly as synthesis input.  
**Project:** 55 operational shots; 275 seconds / 4:35. Shot timing unchanged; timing not locked. Stage 7A is not complete.

## Temporary voice cast

| Speaker | Installed macOS voice | Requested rate (WPM) |
|---|---|---|
| NARRATOR | Karen | 160 |
| MAYA | Samantha | 140 |
| LUMI | Moira | 140 |
| SHOPKEEPER | Daniel | 140 |
| OLD WOMAN | Grandma (English (UK)) | 140 |
| VILLAGER | Rishi | 140 |

Karen (en_AU) is the approved temporary narrator. VO_NAR_001 was reused without modification. Its last synthesis command requested 160 WPM, but the prior 140 and 160 WPM tests produced byte-identical audio. All new narrator clips use the same Karen/160 command settings; the requested rate is not a guarantee of effective delivered rate. No workaround, rate adjustment or retry was attempted. Other speakers use distinct installed voices for identification, not final casting or acting quality.

## Technical validation and generation budget

32 expected IDs and 32 unique WAV filenames verified, with no missing or unexpected WAVs. Each file exists, is non-zero, fully readable, and contains non-zero audio samples. All are uncompressed signed 16-bit little-endian PCM WAV, mono, 22,050 Hz. Actual durations below are sample-frame counts divided by 22,050, rounded for display; they include synthesizer-provided silence and are file durations, not voice-activity measurements. No padding or silence trimming was applied.

31 initial syntheses used: exactly one for each remaining segment, zero retries. The approved VO_NAR_001 was not regenerated. Supplied text matches both the recording table and clean recording script. This verifies input integrity and audio structure, not a listening-based pronunciation or acting review.

All paths below are relative to `01_THE_LITTLE_LANTERN/`. PASS means at least 0.5s remains; TIGHT means speech fits with less than 0.5s remaining; OVER means actual file duration exceeds the proposed window. Fit excludes the separately planned pause-after hold.

## Per-segment results

| Voice ID | Speaker | Shot(s) | Filename | Voice used | Requested WPM | Estimated duration | Actual duration | Frames | Bytes | Timeline window | Available duration | Remaining | Fit |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| VO_NAR_001 | NARRATOR | 01A, 01B | `06_Voiceover/Temp/VO_NAR_001.wav` | Karen | 160 | 11.14s | 9.771020s | 215451 | 434998 | 00:00–00:12 | 12.0s | 2.228980s | PASS |
| VO_NAR_002 | NARRATOR | 02A, 02B | `06_Voiceover/Temp/VO_NAR_002.wav` | Karen | 160 | 8.57s | 6.129206s | 135149 | 274394 | 00:12–00:25 | 13.0s | 6.870794s | PASS |
| VO_NAR_003 | NARRATOR | 03A, 03B | `06_Voiceover/Temp/VO_NAR_003.wav` | Karen | 160 | 6.86s | 4.436644s | 97828 | 199752 | 00:25–00:34 | 9.0s | 4.563356s | PASS |
| VO_NAR_004 | NARRATOR | 03B, 03C | `06_Voiceover/Temp/VO_NAR_004.wav` | Karen | 160 | 8.14s | 5.793288s | 127742 | 259580 | 00:34–00:43 | 9.0s | 3.206712s | PASS |
| VO_NAR_005 | NARRATOR | 04A, 04B | `06_Voiceover/Temp/VO_NAR_005.wav` | Karen | 160 | 3.43s | 3.266939s | 72036 | 148168 | 00:43–00:49 | 6.0s | 2.733061s | PASS |
| VO_LUMI_001 | LUMI | 04B, 04C | `06_Voiceover/Temp/VO_LUMI_001.wav` | Moira | 140 | 3.50s | 1.813923s | 39997 | 84090 | 00:49–01:00 | 11.0s | 9.186077s | PASS |
| VO_MAYA_001 | MAYA | 05B | `06_Voiceover/Temp/VO_MAYA_001.wav` | Samantha | 140 | 1.00s | 0.719637s | 15868 | 35832 | 01:05–01:08 | 3.0s | 2.280363s | PASS |
| VO_SHOPKEEPER_001 | SHOPKEEPER | 05B, 05C | `06_Voiceover/Temp/VO_SHOPKEEPER_001.wav` | Daniel | 140 | 2.00s | 1.693469s | 37341 | 78778 | 01:08–01:11 | 3.0s | 1.306531s | PASS |
| VO_MAYA_002 | MAYA | 05D | `06_Voiceover/Temp/VO_MAYA_002.wav` | Samantha | 140 | 2.00s | 1.143764s | 25220 | 54536 | 01:15–01:17 | 2.0s | 0.856236s | PASS |
| VO_NAR_006 | NARRATOR | 05D | `06_Voiceover/Temp/VO_NAR_006.wav` | Karen | 160 | 5.57s | 4.533515s | 99964 | 204024 | 01:17–01:20 | 3.0s | -1.533515s | OVER |
| VO_NAR_007 | NARRATOR | 06A, 06B, 06C, 06D | `06_Voiceover/Temp/VO_NAR_007.wav` | Karen | 160 | 5.14s | 5.372290s | 118459 | 241014 | 01:20–01:34 | 14.0s | 8.627710s | PASS |
| VO_NAR_008 | NARRATOR | 07A, 07B | `06_Voiceover/Temp/VO_NAR_008.wav` | Karen | 160 | 3.43s | 3.085896s | 68044 | 140184 | 01:36–01:46 | 10.0s | 6.914104s | PASS |
| VO_NAR_009 | NARRATOR | 07C, 07D | `06_Voiceover/Temp/VO_NAR_009.wav` | Karen | 160 | 6.43s | 5.445760s | 120079 | 244254 | 01:46–01:57 | 11.0s | 5.554240s | PASS |
| VO_NAR_010 | NARRATOR | 08B | `06_Voiceover/Temp/VO_NAR_010.wav` | Karen | 160 | 2.57s | 1.877370s | 41396 | 86888 | 02:02–02:06 | 4.0s | 2.122630s | PASS |
| VO_NAR_011 | NARRATOR | 08C | `06_Voiceover/Temp/VO_NAR_011.wav` | Karen | 160 | 2.57s | 2.008481s | 44287 | 92670 | 02:06–02:10 | 4.0s | 1.991519s | PASS |
| VO_LUMI_002 | LUMI | 09B | `06_Voiceover/Temp/VO_LUMI_002.wav` | Moira | 140 | 1.50s | 1.057823s | 23325 | 50746 | 02:15–02:20 | 5.0s | 3.942177s | PASS |
| VO_MAYA_003 | MAYA | 09D | `06_Voiceover/Temp/VO_MAYA_003.wav` | Samantha | 140 | 2.00s | 1.249116s | 27543 | 59182 | 02:25–02:29 | 4.0s | 2.750884s | PASS |
| VO_NAR_012 | NARRATOR | 10A | `06_Voiceover/Temp/VO_NAR_012.wav` | Karen | 160 | 2.57s | 2.066349s | 45563 | 95222 | 02:29–02:35 | 6.0s | 3.933651s | PASS |
| VO_NAR_013 | NARRATOR | 10B | `06_Voiceover/Temp/VO_NAR_013.wav` | Karen | 160 | 2.57s | 1.874376s | 41330 | 86756 | 02:35–02:42 | 7.0s | 5.125624s | PASS |
| VO_NAR_014 | NARRATOR | 10C | `06_Voiceover/Temp/VO_NAR_014.wav` | Karen | 160 | 3.27s | 2.308027s | 50892 | 105880 | 02:42–02:48 | 6.0s | 3.691973s | PASS |
| VO_NAR_015 | NARRATOR | 11A, 11B, 11C, 11D | `06_Voiceover/Temp/VO_NAR_015.wav` | Karen | 160 | 6.00s | 4.498095s | 99183 | 202462 | 02:48–03:05 | 17.0s | 12.501905s | PASS |
| VO_OLDWOMAN_001 | OLD WOMAN | 12B, 12C | `06_Voiceover/Temp/VO_OLDWOMAN_001.wav` | Grandma (English (UK)) | 140 | 0.80s | 0.958367s | 21132 | 46360 | 03:13–03:15 | 2.0s | 1.041633s | PASS |
| VO_VILLAGER_001 | VILLAGER | 12D | `06_Voiceover/Temp/VO_VILLAGER_001.wav` | Rishi | 140 | 0.80s | 0.437143s | 9639 | 23374 | 03:18–03:23 | 5.0s | 4.562857s | PASS |
| VO_NAR_016 | NARRATOR | 13A | `06_Voiceover/Temp/VO_NAR_016.wav` | Karen | 160 | 1.71s | 1.479501s | 32623 | 69342 | 03:23–03:27 | 4.0s | 2.520499s | PASS |
| VO_NAR_017 | NARRATOR | 13B | `06_Voiceover/Temp/VO_NAR_017.wav` | Karen | 160 | 1.29s | 1.282585s | 28281 | 60658 | 03:27–03:31 | 4.0s | 2.717415s | PASS |
| VO_NAR_018 | NARRATOR | 13C, 13D | `06_Voiceover/Temp/VO_NAR_018.wav` | Karen | 160 | 3.86s | 2.911973s | 64209 | 132514 | 03:31–03:39 | 8.0s | 5.088027s | PASS |
| VO_MAYA_004 | MAYA | 14A | `06_Voiceover/Temp/VO_MAYA_004.wav` | Samantha | 140 | 0.80s | 0.467166s | 10301 | 24698 | 03:39–03:43 | 4.0s | 3.532834s | PASS |
| VO_NAR_019 | NARRATOR | 15A, 15B, 15C | `06_Voiceover/Temp/VO_NAR_019.wav` | Karen | 160 | 5.14s | 3.569887s | 78716 | 161528 | 03:53–04:07 | 14.0s | 10.430113s | PASS |
| VO_NAR_020 | NARRATOR | 15C | `06_Voiceover/Temp/VO_NAR_020.wav` | Karen | 160 | 1.71s | 1.689660s | 37257 | 78610 | 04:07–04:12 | 5.0s | 3.310340s | PASS |
| VO_NAR_021 | NARRATOR | 16A | `06_Voiceover/Temp/VO_NAR_021.wav` | Karen | 160 | 3.86s | 2.689932s | 59313 | 122722 | 04:12–04:18 | 6.0s | 3.310068s | PASS |
| VO_NAR_022 | NARRATOR | 16B | `06_Voiceover/Temp/VO_NAR_022.wav` | Karen | 160 | 1.50s | 0.953741s | 21030 | 46156 | 04:18–04:20 | 2.0s | 1.046259s | PASS |
| VO_NAR_023 | NARRATOR | 16B, 16C | `06_Voiceover/Temp/VO_NAR_023.wav` | Karen | 160 | 3.43s | 2.593605s | 57189 | 118474 | 04:20–04:29 | 9.0s | 6.406395s | PASS |

## Actual timing summary

| Category | Planned estimate | Actual audio | Difference |
|---|---|---|---|
| Narrator | 100.76s | 79.638141s | -21.121859s |
| Dialogue/internal voice | 14.40s | 9.540408s | -4.859592s |
| Total | 115.16s | 89.178549s | -25.981451s |

Speech/file occupancy: **32.43%** of 275 seconds. Approximate non-speech allocation: **185.821451s (67.57%)**. These sums are budgeting measures, not proof of a feasible placement: overlong clips may overlap following cues unless timing is reviewed. Synthesizer silence remains included in file durations.

### TIGHT segments

None.

### OVER segments

- VO_NAR_006: 4.533515s in 3.0s (01:17–01:20); remaining -1.533515s.

## Special timing and pause review

- **VO_NAR_006: OVER**. Estimate 5.57s; actual 4.533515s; window 3.0s. Proposed pause-after 0.3s leaves -1.833515s in that window. Pause/placement does not fit and requires review.
- **VO_MAYA_002: PASS**. Estimate 2.00s; actual 1.143764s; window 2.0s. Proposed pause-after 0.3s leaves 0.556236s in that window. Proposed pause fits arithmetically; confirm rhythm by listening.
- **VO_NAR_022: PASS**. Estimate 1.50s; actual 0.953741s; window 2.0s. Proposed pause-after 1.0s leaves 0.046259s in that window. Proposed pause fits arithmetically; confirm rhythm by listening.

External pauses belong in later timeline silence; none was deliberately added to WAV files. Approved ellipses were passed unchanged to macOS synthesis without inserted control codes. Their audible interpretation still needs listening review; no exact internal pause duration is claimed. VO_NAR_006 was generated at the unchanged narrator settings and was not accelerated to fit.

## Next action

ChatGPT/user timing review before animatic assembly. Listen for correct words, pronunciation and usable pacing; review all TIGHT/OVER clips and the special pause cases. Do not regenerate automatically, change shot timing, lock timing, or mark Stage 7A complete. Any retry needs a specific reason and approved budget. Final casting and final voiceover occur later. No animatic, video, music, SFX or production images were created.
