# AI Video Studio --- Video 01

## Stage 7: Storyboard & Animatic Production Map

**Video:** *The Little Lantern*\
**Project:** `01_THE_LITTLE_LANTERN`\
**Status:** APPROVED\
**Planned runtime:** \~4:35\
**Planned shots:** 57

------------------------------------------------------------------------

# 1. Purpose

This stage determines how each planned shot should be represented during
storyboard, animatic, production-image, animation, and editing work.

The objective is to avoid generating 57 independent final images merely
because the film contains 57 shots.

## Production Classes

  -----------------------------------------------------------------------
  Class                               Meaning
  ----------------------------------- -----------------------------------
  M --- Master                        Existing approved reference can
                                      temporarily serve as storyboard
                                      panel

  D --- Derivative                    Crop, reframe, weather/light
                                      treatment, or transformation from
                                      existing master

  S --- Storyboard                    Character blocking/composition
                                      should be tested before final
                                      production

  P --- Production                    Dedicated final production frame
                                      will eventually be required

  E --- Edit/Effect                   Primarily solved through editing,
                                      compositing, overlays, or graphics
  -----------------------------------------------------------------------

A shot may use multiple stages. `S→P` means storyboard/blocking first,
followed later by a final production frame.

------------------------------------------------------------------------

# 2. Act 1 --- Bellwood and Lumi

  Shot   Storyboard Plan                            References        Class
  ------ ------------------------------------------ ----------------- -------
  01A    Mountains → Bellwood opening               ENV_01            D
  01B    Full Bellwood aerial                       ENV_01            M
  02A    Tower from village                         ENV_02            M/D
  02B    Push toward Great Lantern flame            ENV_02            D/E
  03A    Great flame → tiny Lumi flame match cut    Lumi + ENV_02     D/E
  03B    Lumi alone on right workshop shelf         Lumi + ENV_03     P
  03C    Wide workshop establishing shot            ENV_03            M
  04A    Lumi foreground watching larger lanterns   Lumi + ENV_03     P
  04B    Great Lantern through workshop window      ENV_03 + ENV_02   D
  04C    Lumi close-up; flame dips                  Lumi              D/P

Primary new compositions: 03B and 04A.

------------------------------------------------------------------------

# 3. Act 2 --- Maya Chooses Lumi

  -----------------------------------------------------------------------
  Shot              Storyboard Plan   References        Class
  ----------------- ----------------- ----------------- -----------------
  05A               Maya enters       Maya + ENV_03     S→P
                    workshop                            

  05B               Maya notices Lumi Maya + Lumi +     S→P
                    across room       ENV_03            

  05C               Maya lifts Lumi   Maya + Lumi +     S→P
                                      Scale + ENV_03    

  05D               Maya holding      Maya + Lumi +     S→P
                    Lumi; emotional   Scale + ENV_03    
                    two-shot                            
  -----------------------------------------------------------------------

These shots carry high consistency risk because they combine Maya, Lumi,
hands, scale, and an established room.

05C is especially difficult:

``` text
Maya
+ recognisable face
+ correct Lumi
+ correct Lumi scale
+ hand gripping handle
+ workshop continuity
```

It receives a higher production budget later.

------------------------------------------------------------------------

# 4. Act 3 --- Into the Forest

  -----------------------------------------------------------------------
  Shot              Storyboard Plan   References        Class
  ----------------- ----------------- ----------------- -----------------
  06A               Forest            ENV_04            M
                    establishing                        

  06B               Maya walking      Maya + Lumi +     S→P
                    trail with Lumi   Scale + ENV_04    

  06C               Maya collecting   Maya + ENV_04     S→P
                    flowers                             

  06D               Lumi swinging     Lumi + Scale +    P
                    from Maya's hand  ENV_04            

  06E               Clouds begin      ENV_04            D/E
                    gathering                           
  -----------------------------------------------------------------------

For 06C, Maya should use the established right-side wildflower patch
rather than creating a new meadow.

------------------------------------------------------------------------

# 5. Act 4 --- Storm

  Shot   Storyboard Plan                         References             Class
  ------ --------------------------------------- ---------------------- -------
  07A    Wind rises through established forest   ENV_04/05              D/E
  07B    Maya reacts to first rain               Maya + ENV_04          S→P
  07C    Maya in heavy storm                     Maya + Lumi + ENV_05   S→P
  07D    Fallen branch blocks path               ENV_05                 D/P
  08A    Distant Bellwood through rain           ENV_01 + ENV_05        S/P
  08B    Great Lantern goes dark                 ENV_01/02              D/E
  08C    Maya realises Bellwood disappeared      Maya + ENV_05          P

Intermediate rain states should be created through transformation,
animation, overlays, or editing rather than independently regenerating
the forest.

------------------------------------------------------------------------

# 6. Act 5 --- Lumi Almost Goes Out

  Shot   Storyboard Plan                    References            Class
  ------ ---------------------------------- --------------------- -------
  09A    Flame battered by rain/wind        Lumi                  P/E
  09B    Tiny flame almost extinguished     Lumi                  D/E
  09C    Maya cups Lumi with both hands     Maya + Lumi + Scale   S→P
  09D    Wet Maya: "Please don't go out."   Maya                  P
  10A    Lumi's flame stabilises            Lumi                  D/E
  10B    Tiny amber pool on wet ground      Lumi + ENV_05         P/E
  10C    Light catches object ahead         ENV_05                D/P

09C is one of the film's highest-complexity AI compositions because of
hands, lantern identity, scale, wet character state, and emotion.

------------------------------------------------------------------------

# 7. Act 6 --- The Next Step

  Shot   Storyboard Plan                    References             Class
  ------ ---------------------------------- ---------------------- -------
  11A    Lumi reveals carved stone marker   ENV_05 + Lumi          P
  11B    Maya follows arrow                 Maya + Lumi + ENV_05   S→P
  11C    Second marker illuminated          ENV_05 + Lumi          D/P
  11D    Maya continues through darkness    Maya + Lumi + ENV_05   S→P

Marker design:

``` text
knee-high weathered stone
+ deeply carved directional arrow
+ moss around base
```

No separate marker master is required unless production generation
proves inconsistent.

------------------------------------------------------------------------

# 8. Act 7 --- Bellwood Sees Lumi

  Shot   Storyboard Plan                References                Class
  ------ ------------------------------ ------------------------- -------
  12A    Villagers beneath dark tower   ENV_06                    D/P
  12B    Old Woman scans forest         Old Woman spec + ENV_06   S→P
  12C    Tiny distant flicker           ENV_06/forest             E/D
  12D    Villagers react: "Look!"       ENV_06                    S→P

Supporting villagers do not require Maya-level identity locking.

------------------------------------------------------------------------

# 9. Act 8 --- Many Small Lights

  Shot   Storyboard Plan                  References   Class
  ------ -------------------------------- ------------ -------
  13A    First villager raises lantern    ENV_06       P
  13B    Several lanterns appear          ENV_06       D/P
  13C    Dozens illuminate village edge   ENV_01/06    D/E
  13D    Glowing path toward forest       ENV_01/06    P/E

13D is a hero shot and receives higher production priority.

------------------------------------------------------------------------

# 10. Act 9 --- Home

  Shot   Storyboard Plan             References             Class
  ------ --------------------------- ---------------------- -------
  14A    Maya sees path of lights    Maya + forest          P
  14B    Maya runs toward Bellwood   Maya + Lumi + forest   S→P
  14C    Villagers receive Maya      Maya + Lumi + ENV_06   S→P

14C may be solved through layered composition rather than expecting one
generation to perfectly create Maya, Lumi, and a large crowd.

------------------------------------------------------------------------

# 11. Act 10 --- Resolution

  -----------------------------------------------------------------------
  Shot              Storyboard Plan   References        Class
  ----------------- ----------------- ----------------- -----------------
  15A               Storm clearing    ENV_01            D/E
                    over Bellwood                       

  15B               Great Lantern     ENV_02            D/E
                    relit                               

  15C               Lumi sees         Lumi + Bellwood   P
                    ordinary village                    
                    lanterns                            

  16A               Maya walks down   Maya + Lumi +     S→P
                    wet street with   Scale + ENV_07    
                    Lumi                                

  16B               Lumi illuminates  Lumi + ENV_07     P/E
                    next stones                         

  16C               Camera rises      ENV_01/07         D/E
                    above Bellwood                      

  17A               Title/end         ---               E
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# 12. Generation Impact

Current planning indicates:

``` text
57 total shots

~8       existing-master shots
~15      derivative/edit/effect shots
~10      storyboard-first complex shots
~20–24   dedicated production compositions
```

Categories overlap. They are production classifications, not independent
asset totals.

The key rule is:

> Do not generate 57 independent final images merely because the film
> contains 57 shots.

------------------------------------------------------------------------

# 13. Hero-Shot Priority

  Priority   Shot   Reason
  ---------- ------ ------------------------------------
  H1         03B    First proper Lumi reveal
  H2         05D    Maya/Lumi relationship established
  H3         08B    Great Lantern dies
  H4         09C    Maya protects Lumi
  H5         10B    Tiny light becomes useful
  H6         11A    Arrow-marker revelation
  H7         13D    Many small lights form path
  H8         14A    Maya sees home
  H9         14C    Emotional return
  H10        16B    Final "next step" visual

Hero shots receive more generation attention than transitional shots.

------------------------------------------------------------------------

# 14. Motion Classification

## High-Value AI Motion

``` text
06B Maya walking
06D Lumi swinging
07A wind building
07B first rain
07C Maya moving through storm
09A flame struggling
09C Maya cupping Lumi
11B Maya following marker
13A lantern raised
13B lights multiplying
14B Maya running home
14C reunion
16A Maya walking home
```

## Editing May Be Sufficient

``` text
01A slow push
01B aerial movement
02A tilt/push
02B flame emphasis
03A match cut
03C workshop pan
04B window push
06E clouds
08B lantern extinction
09B flame reduction
10A flame stabilisation
12C distant flicker
13C lights appearing
15A clearing weather
15B relight
16B local light movement
16C pull-up/pull-back
17A title
```

------------------------------------------------------------------------

# 15. Animatic Strategy

Do not generate a polished storyboard panel simply because an animatic
slot is empty.

Build the animatic progressively from:

``` text
approved environment masters
+
character masters
+
temporary crops/reframes
+
labelled placeholders for missing compositions
+
temporary narration/dialogue
```

A missing composition can initially be represented by a simple
placeholder such as:

``` text
SHOT 09C
Maya cups Lumi
CLOSE-UP
5 sec
```

This is sufficient to test story timing.

------------------------------------------------------------------------

# 16. Workflow Improvement 009 --- Temporary Voice Before Production Imagery

Previous assumption:

``` text
Storyboard images
→ Voiceover
→ Edit
```

Revised workflow:

``` text
Shot map
→ Temporary storyboard assets
→ TEMP VOICEOVER
→ ANIMATIC
→ Timing lock
→ Production images
→ Final voiceover
→ Animation
→ Final edit
```

Narration determines actual shot duration. Timing problems should be
discovered before expensive image/video generation.

------------------------------------------------------------------------

# 17. Stage 7 Quality Gate

-   [x] All 57 shots assigned a production strategy
-   [x] Existing-master opportunities identified
-   [x] Derivative/edit opportunities identified
-   [x] Storyboard-first complex shots identified
-   [x] Dedicated production-shot needs identified
-   [x] Hero shots prioritised
-   [x] High-value motion shots identified
-   [x] Editing-only opportunities identified
-   [x] Animatic strategy defined
-   [x] Temporary-voice workflow adopted

## Stage Result

**PASS --- APPROVED**

------------------------------------------------------------------------

# 18. Next Stage --- 7A Temporary Voice Track

Prepare a clean narration/dialogue recording script with:

-   speaker separation
-   narration
-   dialogue
-   intentional pauses
-   emotional direction
-   provisional timing
-   file naming
-   temporary recording/generation workflow

Then create the temporary voice track and use it to build the first
playable animatic before full production-image generation.

No additional image-generation credits are required for the next step.

------------------------------------------------------------------------

*AI Video Studio --- Video 01: The Little Lantern --- Storyboard &
Animatic Production Map v1.0*
