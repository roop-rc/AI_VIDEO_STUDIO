# 08B extinction review build v1

Status: CONDITIONAL — AWAITING HUMAN REVIEW. Not registered. 55-shot gate NOT YET FULLY CLEARED. No animation planning or generative model used.

Source: `04_Images/Approved/SHOT_08AB_BELLWOOD_STORM_LIT_MASTER_v1.jpeg`.
Source SHA-256 before and after: `16c9a53c4060795406d1052e696bb0c0e4a4df834b4dda79419668aab9064ea2`.
Source dimensions: 1376×768; JPEG; 772870 bytes. Source unchanged.

## Reproduce

Run from repository root using already installed Apple Swift, AppKit, CoreGraphics and AVFoundation. No installation, network access or AI services.

```sh
swiftc -O 01_THE_LITTLE_LANTERN/04_Images/Editorial_Prep/08B_extinction_v1/build_08B_extinction_v1.swift -o /tmp/build_08B_extinction_v1
/tmp/build_08B_extinction_v1
```

Only review outputs in this directory are overwritten when rebuilding. H.264 bitstream/hash may vary with platform/encoder.

## Native still method

Pre-reference: decoded source converted to lossless 8-bit device-RGB PNG at 1376×768, without creative alterations. PNG byte identity with a JPEG is not meaningful; original JPEG is preserved.

Post still: same native 1376×768 geometry. Central glass repair uses feathered source-coordinate region x450..<482, y334..<389. Horizontal same-row edge samples at x448/484 and adjacent cold atmospheric texture at x520+(x-450) are blended to reconstruct unlit glass; no outside asset or generated content. Cold texture blend preserves faint vertical rain/tonal variation rather than filling black. Original rails/enclosure outline retained. A second warm-colour-dependent cooling mask is confined to x421..<514, y315..<415, with elliptical falloff centred (466,365); it reduces residual amber spill without globally cooling village window lights. Full pixel comparison verifies no changes outside this bounding region. No village, tower or forest geometry moved.

## Preview timing

96 frames, 24 fps, exactly 4.0 seconds, 1920×1080 H.264 MP4; no audio track.

- 0.000–0.625: original lit state.
- 0.625–0.750: one cold broad-frame flash rises to 26% screen blend, RGB (0.80,0.89,1.00).
- 0.750–1.0833: flash decays completely.
- 1.0833–1.2917: local extinction transitions to post still over five frame intervals.
- 1.2917–4.000: post-extinction hold.

Fixed camera. No bolt, extra storm asset, repeated flash, procedural rain, new characters or audio. Rain already present in source remains static in this review.

Preview uses aspect-fill with no distortion: scale 1080/768 = 1.40625. Scaled width 1935; crop 7.5 output pixels from each horizontal edge, equivalent to 5.333333 native pixels each. Native crop rectangle: x=5.333333, y=0, width=1365.333333, height=768. Native PNGs retain full original composition. No permanent global exposure change after flash.

## Validation and limitations

First, flash-peak and late post frames extracted from encoded MP4 and visually inspected. Flame is absent in the post state, enclosure and stone tower remain visible, village/forest retained, unrelated lights unchanged in native still. Unlit glass has limited internal detail and is reconstructed, not recovered unseen original material; human inspection must confirm it does not read as a paint patch. No claim of production approval. Source resolution is enlarged for the preview. Static rain and fixed camera deliberately isolate the extinction event; this is not final animation. No additional darkening is applied to the entire village; loss of the dominant warm beacon provides the narrative change, with 08C carrying the subsequent loss reaction.

All pre-existing project files verified SHA-256 unchanged, including every approved image, canonical reference, manifest and PROJECT_STATE. Thus original PI, 08AB, 13D/14C accounting and 55 shots / 275 seconds / timing lock remain unchanged. git diff --check passes. No commit.

## Required next action

Human watches the complete 4-second `08B_EXTINCTION_PREVIEW_v1.mp4` and reviews `08B_POST_EXTINCTION_v1.png`. 08B stays CONDITIONAL — AWAITING HUMAN REVIEW; 55-shot gate stays NOT YET FULLY CLEARED.

## Output hashes

- `08B_EXTINCTION_PREVIEW_v1.mp4`: `83e011793dda9907d0107776d90ab7da7dcaa21ead68248a9f437bc72d7e248a`
- `08B_POST_EXTINCTION_v1.png`: `520f64f7c9dd9ec1af335a3456e9e565bae7cf8207aed211c6f1319d2134e58a`
- `08B_PRE_EXTINCTION_REFERENCE.png`: `cdf4b190400d29bd4735985756668b5211b4c9f6b68457dc4220ee019d5f0bda`
- `QA_FIRST.png`: `9b9c17c64a5ad687c70236625cf46fa29a80881897d18d92562d04cfa338671d`
- `QA_FLASH.png`: `11fec1bfbbb7a008a1155107c01142f9170195c72299d557f13b1ec575bcaea5`
- `QA_POST.png`: `eeeceb6ed3482339d7f352f2b701e04e95b99f322bfeea2bf83eeef2f149e64c`
- `build_08B_extinction_v1.swift`: `80515a90bea521f08c580cb2235dc2afbf7cab2b4d0bde6532300e4450aaf96a`
