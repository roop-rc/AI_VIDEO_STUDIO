# AI Video Studio --- Video 01

## Stage 4B: Visual Character Lock

**Video Title:** *The Little Lantern*\
**Project ID:** `01_THE_LITTLE_LANTERN`\
**Status:** APPROVED / LOCKED v1\
**Depends On:** `04_CHARACTER_BIBLE.md`, `05_VISUAL_STYLE_BIBLE.md`

## 1. Purpose

This document records the approved visual identities of Lumi and Maya
and defines which reference assets control appearance, identity, and
scale during production.

The objective is strong perceptual continuity: the audience must
consistently recognise the same Maya and the same Lumi throughout the
film.

## 2. Canonical Reference Package

``` text
02_Character_Bible/
└── References/
    ├── Lumi/
    │   ├── lumi_master_3quarter.jpg
    │   └── lumi_master_front.jpg
    ├── Maya/
    │   ├── maya_master_3quarter.jpeg
    │   └── maya_master_front.jpeg
    └── Scale/
        └── maya_lumi_scale_master.jpeg
```

### Authority Hierarchy

-   `lumi_master_3quarter.jpg` --- PRIMARY Lumi appearance authority.
-   `lumi_master_front.jpg` --- secondary frontal construction
    reference.
-   `maya_master_3quarter.jpeg` --- PRIMARY Maya appearance/identity
    authority.
-   `maya_master_front.jpeg` --- secondary front-facing identity
    reference.
-   `maya_lumi_scale_master.jpeg` --- relative-size authority only; it
    does not override individual character masters.

## 3. Lumi Visual Lock v1

Locked identity:

-   Small handheld lantern, approximately 18 cm tall in story scale
-   Tall rectangular aged-brass body
-   Warm weathered brass finish
-   Four simple glass panels
-   Curved brass carrying handle
-   Perforated ventilation chamber near top
-   Pedestal-style base
-   Tiny natural amber flame
-   No face, eyes, mouth, arms or legs
-   No electrical light source
-   No giant magical flame

Lumi's emotional performance comes from subtle flame behaviour,
movement, framing, local lighting and sound design. Her construction
should not morph to express emotion.

## 4. Maya Visual Lock v1

Locked identity:

-   Approximately 10 years old
-   Warm medium-brown skin
-   Dark-brown eyes
-   Soft rounded child facial features
-   Dark-brown wavy shoulder-length hair
-   Hair parted slightly left
-   Loose strand near forehead
-   Natural child proportions

Locked outfit:

-   Mustard-yellow hooded outer coat / weatherproof raincoat
-   Muted cream knitted sweater
-   Dark teal trousers
-   Brown ankle boots
-   Forest-green cross-body canvas satchel

The generated master reads slightly more like a practical hooded
mountain coat than a thin rain shell. This is accepted as canonical. The
approved design also uses stylised feature-animation proportions with
somewhat enlarged expressive eyes; preserve them rather than redesigning
Maya mid-production.

## 5. Maya + Lumi Scale Lock

``` text
Maya ≈ 140 cm
Lumi ≈ 18 cm
Lumi ≈ 13% of Maya's standing height
```

Lumi is a small handheld lantern that Maya can comfortably carry by the
handle with one hand. She must not become handbag-sized, knee-high,
torso-sized or accidentally float.

## 6. Acceptable Generative Drift

### Lumi --- Usually Acceptable

-   Tiny hardware differences
-   Subtle scratch/tarnish variation
-   Small flame-shape differences
-   Minor perspective-dependent geometry changes
-   Minor details obscured by distance, rain, darkness or motion

### Lumi --- Reject / Repair

-   Different silhouette or major proportions
-   Completely different handle
-   Ornate redesign
-   Modern/electric lantern
-   Dramatically different glass structure
-   Giant magical flame
-   Eyes, mouth, limbs or cartoon face
-   Incorrect scale relative to Maya

### Maya --- Usually Acceptable

-   Tiny hair-strand differences
-   Fabric-fold changes
-   Small satchel-position changes
-   Minor expression-dependent facial differences
-   Minor hand imperfections when hands are not narratively important

### Maya --- Reject / Repair

-   Visibly different face
-   Substantial age change
-   Teenager/adult appearance
-   Different hairstyle or hair length
-   Major skin-tone drift
-   Different coat colour or major outfit redesign
-   Adult body proportions
-   Severe anatomical artefacts
-   Scale inconsistency

## 7. Consistency Test Findings

### Leonardo --- Lumi

``` text
Initial character design          PASS
Small design refinement           PASS
Nearby viewpoint transformation   PASS
Strict 90-degree side rotation    FAIL
```

### Gemini --- Lumi

``` text
Identity preservation             PASS
Strict 90-degree side rotation    FAIL
```

### Gemini --- Maya

``` text
Initial Maya design               PASS
Facial identity preservation      PASS
Age preservation                  PASS
Outfit preservation               PASS
Scale composition with Lumi       PASS
```

Failed tests are retained under `Candidates/` as evidence of model
limitations and are NOT production references.

## 8. Workflow Improvement 003 --- Useful References, Not Mandatory Turnarounds

Previous assumption:

``` text
front → 3/4 → side → back → lock character
```

Revised workflow:

``` text
Generate master character
→ Generate useful reference views
→ Test identity consistency
→ Evaluate model limitations
→ Lock strongest identity references
→ Generate production shots
→ Create/repair additional views only when required
```

Generative image systems synthesize plausible images rather than
rotating a fixed 3D model. Perfect traditional turnaround sheets can
consume credits without materially improving the film.

## 9. Workflow Improvement 004 --- Tool Specialisation

Current lesson:

``` text
Leonardo → effective for initial Lumi concept/design/refinement
Gemini   → effective for Maya identity preservation and multi-character composition
```

Future tools may replace either system if they offer better cost,
quality, consistency or control.

**Principle:** Choose tools by production task, not by loyalty to one
platform.

## 10. Workflow Improvement 005 --- Generation Budget

Before every generative step, define a maximum generation budget.

Example:

``` text
Goal: Maya identity test
Budget: 1 generation
Review required before further attempts
```

After the budget is exhausted:

``` text
STOP
→ Review failure
→ Determine whether issue is prompt-, tool-, reference-, or production-related
→ Change strategy if necessary
```

This protects free-tier credits and prevents endless iteration.

## 11. Reference Use During Production

When Maya appears, use her primary master wherever references are
supported. When Lumi appears, use Lumi's primary master. When both
appear and scale matters, use the scale master in addition when the tool
permits.

If reference count is limited, prioritise according to the shot's
narrative importance.

Identity matters more than pixel matching. A moving scratch on Lumi is
less important than Lumi becoming twice her correct size. A fabric-fold
change on Maya is less important than Maya's face changing.

## 12. Stage 4B Quality Gate

-   [x] Lumi master design selected
-   [x] Lumi three-quarter master approved
-   [x] Lumi frontal reference approved
-   [x] Lumi identity consistency tested
-   [x] Major viewpoint limitation tested
-   [x] Maya master design selected
-   [x] Maya apparent age and facial identity approved
-   [x] Maya outfit approved
-   [x] Maya second-image identity test passed
-   [x] Maya + Lumi scale reference generated and approved
-   [x] Canonical reference hierarchy defined
-   [x] Acceptable and rejection-level drift defined
-   [x] Tool findings documented
-   [x] Generation-budget rule established

**Stage Result: PASS --- VISUAL CHARACTER LOCK v1**

## 13. Updated Production Status

  Stage                            Status
  -------------------------------- ----------------------
  01 --- Concept                   Complete
  02 --- Story                     Approved
  03 --- Production Script         Approved
  04 --- Character Specification   Approved
  04B --- Visual Character Lock    Complete / Locked v1
  05 --- Visual Style Bible        Approved
  06 --- Scene & Shot List         NEXT
  07 --- Storyboard                Not started
  08 --- Image Prompts             Not started
  09 --- Consistent Images         Not started
  10 --- Animation                 Not started
  11 --- Voiceover                 Not started
  12 --- Music & SFX               Not started
  13 --- Editing                   Not started
  14 --- Captions                  Not started
  15 --- Thumbnail                 Not started
  16 --- Export                    Not started
  17 --- Publishing                Not started

## 14. Next Stage --- Scene & Shot List

The approved production script will now be decomposed into individual
shots. Each shot will define shot ID, time range, estimated duration,
story purpose, characters, continuity state, location, weather, shot
size, camera angle/movement, key action, required references, audio
relationship, likely production method and generation priority.

The Scene & Shot List must be approved before storyboard and
production-image generation.

------------------------------------------------------------------------

*AI Video Studio --- Video 01: The Little Lantern --- Visual Character
Lock v1.0*
