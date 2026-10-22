# AI Video Studio --- Video 01

## Stage 6C: Environment Master Lock

**Video Title:** *The Little Lantern*\
**Project ID:** `01_THE_LITTLE_LANTERN`\
**Status:** APPROVED / LOCKED v1\
**Core Environment Masters:** 7\
**Generation Attempts Used:** 7\
**Rejected Attempts:** 0\
**Extra Attempts:** 0

## 1. Purpose

This document records the approved environment master references for
*The Little Lantern*. These references establish recurring environmental
identity before storyboard and production-image generation.

**Principle:** Lock environmental identity, not every pixel.

## 2. Canonical Environment Masters

``` text
04_Images/References/Environments/
├── ENV_01_BELLWOOD_AERIAL_MASTER.jpeg
├── ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg
├── ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg
├── ENV_04_FOREST_PATH_DAY_MASTER.jpeg
├── ENV_05_FOREST_PATH_STORM_MASTER.jpeg
├── ENV_06_VILLAGE_SQUARE_MASTER.jpeg
└── ENV_07_BELLWOOD_STREET_NIGHT_MASTER.jpeg
```

## 3. ENV_01 --- Bellwood Aerial

**LOCKED v1 --- 1/1 generation.**

Controls Bellwood's architectural culture, mountain-valley setting,
surrounding evergreen forest, village scale, stone/timber/slate
materials, winding-street character, Great Lantern tower dominance, and
opening-film environmental identity.

Canonical silhouette:

``` text
mountain valley + evergreen forest + small steep-roofed village + dominant Great Lantern tower
```

## 4. ENV_02 --- Great Lantern Tower

**LOCKED v1 --- 1/1 generation.**

Controls the closer tower identity: weathered square stone construction,
narrow openings, arched wooden entrance, projecting platform, giant
aged-brass/glass lantern, circular top ring, natural amber flame, and
relationship to Bellwood architecture.

Minor masonry drift is acceptable; major silhouette or lantern redesign
is not.

## 5. ENV_03 --- Workshop Interior

**LOCKED v1 --- 1/1 generation.**

Canonical geography:

``` text
LEFT: entrance → workbench/tools
CENTRE: back lantern shelves → customer counter
RIGHT: display shelves → windows
BACKGROUND WINDOW: Bellwood rooftops → Great Lantern tower
```

Canonical Lumi placement during production: right-wall lower display
shelf, approximately centre-right and around Maya chest height.

## 6. ENV_04 --- Forest Path Day

**LOCKED v1 --- 1/1 generation.**

Controls primary forest geography, path route, major trees, moss-covered
rocks, exposed roots, fern/low vegetation language, right-side
wildflower patch, distant mountain opening, warm late-afternoon
lighting, and depth.

## 7. ENV_05 --- Forest Path Storm

**LOCKED v1 --- 1/1 generation.**\
**Source authority:** `ENV_04_FOREST_PATH_DAY_MASTER.jpeg`

This is a weather transformation of ENV_04, not a separate forest.
Camera position, trail geometry, major rocks/trees, roots, flowers,
depth and distant opening were preserved strongly.

Controls cold blue-grey light, heavy rain, mist, reduced visibility,
wet/muddy trail, puddles and darkened vegetation.

## 8. ENV_06 --- Village Square

**LOCKED v1 --- 1/1 generation.**

Controls climax square geography, tower relationship, open gathering
area, connecting routes, surrounding Bellwood architecture and plausible
space for roughly 20--50 villagers. The square remains intimate rather
than a formal city plaza.

## 9. ENV_07 --- Bellwood Street Night

**LOCKED v1 --- 1/1 generation.**

Controls the ending residential street: narrow winding wet stone paving,
Bellwood stone/timber/slate architecture, puddles/damp surfaces, cool
blue post-storm night, restrained warm windows/lanterns, distant Great
Lantern presence and foreground stones for the final thematic shot.

The street intentionally remains dim enough for Lumi's tiny light to
matter.

## 10. Environment Generation Record

``` text
ENV_01 Bellwood aerial        1/1 → PASS / LOCKED
ENV_02 Great Lantern tower    1/1 → PASS / LOCKED
ENV_03 Workshop interior      1/1 → PASS / LOCKED
ENV_04 Forest path day        1/1 → PASS / LOCKED
ENV_05 Forest path storm      1/1 → PASS / LOCKED
ENV_06 Village square         1/1 → PASS / LOCKED
ENV_07 Bellwood street night  1/1 → PASS / LOCKED
--------------------------------------------------
Generated                         7
Approved                          7
Rejected                          0
Extra attempts                    0
```

## 11. Workflow Improvement 007 --- Transform Established Locations

For recurring locations with different weather, lighting or time states:

``` text
Generate location once
→ review
→ LOCK geography
→ use locked master as reference
→ transform weather/time/lighting
→ preserve spatial continuity
```

Do not independently regenerate an alternate state unless transformation
fails.

ENV_04 → ENV_05 demonstrated that reference-controlled transformation
can preserve camera position, path geometry, major rocks, trees, roots,
flowers and depth while substantially changing weather.

## 12. Workflow Improvement 008 --- Environment Masters Before Storyboard Production

Revised sequence:

``` text
Story
→ Production Script
→ Character Bible
→ Visual Style Bible
→ Visual Character Lock
→ Scene & Shot List
→ Environment Bible
→ Environment Master Lock
→ Storyboard / Animatic
→ Production Image Prompts
→ Production Images
→ Animation
```

Characters and recurring environments now both have visual authorities
before production-shot generation.

## 13. Reference Authority Rules

Examples:

``` text
Maya inside workshop
→ Maya master
→ ENV_03 Workshop master

Maya lost in storm forest carrying Lumi
→ Maya master
→ Lumi master
→ Maya/Lumi scale master where supported
→ ENV_05 Storm Forest master

Villagers under extinguished Great Lantern
→ ENV_06 Village Square master
→ ENV_02 Tower master if reference capacity allows
```

When a tool restricts reference count, prioritise what matters most to
the shot.

## 14. Acceptable Environment Drift

Usually acceptable:

-   minor background-house changes
-   small stone-placement differences
-   subtle foliage variation
-   minor window/masonry changes
-   weather-dependent visibility changes
-   perspective-dependent details

Reject or repair:

-   Bellwood becoming another architectural culture
-   Great Lantern tower disappearing or being redesigned
-   tower becoming a church, clock tower or lighthouse
-   forest becoming another biome
-   continuity-dependent path becoming unrecognisable
-   workshop layout becoming incompatible with staging
-   square becoming a huge city plaza
-   modern objects appearing
-   lighting changes undermining story logic
-   ending street becoming so bright Lumi's light is irrelevant

## 15. Stage 6C Quality Gate

-   [x] Bellwood aerial master approved
-   [x] Great Lantern tower master approved
-   [x] Workshop interior master approved
-   [x] Forest daylight master approved
-   [x] Same-forest storm transformation approved
-   [x] Village square master approved
-   [x] Bellwood night street master approved
-   [x] Environment authority hierarchy established
-   [x] Geography continuity established
-   [x] Weather transformation method validated
-   [x] Generation budget followed
-   [x] No unnecessary regeneration used

**Stage Result: PASS --- ENVIRONMENT MASTER LOCK v1**

## 16. Next Stage --- Storyboard / Animatic Planning

The project now has story, script, character specification, visual
style, Maya/Lumi identity and scale, 57-shot production plan,
Environment Bible and seven environment masters locked.

The storyboard stage will determine for every shot: composition,
character placement, environment/character references, continuity state,
camera direction, motion requirement, whether a new frame is genuinely
needed, whether a master can serve as a temporary panel, whether editing
alone can create the shot, and generation priority.

Do not begin full production-image generation until the
storyboard/animatic plan is approved.

------------------------------------------------------------------------

*AI Video Studio --- Video 01: The Little Lantern --- Environment Master
Lock v1.0*
