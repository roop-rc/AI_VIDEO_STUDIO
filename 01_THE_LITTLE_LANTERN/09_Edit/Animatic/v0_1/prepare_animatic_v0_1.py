from pathlib import Path
import subprocess,json,re,wave,hashlib
ROOT=Path(__file__).resolve().parents[3]; OUT=Path(__file__).resolve().parent
m=json.loads(subprocess.run(['ruby','-ryaml','-rjson','-e','puts JSON.generate(YAML.safe_load(File.read(ARGV[0]), [], [], false))',str(ROOT/'studio_manifest.yaml')],text=True,capture_output=True,check=True).stdout)
canonical=[a['path'] for g in m['characters'].values() for a in g.values()]+[a['path'] for a in m['environments']]
assert len(canonical)==12
snapshot={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in ROOT.rglob('*') if p.is_file() and OUT not in p.parents}
(OUT/'source_hashes.json').write_text(json.dumps(snapshot,indent=2))
env={e['id']:e['path'] for e in m['environments']}; lumi=m['characters']['Lumi']['primary']['path'];maya=m['characters']['Maya']['primary']['path'];scale=m['characters']['Scale']['canonical']['path']
# Only rows with an existing appropriate establishing view use environment masters.
masters={'01B':'ENV_01','02A':'ENV_02','03C':'ENV_03','06A':'ENV_04'}
derivs={'01A':'ENV_01','02B':'ENV_02','04B':'ENV_03','06E':'ENV_04','07A':'ENV_05','08B':'ENV_02','13C':'ENV_01','15A':'ENV_01','15B':'ENV_02','16C':'ENV_01'}
composites={'03B':('ENV_03',lumi),'04A':('ENV_03',lumi),'04C':(None,lumi),'06D':(None,scale),'09A':(None,lumi),'09B':(None,lumi),'09D':(None,maya),'10A':(None,lumi),'15C':('ENV_07',lumi)}
# Extract camera/composition and continuity from the fixed-width approved shot table.
cameras={};current=None
for line in (ROOT/'03_Storyboard/07_SCENE_SHOT_LIST.md').read_text().splitlines():
 hit=re.match(r'^  (\d{2}[A-Z])\s+\d\d:\d\d\s+\d+s',line)
 if hit:current=hit[1];cameras[current]=line[61:79].strip()
 elif current and line.startswith(' '*43) and line.strip():
  v=line[61:79].strip()
  if v:cameras[current]+=' '+v
 else:current=None
refs={}; cols=None; current=None
for line in (ROOT/'03_Storyboard/10_STORYBOARD_ANIMATIC_MAP.md').read_text().splitlines():
 runs=list(re.finditer(r'-{2,}',line))
 if len(runs)==4: cols=[x.start() for x in runs]; current=None; continue
 hit=re.match(r'^  (\d{2}[A-Z])\s+',line)
 if hit and cols:current=hit[1];refs[current]=line[cols[2]:cols[3]].strip()
 elif current and line.startswith(' '*cols[1]) and line.strip() and not line.strip().startswith('-'):
  extra=line[cols[2]:cols[3]].strip()
  if extra:refs[current]+=' '+extra
 else:current=None
shots=[]
for raw in m['shots']['items']:
 s=dict(raw);sid=s['shot_id'];s.update(kind='PLACEHOLDER',sources=[],motion='static labelled card',camera=cameras.get(sid,''),characters='Maya + Lumi' if 'Maya' in s['description'] else ('Lumi' if 'Lumi' in s['description'] or 'flame' in s['description'].lower() else 'As specified in approved shot map'),environment='See approved shot map',image='',inset='')
 if sid in masters:s.update(kind='MASTER',sources=[env[masters[sid]]],image=env[masters[sid]],motion='static aspect-preserving master')
 elif sid in derivs:s.update(kind='DERIVATIVE',sources=[env[derivs[sid]]],image=env[derivs[sid]],motion='static 8% tighter crop/reframe; effect intent labelled')
 elif sid in composites:
  e,char=composites[sid];s.update(kind='ROUGH COMPOSITE',sources=([env[e]] if e else [])+[char],image=env[e] if e else '',inset=char,motion='static reference inset; not a production frame')
 elif sid=='17A':s.update(kind='EDIT/EFFECT',motion='static approved title / end-card wording')
 reference=refs.get(sid,'')
 s['required_references']=reference
 s['characters']=' + '.join(x for x in ['Maya','Lumi','Scale','Old Woman'] if x in reference) or 'None / background villagers as described'
 s['environment']=reference or 'No environment reference specified'
 shots.append(s)
voices=[]
for line in (ROOT/'01_Development/11_TEMP_VOICE_SCRIPT.md').read_text().splitlines():
 if not line.startswith('| VO_'):continue
 c=[x.strip() for x in line.strip('|').split('|')];vid=c[0];start=sum(int(a)*b for a,b in zip(c[3].split('–')[0].split(':'),[60,1]));path=c[9].strip('`')
 with wave.open(str(ROOT/path)) as w:frames=w.getnframes();duration=frames/w.getframerate()
 if vid=='VO_NAR_007':start=77+99964/22050+.3
 voices.append(dict(id=vid,path=path,start=start,duration=duration,end=start+duration,frames=frames))
assert len(shots)==55 and len(voices)==32 and sum(s['duration_seconds'] for s in shots)==275
for a,b in zip(voices,voices[1:]):assert a['end']<=b['start'],(a,b)
config=dict(shots=shots,voices=voices,canonical=canonical,runtime=275,fps=24,width=1920,height=1080)
(OUT/'timeline_v0_1.json').write_text(json.dumps(config,indent=2,ensure_ascii=False))
print('Prepared 55 shot slots, 32 non-overlapping voice placements and source hashes.')
