# Final 55-shot production-image readiness audit

Date: 2026-10-20 (Australia/Melbourne). Scope: approved visual coverage for animation planning, not completed motion or final delivery quality. No animation planning, image generation, editorial rendering or replacement imagery was performed. Only this audit report and authorized state updates are written to the project.

## 1. Executive conclusion

**55-SHOT PRODUCTION-IMAGE READINESS GATE: PASS.**

**PRODUCTION IMAGE STAGE: COMPLETE / PASS.**

**READY FOR: ANIMATION PLANNING — NOT STARTED.** Human approval is required before preparing that stage. This audit authorizes no further image generation, AI video calls or credit spend.

55 unique locked shots / 275 seconds / 4:35; all have an approved primary visual source. 44 shots have a READY category and 11 have CONDITIONAL_NONBLOCKING limitations. Zero BLOCKED_STILL; zero BLOCKED_CONTINUITY. This is a coverage gate, not approval of candidate derivatives or a guarantee of successful future animation. Ordinary animation/editorial implementation and final quality review remain necessary.

The 08AB shared master and human-approved 08B extinction treatment resolve the only previously identified production-blocking geography/event gap. 08A = READY_DIRECT; 08B = READY_EDIT_EFFECT; 08C retains its approved reaction anchor. Older diagnostic reports' pending 08A/08B assessments are superseded by these later approvals. 08B was not rebuilt, re-rendered or subjected to another frame/decode validation; registered paths/hashes were checked with the rest of the manifest because no inconsistency was discovered.

### Evidence and authority

Read current studio_manifest.yaml, PROJECT_STATE.md, shot list, storyboard map, production-image plan and prompt book, review_v1/REVIEW_REPORT.md, review_v2/DECISION_REPORT.md and 08B build notes/registered approval. Inspect actual registered imagery: twelve canonical character/environment references, all 28 PIs, 13D, 14C, 08AB and registered native 08B stills. Temporary contact sheets used only for inspection were created outside the project; they are not replacement images or authorities. Existing per-shot human approvals and accepted variations remain binding. Production prompt wording is historical planning authority; later explicit approvals/implementation overrides supersede historical pending statements.

Validated 48 manifest path/hash records, including source masters, production images and registered 08B artifacts. No candidate/test/draft frame is counted as approved coverage. Codes in the table resolve to exact approved paths in the source registry below. Secondary sources are included only where they contribute visual authority.

## 2. Readiness-category definitions

- READY_DIRECT: approved image/master directly establishes the intended shot.
- READY_DERIVATIVE: normal bounded crop/reframe/pan/zoom of approved material suffices.
- READY_EDIT_EFFECT: the effect is understood and supported by approved source material; except 08B, this does not claim an effect has already been rendered/approved.
- READY_ANIMATION: approved still supplies the required character configuration/world; remaining action is normal controlled motion.
- CONDITIONAL_NONBLOCKING: planning may proceed with the stated crop, action or editorial limitation. These are not completed or approved derivative outputs.
- BLOCKED_STILL: missing information/action requires new still composition before planning.
- BLOCKED_CONTINUITY: irreconcilable critical identity/geography/weather/chronology contradiction.

| Category | Count |
|---|---:|
| READY_DIRECT | 12 |
| READY_DERIVATIVE | 2 |
| READY_EDIT_EFFECT | 11 |
| READY_ANIMATION | 19 |
| CONDITIONAL_NONBLOCKING | 11 |
| BLOCKED_STILL | 0 |
| BLOCKED_CONTINUITY | 0 |

## 3. Complete 55-shot table

Timing is local film time; end is exclusive. Original storyboard classes remain unchanged, including historical S/P and D/E classes for subsequently escalated shots. Risk rates possible motion/effect complexity, not still-image sufficiency; LOW does not promise effortless execution.

| Shot | Timing | Duration | Story action | Original class | Final readiness | Primary approved source | Useful secondary | Expected implementation | Animation need | Animation risk | Continuity constraints | Known limitation | BLOCKING |
|---|---|---:|---|---|---|---|---|---|---|---|---|---|---|
| 01A | 00:00–00:06 | 6s | Mountains → Bellwood opening | D | CONDITIONAL_NONBLOCKING | ENV_01 | - | crop/push | Optional editorial only | LOW | Preserve valley and opening geography | Use wider mountain/valley crop; no extreme enlargement or unseen detail | NO |
| 01B | 00:06–00:12 | 6s | Full Bellwood aerial | M | READY_DIRECT | ENV_01 | - | direct/pan | Optional editorial only | LOW | Modest Bellwood and lit tower | Restrained camera range within source | NO |
| 02A | 00:12–00:18 | 6s | Tower from village | M/D | READY_EDIT_EFFECT | ENV_02 | - | edit/effect | No AI motion needed | LOW | Intro dark-to-light staging before later storm extinction | Locally mask initial flame/glow; retain enclosure | NO |
| 02B | 00:18–00:25 | 7s | Push toward Great Lantern flame | D/E | READY_EDIT_EFFECT | ENV_02 | - | reframe/effect | No AI motion needed | LOW | Natural Great Lantern ignition; no magic | Limit push to available detail; ignition treatment not rendered here | NO |
| 03A | 00:25–00:29 | 4s | Great flame → tiny Lumi flame match cut | D/E | CONDITIONAL_NONBLOCKING | ENV_02 | LUMI_PRIMARY | crop/match cut/effect | Editorial flame motion only | MEDIUM | Huge-versus-tiny flame contrast; Lumi stays physically small | Reject extreme soft crops; moderate crop plus local flame effect is allowed by approved plan | NO |
| 03B | 00:29–00:36 | 7s | Lumi alone on right workshop shelf | P | READY_DIRECT | PI_001 | - | direct/restrained push | Optional flame flicker | MEDIUM | Accepted right-window ledge; tiny flame, no face | Protect full Lumi body and handle | NO |
| 03C | 00:36–00:43 | 7s | Wide workshop establishing shot | M | READY_DERIVATIVE | PI_001 | ENV_03 | reframe/pan | No AI motion needed | LOW | Canonical workshop layout; Lumi on accepted ledge | Use approved wide PI_001 rather than duplicate insert | NO |
| 04A | 00:43–00:49 | 6s | Lumi foreground watching larger lanterns | P | READY_DIRECT | PI_002 | - | direct | Optional restrained motion | MEDIUM | Larger/brighter neighbour; no anthropomorphism | Perspective size is not physical scale | NO |
| 04B | 00:49–00:55 | 6s | Great Lantern through workshop window | D | READY_EDIT_EFFECT | ENV_03 | ENV_02 | crop/window edit | No AI motion needed | LOW | Distant lit tower seen through existing window | Keep tower small and window geometry intact | NO |
| 04C | 00:55–01:00 | 5s | Lumi close-up; flame dips | D/P | CONDITIONAL_NONBLOCKING | PI_001 | - | crop/local flame effect | Flame dip only | MEDIUM | Same shelf; tiny natural amber flame | Use conservative crop; reject green/dull diagnostic; preserve enclosure | NO |
| 05A | 01:00–01:05 | 5s | Maya enters workshop | S→P | READY_ANIMATION | PI_003 | - | animation | Small entering step | HIGH | Dry State 1; left entrance; no discovery yet | Approved already-inside doorway position; ground contact/boots at frame edge | NO |
| 05B | 01:05–01:10 | 5s | Maya notices Lumi across room | S→P | READY_ANIMATION | PI_004 | - | animation | Eyeline and small head movement | MEDIUM | Looks toward stationary Lumi; no touch/lift | Prominent foreground decorative lamp is accepted | NO |
| 05C | 01:10–01:15 | 5s | Maya lifts Lumi | S→P | CONDITIONAL_NONBLOCKING | PI_005 | - | animation | Small final upward lift and settle | HIGH | Maintain existing grip, handle and separation from support | Anchor is raised endpoint; do not invent a new reach/grasp/full pickup from rest | NO |
| 05D | 01:15–01:20 | 5s | Maya holding Lumi; emotional two-shot | S→P | READY_ANIMATION | PI_006 | - | animation | Breathing, gaze and small settle | HIGH | Dry State 1; accepted scale; tiny flame | Hand/handle rigidity; grade brighter window for sequence | NO |
| 06A | 01:20–01:24 | 4s | Forest establishing | M | READY_DERIVATIVE | ENV_04 | - | direct/reframe | Optional restrained environmental motion | LOW | Golden dry forest geography | No new trail viewpoint | NO |
| 06B | 01:24–01:28 | 4s | Maya walking trail with Lumi | S→P | READY_ANIMATION | PI_007 | - | animation | Walking cycle | HIGH | Dry State 1; outward direction; one Lumi | Separate moving arm, handle and lantern; avoid foot sliding | NO |
| 06C | 01:28–01:32 | 4s | Maya collecting flowers | S→P | READY_ANIMATION | PI_008 | - | animation | Small flower gathering motion | HIGH | Dry State 1; flowers beside trail; Lumi offscreen | Use current kneel/flower configuration; avoid complex new hand choreography | NO |
| 06D | 01:32–01:34 | 2s | Lumi swinging from Maya's hand | P | READY_ANIMATION | PI_009 | - | animation | Small pendulum swing | MEDIUM | Right-hand carry; rigid handle; tiny flame | Do not over-swing or enlarge flame | NO |
| 06E | 01:34–01:36 | 2s | Clouds begin gathering | D/E | READY_EDIT_EFFECT | ENV_04 | - | crop/cloud effect | Editorial environmental motion | LOW | Approaching storm A after dry forest | Use modest sky crop and dimming; retain geography | NO |
| 07A | 01:36–01:41 | 5s | Wind rises through established forest | D/E | READY_EDIT_EFFECT | ENV_04 | ENV_05 | weather effect | Wind/first rain | MEDIUM | Weather B before heavy C | Stage transition; no abrupt full-storm master substitution | NO |
| 07B | 01:41–01:46 | 5s | Maya reacts to first rain | S→P | READY_ANIMATION | PI_010 | - | animation | Small homeward head/shoulder turn | HIGH | 07B primary; first rain early State 2; Lumi offscreen | Preserve screen-left/homeward intent and restrained dampness | NO |
| 07C | 01:46–01:51 | 5s | Maya in heavy storm | S→P | READY_ANIMATION | PI_011 | - | animation | Cautious wet-trail step | HIGH | State 2; Weather C; one small Lumi | Rain, limbs and lantern must remain coherent; foreground visibility accepted | NO |
| 07D | 01:51–01:57 | 6s | Fallen branch blocks path | D/P | READY_DIRECT | PI_012 | - | direct | Optional rain/branches | LOW | Weather C; fallen limb blocks trail; no people | Do not turn limb into whole uprooted tree | NO |
| 08A | 01:57–02:02 | 5s | Distant Bellwood through rain | S/P | READY_DIRECT | 08AB | - | direct | No AI motion needed | LOW | Lit distant beacon; approved forest-side geometry | Shot-specific village variation accepted; canonical masters remain authority | NO |
| 08B | 02:02–02:06 | 4s | Great Lantern goes dark | D/E | READY_EDIT_EFFECT | 08B_APPROVED | 08AB | approved editorial effect | No additional motion required for coverage | LOW | Same geometry; lit to extinct; stays dark afterward | Human-approved fixed-camera/static-rain review treatment; no rebuild | NO |
| 08C | 02:06–02:10 | 4s | Maya realises Bellwood disappeared | P | READY_ANIMATION | PI_013 | - | animation | Minor searching head/eye movement | MEDIUM | Advanced State 2; screen-left missing landmark; no Lumi | Do not reintroduce village or beacon into reaction frame | NO |
| 09A | 02:10–02:15 | 5s | Flame battered by rain/wind | P/E | READY_DIRECT | PI_014 | - | direct/flame effect | Optional small flame/rain motion | MEDIUM | State 3 exterior wetness; living threatened flame | Single actual flame; distinguish glass reflections | NO |
| 09B | 02:15–02:20 | 5s | Tiny flame almost extinguished | D/E | READY_EDIT_EFFECT | PI_014 | - | local flame effect | Nearly-out flame motion | MEDIUM | Same enclosure; flame almost out, not dead | Do not darken/redesign entire lantern or create second flame | NO |
| 09C | 02:20–02:25 | 5s | Maya cups Lumi with both hands | S→P | READY_ANIMATION | PI_015 | - | animation | Small sheltering adjustment | HIGH | Two hands protect Lumi; State 3; no power-up | Fingers/vents/handle separation; approved existing shelter endpoint | NO |
| 09D | 02:25–02:29 | 4s | Wet Maya: "Please don't go out." | P | READY_ANIMATION | PI_016 | - | animation | Small pleading expression/mouth motion | MEDIUM | Wet afraid State 3; look down toward offscreen Lumi | No clean reset or new light source | NO |
| 10A | 02:29–02:35 | 6s | Lumi's flame stabilises | D/E | READY_EDIT_EFFECT | PI_014 | - | local flame effect | Small flame stabilisation | MEDIUM | Same camera/body as 09A/B; ordinary tiny flame | Steady, not larger/brighter magical recovery | NO |
| 10B | 02:35–02:42 | 7s | Tiny amber pool on wet ground | P/E | READY_DIRECT | PI_017 | - | direct | Optional flame/rain | MEDIUM | Local useful pool on forest ground; State 3 | Accepted broader pool stays local; no area flood | NO |
| 10C | 02:42–02:48 | 6s | Light catches object ahead | D/P | CONDITIONAL_NONBLOCKING | PI_018 | PI_017 | crop/light reveal | Editorial grazing light | MEDIUM | Object/base cue before readable arrow at 11A | Native lower marker crop excludes arrow; avoid soft overcrop and premature clue | NO |
| 11A | 02:48–02:53 | 5s | Lumi reveals carved stone marker | P | READY_DIRECT | PI_018 | - | direct | Optional small light/rain motion | MEDIUM | Left-pointing stone arrow; tiny local Lumi illumination | Preserve carving and ground contact | NO |
| 11B | 02:53–02:57 | 4s | Maya follows arrow | S→P | READY_ANIMATION | PI_019 | - | animation | Careful homeward walk | HIGH | Leftward route agrees with arrow; State 3 | Grip/handle and foot contact; do not reverse approved direction | NO |
| 11C | 02:57–03:01 | 4s | Second marker illuminated | D/P | CONDITIONAL_NONBLOCKING | PI_018 | ENV_05 | local derivative/composite/effect | Editorial light reveal | MEDIUM | Another marker position on same route; leftward guidance | Use stone with source ground apron, masked into different forest-ground patch; no identical junction reuse; failed pasted diagnostic excluded | NO |
| 11D | 03:01–03:05 | 4s | Maya continues through darkness | S→P | READY_ANIMATION | PI_020 | - | animation | Restrained rear/three-quarter walk | HIGH | Homeward through dark Weather C; one Lumi | Retain ground contact and local light; not a second discovery | NO |
| 12A | 03:05–03:10 | 5s | Villagers beneath dark tower | D/P | READY_DIRECT | PI_021 | - | direct | Optional modest crowd/rain | HIGH | Great Lantern dark; no responding chain yet | Accepted tower variation only for this plate; no tower close-up redesign | NO |
| 12B | 03:10–03:14 | 4s | Old Woman scans forest | S→P | READY_ANIMATION | PI_022 | - | animation | Small scanning/recognition gaze | MEDIUM | Old Woman continuity; cold Weather C | Eye direction toward forest; no premature celebration | NO |
| 12C | 03:14–03:18 | 4s | Tiny distant flicker | E/D | CONDITIONAL_NONBLOCKING | ENV_05 | PI_021 | crop/tiny light effect | Editorial flicker | LOW | Villager POV toward forest; distant Lumi barely visible | Tiny isolated point, not lantern close-up/chain; establish eyeline, avoid excessive brightness | NO |
| 12D | 03:18–03:23 | 5s | Villagers react: "Look!" | S→P | CONDITIONAL_NONBLOCKING | PI_021 | PI_022 | reframe/animation | Small group recognition reaction | HIGH | Same villagers; forest-directed gaze; before answering light | Crop alone is not acting; animate limited foreground faces, not entire crowd choreography | NO |
| 13A | 03:23–03:27 | 4s | First villager raises lantern | P | READY_ANIMATION | PI_023 | - | animation | Small raise/settle | HIGH | First answering household lantern; Weather D begins | Existing raised endpoint; background sources remain subordinate/unlit | NO |
| 13B | 03:27–03:31 | 4s | Several lanterns appear | D/P | CONDITIONAL_NONBLOCKING | PI_021 | PI_023 | reframe/local light effect | Limited individual lantern lift if useful | HIGH | Approximately ten responding lights; Weather D; tower dark | Local masks on distinct existing lanterns, subtle wet reflections; no cloned people; five-light diagnostic not approved coverage | NO |
| 13C | 03:31–03:35 | 4s | Dozens illuminate village edge | D/E | CONDITIONAL_NONBLOCKING | SHOT_13D | PI_021 | village-edge reframe/light effect | Editorial staged illumination | MEDIUM | Dozens at village edge before full path reveal | Crop toward settlement and exclude far forest corridor; soft masks on sources/reflections; reject contour-damaged diagnostic; no full-route reveal | NO |
| 13D | 03:35–03:39 | 4s | Glowing path toward forest | P/E | READY_DIRECT | SHOT_13D | - | direct/restrained pull | Optional subtle distant movement | HIGH | Collective path first fully revealed; Great Lantern dark; Weather D | Accepted wide-shot tower variation is not canonical architecture; keep chain geometry | NO |
| 14A | 03:39–03:43 | 4s | Maya sees path of lights | P | READY_ANIMATION | PI_024 | - | animation | Small recognition/relief expression | MEDIUM | Maya sees distant lights ahead; wet State 3; Lumi offscreen | Do not depict arrival or brighten whole forest | NO |
| 14B | 03:43–03:48 | 5s | Maya runs toward Bellwood | S→P | READY_ANIMATION | PI_025 | - | animation | Running cycle toward visible lights | HIGH | Left-background lights ahead; right-hand Lumi; soaked/muddy | Keep feet, grip, handle, satchel and direction; no flip or premature arrival | NO |
| 14C | 03:48–03:53 | 5s | Villagers receive Maya | S→P | READY_ANIMATION | SHOT_14C | - | animation/hold | Small reciprocal settling response | HIGH | Stopped reception; Maya and adult reciprocal gaze; Weather D | Approved receiving configuration suffices; no invented hug/contact/handover needed | NO |
| 15A | 03:53–03:59 | 6s | Storm clearing over Bellwood | D/E | READY_EDIT_EFFECT | ENV_01 | ENV_05 | weather/exposure effect | Editorial clearing | MEDIUM | Storm passes; tower still dark until 15B | Mask source beacon off; no relight from lit aerial; maintain wet scene | NO |
| 15B | 03:59–04:05 | 6s | Great Lantern relit | D/E | READY_EDIT_EFFECT | ENV_02 | - | local relight effect | Editorial ignition | LOW | Only now Great Lantern returns | Natural relight; retain canonical housing and cold-to-poststorm grade | NO |
| 15C | 04:05–04:12 | 7s | Lumi sees ordinary village lanterns | P | READY_DIRECT | PI_026 | - | direct | Optional restrained flame | MEDIUM | State 4 ordinary lights/belonging; Lumi not magically stronger | Large in-frame Lumi is foreground perspective, not size change | NO |
| 16A | 04:12–04:18 | 6s | Maya walks down wet street with Lumi | S→P | READY_ANIMATION | PI_027 | - | animation | Quiet damp street walk | HIGH | State 4 remains damp/muddy; one Lumi; no new urgency | Hand/handle rigidity, foot contact, no dry-clean reset | NO |
| 16B | 04:18–04:24 | 6s | Lumi illuminates next stones | P/E | READY_DIRECT | PI_028 | - | direct/small light motion | Optional restrained step/light shift | MEDIUM | State 4; only next stones locally useful | Accepted larger pool/reflection not second flame or power escalation | NO |
| 16C | 04:24–04:29 | 5s | Camera rises above Bellwood | D/E | CONDITIONAL_NONBLOCKING | ENV_07 | ENV_01 | restrained rise/dissolve | Editorial transition only | LOW | Passed storm wet Bellwood; tower relit | Use bounded street rise then graded aerial dissolve, not continuous unseen 3D flight | NO |
| 17A | 04:29–04:35 | 6s | Title/end | E | READY_EDIT_EFFECT | ENV_01 | - | fade/title graphic | No AI motion needed | LOW | Final title after village ending | Approved title wording from concept/script; no generated text in scenery | NO |

### Exact source registry

All paths are relative to `01_THE_LITTLE_LANTERN/`. Masters provide authority at their native resolution; a 1920×1080 delivery target does not imply native recovered detail.

| Code | Approved/registered path |
|---|---|
| 08AB | `04_Images/Approved/SHOT_08AB_BELLWOOD_STORM_LIT_MASTER_v1.jpeg` |
| 08B_APPROVED | `04_Images/Editorial_Prep/08B_extinction_v1/08B_EXTINCTION_PREVIEW_v1.mp4` |
| ENV_01 | `04_Images/References/Environments/ENV_01_BELLWOOD_AERIAL_MASTER.jpeg` |
| ENV_02 | `04_Images/References/Environments/ENV_02_GREAT_LANTERN_TOWER_MASTER.jpeg` |
| ENV_03 | `04_Images/References/Environments/ENV_03_WORKSHOP_INTERIOR_MASTER.jpeg` |
| ENV_04 | `04_Images/References/Environments/ENV_04_FOREST_PATH_DAY_MASTER.jpeg` |
| ENV_05 | `04_Images/References/Environments/ENV_05_FOREST_PATH_STORM_MASTER.jpeg` |
| ENV_07 | `04_Images/References/Environments/ENV_07_BELLWOOD_STREET_NIGHT_MASTER.jpeg` |
| LUMI_PRIMARY | `02_Character_Bible/References/Lumi/lumi_master_3quarter.jpg` |
| PI_001 | `04_Images/Approved/PI_001_LUMI_WORKSHOP_SHELF_v1.jpeg` |
| PI_002 | `04_Images/Approved/PI_002_LUMI_LANTERN_COMPARISON_v1.jpeg` |
| PI_003 | `04_Images/Approved/PI_003_MAYA_ENTERS_WORKSHOP_v1.jpeg` |
| PI_004 | `04_Images/Approved/PI_004_MAYA_NOTICES_LUMI_v1.jpeg` |
| PI_005 | `04_Images/Approved/PI_005_MAYA_LIFTS_LUMI_v1.jpeg` |
| PI_006 | `04_Images/Approved/PI_006_MAYA_LUMI_WORKSHOP_v1.jpeg` |
| PI_007 | `04_Images/Approved/PI_007_MAYA_LUMI_FOREST_WALK_v1.jpeg` |
| PI_008 | `04_Images/Approved/PI_008_MAYA_GATHERS_WILDFLOWERS_v1.jpeg` |
| PI_009 | `04_Images/Approved/PI_009_LUMI_FOREST_CARRY_DETAIL_v1.jpeg` |
| PI_010 | `04_Images/Approved/PI_010_MAYA_FIRST_RAIN_TURN_HOME_v1.jpeg` |
| PI_011 | `04_Images/Approved/PI_011_MAYA_LUMI_STORM_TRAIL_v1.jpeg` |
| PI_012 | `04_Images/Approved/PI_012_FALLEN_BRANCH_BLOCKS_TRAIL_v1.jpeg` |
| PI_013 | `04_Images/Approved/PI_013_MAYA_LOSES_BELLWOOD_v1.jpeg` |
| PI_014 | `04_Images/Approved/PI_014_LUMI_FLAME_STORM_THREAT_v1.jpeg` |
| PI_015 | `04_Images/Approved/PI_015_MAYA_PROTECTS_LUMI_v1.jpeg` |
| PI_016 | `04_Images/Approved/PI_016_MAYA_PLEASE_DONT_GO_OUT_v1.jpeg` |
| PI_017 | `04_Images/Approved/PI_017_LUMI_SMALL_POOL_OF_LIGHT_v1.jpeg` |
| PI_018 | `04_Images/Approved/PI_018_CARVED_STONE_ARROW_REVEAL_v1.jpeg` |
| PI_019 | `04_Images/Approved/PI_019_MAYA_FOLLOWS_MARKER_HOME_v1.jpeg` |
| PI_020 | `04_Images/Approved/PI_020_MAYA_LUMI_CONTINUE_THROUGH_DARKNESS_v1.jpeg` |
| PI_021 | `04_Images/Approved/PI_021_WORRIED_VILLAGERS_DARK_TOWER_v1.jpeg` |
| PI_022 | `04_Images/Approved/PI_022_OLD_WOMAN_FIRST_RECOGNITION_v1.jpeg` |
| PI_023 | `04_Images/Approved/PI_023_FIRST_VILLAGER_RAISES_LANTERN_v1.jpeg` |
| PI_024 | `04_Images/Approved/PI_024_MAYA_SEES_PATH_HOME_v1.jpeg` |
| PI_025 | `04_Images/Approved/PI_025_MAYA_RUNS_TOWARD_BELLWOOD_v1.jpeg` |
| PI_026 | `04_Images/Approved/PI_026_LUMI_AMONG_ORDINARY_LIGHTS_v1.jpeg` |
| PI_027 | `04_Images/Approved/PI_027_MAYA_LUMI_QUIET_WALK_HOME_v1.jpeg` |
| PI_028 | `04_Images/Approved/PI_028_LUMI_ILLUMINATES_NEXT_STONES_v1.jpeg` |
| SHOT_13D | `04_Images/Approved/SHOT_13D_PATH_OF_LIGHTS_v1.jpeg` |
| SHOT_14C | `04_Images/Approved/SHOT_14C_VILLAGERS_RECEIVE_MAYA_v1.jpeg` |

08B_APPROVED is the approved four-second editorial preview; its registered native post-extinction PNG, pre-reference and build source/notes remain in `04_Images/Editorial_Prep/08B_extinction_v1/`. The registry location remains authoritative despite the directory name. Native approved source JPEGs are predominantly 1376×768, approximately 1.792:1; fit/crop slightly to 16:9 without stretch. Character/scale masters retain their own reference dimensions.

## 4. Hero-shot readiness

All ten hero beats have approved visual authority, correct chronology and a viable implementation. No hero still-image blockers.

| Hero | Authority | Chronology and viable treatment | Risk |
|---|---|---|---|
| 03B Lumi reveal | PI_001 | Shelf reveal before Maya arrives; direct plate/restrained push | MEDIUM |
| 05D relationship | PI_006 | After choosing/lifting; reciprocal Maya/Lumi gaze, small settle | HIGH |
| 08B Great Lantern dies | 08AB + approved 08B | Same camera, flash then extinction; approved editorial treatment | LOW |
| 09C protection | PI_015 | After near-extinction; two-handed shelter already depicted | HIGH |
| 10B usefulness | PI_017 | After stabilisation; local pool only, no power-up | MEDIUM |
| 11A arrow | PI_018 | After pre-reveal cue; readable carved direction | MEDIUM |
| 13D path | SHOT_13D | Full route revealed only after answering/increasing lights | HIGH |
| 14A sees home | PI_024 | Recognition after path exists, before running | MEDIUM |
| 14C reception | SHOT_14C | Maya stopped; reciprocal adult response already present | HIGH |
| 16B next stones | PI_028 | Post-storm return to local usefulness | MEDIUM |

## 5. Maya continuity audit — PASS

State 1 (05A–06E): approved dry Maya in PI_003–009; absent characters are not inserted into environment shots. Mustard coat, cream sweater, teal trousers, boots and green satchel remain consistent. Approved pose/age/face tolerances do not replace canonical Maya masters.

State 2 (07A–08C): environment transition then PI_010 initial dampness, PI_011 heavy storm increasingly wet, PI_013 advanced wetness. 08A/B omit Maya intentionally. There is no forced dry reset. 07B is primary shot 07B, not 09A.

State 3 (09A–14C): soaked face/hair and wet clothes in PI_015/016/019/020/024/025 and reception SHOT_14C. Rain/mud variation is accepted within existing approvals; intensity should not be flattened into one generic clean face. Offscreen Maya in flame/ground/community shots does not violate state continuity.

State 4 (15A–16C): PI_026 visible sleeve/hand, PI_027 damp muddy walk and PI_028 muddy boots support aftermath. Use existing wetness/mud; do not clean or dry her instantly. No unsupported age/costume transition.

## 6. Lumi continuity audit — PASS

Canonical weathered rectangular brass/glass construction, curved connected handle, vent chamber and base remain authority. Approved paired sources establish small handheld scale. Foreground perspective, less pronounced scratches and enclosure/reflection variations already accepted do not change physical scale. One actual flame; reflections in PI_014/015/028 do not become duplicate flames. No face, limbs, self-propelled movement or magical beam.

Right-hand carrying anchors provide plausible grip/gravity; two-handed shelter is deliberately distinct. 05C may animate the final lift from the existing grip, not invent a reach/regrasp. Carry/swing/walk/run shots must keep rigid handle attachment and preserve identity. 09B nearly out → 10A steady remains local flame work on PI_014, not increasing Lumi's power. PI_017 and PI_028 accepted light footprints remain small/local relative to the scene. 16B restores the next-stones theme, not whole-street illumination.

## 7. Weather continuity audit — PASS WITH NORMAL EDITORIAL CONDITIONS

Calm Bellwood/workshop → golden dry ENV_04 and PI_007–009 → approaching storm ENV_04 cloud treatment → wind/first rain and PI_010 → full Weather C ENV_05/PI_011 onward → Weather D starting PI_023 through reception → passed storm/wet streets PI_026–028/ENV_07.

07A must ramp wind/rain rather than cut immediately to peak C; 07B keeps residual warm light before cooler heavy storm. 13B uses PI_021's subjects/ordinary lanterns as visual source, not its peak-C exposure/rain as an immutable finished frame: reduce rain prominence/grade consistently with PI_023's D while retaining wetness. 13D/14C already depict reduced continuing rain. 15A clearing must preserve a dark beacon until 15B. 16C must grade the aerial for post-storm continuity; source aerial cannot be dropped in ungraded as a dry/day reset. These are ordinary weather/grade tasks, not missing still compositions.

## 8. Great Lantern chronology audit — PASS

Canonical ENV_02 controls architecture; ENV_01 controls Bellwood world. Opening introduction permits local ignition/dark-to-light staging at 02A/B, then a lit beacon through workshop and 08A. Approved 08B extinguishes it. 08C–15A must keep it dark, including any use of lit canonical masters for village/window/clearing source material. SHOT_13D/PI_021/SHOT_14C accepted tower variations apply only to their specific compositions and never replace ENV_02 for new close tower architecture.

15B alone restores the Great Lantern; 15C–16C may show relit aftermath. Avoid inserting ENV_01/02/06 lit states into earlier dark-tower sequence. 08AB is pre-extinction only; approved post-state/effect is required for 08B, never the bare lit still.

## 9. Community-light chronology audit — PASS WITH NORMAL EFFECT CONDITIONS

12A/B worried villagers and unlit carried lamps → 12C distant isolated Lumi flicker → 12D recognition → 13A first raised/answering household lantern → 13B approximately ten additional lights → 13C dozens near village edge → 13D complete path toward forest → 14A recognition/run/reception → 15C ordinary lights/belonging.

PI_021 and PI_023 provide distinct residents, visible carried lanterns and source material for local lighting/reaction. 13B needs properly placed emission and local reflections, not duplicated people. 13C can crop the approved 13D settlement/edge population but must exclude/hold back its far forest corridor. Use restrained feathered local light/atmosphere masks if necessary; existing failed threshold mask is not usable. The visual event of illumination and bounded route reveal is ordinary editorial work. A finished masked plate is not required to decide that source content exists. Do not use a raw full 13D frame before 13D.

## 10. Geography continuity audit — PASS WITH BOUNDED REUSE

ENV_01 village → ENV_03 workshop → ENV_04 forest → ENV_05 storm forest → approved distant 08AB view → PI_018/019/020 leftward marker route → PI_021/022 community facing forest → SHOT_13D path → PI_024/025 seeing and running toward screen-left lights → SHOT_14C stopped reception → ENV_07/PI_026–028 wet streets.

Workshop retains left entrance, back counter and right windows; PI_001's projecting window ledge is explicitly accepted. PI_003 already inside doorway is an accepted entering beat. PI_004's ornate foreground lamp does not change Lumi's scale. PI_025 Attempt 2's lights are ahead, not behind running Maya. No flip/reverse should undo these axes.

11C is a low insert, not a new mapped junction wide: approved PI_018 provides the marker, carving, ground and wet material; ENV_05 supplies compatible ground context. Preserve a ground apron/contact with the extracted stone and occlude it into a different patch of trail. A crude polygon-pasted diagnostic failed, but the missing work is mask/contact/grade, not an unknown marker design or viewpoint. Identical full-frame reuse as a second junction is disallowed. If a future implementation demands an unsupported new view, stop for reviewed scope change rather than treating this audit as permission to generate.

16C's approved strategy allows a bounded street rise/pull and dissolve to the existing aerial. It does not require reconstructing an unseen continuous street-to-aerial camera flight. 08AB/13D/14C accepted distant geography differences are shot-specific, not a canonical map revision.

## 11. Animation-risk summary

LOW: **15**; MEDIUM: **22**; HIGH: **18**. One risk assigned per shot, including optional motion/effects. High risk is not a still-image block. No video generator or prompting strategy selected.

High-risk shots: **05A, 05C, 05D, 06B, 06C, 07B, 07C, 09C, 11B, 11D, 12A, 12D, 13A, 13B, 13D, 14B, 14C, 16A**.

For all READY_ANIMATION shots and motion-bearing conditional shots, inspected subject separation, anatomy, framing, identity, direction and available movement area. Maya/hand/Lumi silhouette separation is readable in the anchors; approved anatomy is plausible, not proof that an animator/model will preserve it. Full-body walking/running frames have usable poses and feet, but limited travel headroom: keep movement bounded or use approved editorial crop/hold, not unseen scenery. 05A doorway and 05C lifted endpoint require particularly bounded motion. PI_015 supports the existing two-handed shelter, not a new finger choreography. PI_025 supplies dynamic full-body running toward visible lights. SHOT_14C contains the missing reciprocal interaction, so small response is viable without fabricating a hug. Crowd plates provide separable foreground faces/lamps, not safe simultaneous arbitrary choreography for every resident.

Identity is constrained by five canonical character/scale references. In every animated shot, protect face age, costume, rigid lantern geometry, flame count, ground contact and approved travel direction. Bright flames, embedded rain, glass/reflections and overlapping fingers increase risk; isolate/reduce motion if a future test fails. No shot is failed merely because motion remains untested.

## 12. Remaining nonblocking conditions

- **01A** — Use wider mountain/valley crop; no extreme enlargement or unseen detail. Implementation: crop/push.
- **03A** — Reject extreme soft crops; moderate crop plus local flame effect is allowed by approved plan. Implementation: crop/match cut/effect.
- **04C** — Use conservative crop; reject green/dull diagnostic; preserve enclosure. Implementation: crop/local flame effect.
- **05C** — Anchor is raised endpoint; do not invent a new reach/grasp/full pickup from rest. Implementation: animation.
- **10C** — Native lower marker crop excludes arrow; avoid soft overcrop and premature clue. Implementation: crop/light reveal.
- **11C** — Use stone with source ground apron, masked into different forest-ground patch; no identical junction reuse; failed pasted diagnostic excluded. Implementation: local derivative/composite/effect.
- **12C** — Tiny isolated point, not lantern close-up/chain; establish eyeline, avoid excessive brightness. Implementation: crop/tiny light effect.
- **12D** — Crop alone is not acting; animate limited foreground faces, not entire crowd choreography. Implementation: reframe/animation.
- **13B** — Local masks on distinct existing lanterns, subtle wet reflections; no cloned people; five-light diagnostic not approved coverage. Implementation: reframe/local light effect.
- **13C** — Crop toward settlement and exclude far forest corridor; soft masks on sources/reflections; reject contour-damaged diagnostic; no full-route reveal. Implementation: village-edge reframe/light effect.
- **16C** — Use bounded street rise then graded aerial dissolve, not continuous unseen 3D flight. Implementation: restrained rise/dissolve.

These eleven are planning constraints, not approval of the review_v1/review_v2 candidates. No failed composite, green flame dip, threshold light mask or extreme soft crop is promoted to authority. Source resolution must be respected at final framing. Local flame/rain effects, reaction acting, source-ground marker compositing and staged illumination remain to be built/tested during normal execution. No automatic generation retries are allowed if future motion tests fail.

The earlier “all 14 conditional shots remain conditional” statement described unreviewed diagnostic work, not this final source-sufficiency standard. Two have since received explicit 08AB/08B approvals; 14C already has approved reciprocal receiving action and ordinary settling is sufficient. The other eleven remain explicitly nonblocking, not claimed complete. A failed rough composite demonstrates that output's failure, not an absence of approved source information in every possible ordinary treatment.

## 13. Genuine blocking conditions

**None. BLOCKED_STILL = 0. BLOCKED_CONTINUITY = 0.** No new PI or still-image repair budget recommended. Production image generation is complete for this coverage gate. This does not waive the stated implementation limits or final editorial/motion quality review.

## 14. Final gate recommendation and state effect

**55-SHOT PRODUCTION-IMAGE READINESS GATE: PASS.**

**PRODUCTION IMAGE STAGE: COMPLETE / PASS.**

**READY FOR: ANIMATION PLANNING — READY TO BEGIN / NOT STARTED.**

Next safe action: human approval to prepare the animation-planning stage. Do not start it in this audit. No further image generation is authorized by this audit.

### Accounting and preservation validation

- Original PI ledger: 28 planned / 28 approved / 0 remaining / 32 attempts / 24 first-attempt approvals; PI_001,005,019,025 have two attempts each, remaining 24 one each; 8+24=32.
- 13D separate ledger: 1 planned / 1 approved / 1 attempt / 1 first-attempt success, unchanged.
- 14C separate ledger: 1 planned / 1 approved / 1 attempt / 1 first-attempt success, unchanged.
- 08AB generated-master repair: 1 planned / 1 approved / 1 attempt / 1 first-attempt approval, unchanged. Non-generative 08B adds zero generations.
- 08B remains human-approved, registered and READY_EDIT_EFFECT; no rebuild or re-render.
- 55 unique contiguous shots exactly once, 275 seconds, timing lock/classes preserved.
- Primary/secondary registered paths exist. 48 manifest hash records valid; all twelve canonical reference hashes valid. All pre-existing approved images and editorial outputs remain byte-identical.
- Manifest parses. Only audit report plus studio_manifest.yaml and PROJECT_STATE.md changed/created. Historical plans, prompts and diagnostic reports unchanged. git diff --check passes. Git repository currently presents the project and root .DS_Store as untracked; ordinary git diff therefore does not show their content changes. Before/after SHA-256 and parsed-section comparison provide preservation evidence.
- No image, video, audio or derivative created in the project, no AI service used, no installation, no commit.
