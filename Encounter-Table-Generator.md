# POCKET FANTASY RPG - RANDOM ENCOUNTER TABLE GENERATOR
## Complete Procedural Event System

**Type:** Game Data - Encounter Generation  
**Status:** Production Ready - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Generate dynamic encounters based on location, time, caravan type, and hazard level

---

## ENCOUNTER GENERATION FRAMEWORK

### Probability Model

```
BASE_ENCOUNTER_CHANCE = Location_hazard_zone × caravan_visibility × time_modifier

LOCATION_HAZARD_ZONES:
- VERY_LOW (Eldridge, Kilhel, Crossroads): 1% base
- LOW (Rest stops, shrines, settlements): 5% base
- MEDIUM (Open roads, wilderness): 15% base
- HIGH (Goblin territory, unpatrolled areas): 35% base
- CRITICAL (Deep father zones, war areas): 65% base

CARAVAN_VISIBILITY:
- Military convoy: 0.8× (visible, known, avoided by some)
- Merchant caravan: 1.0× (normal visibility)
- Settler caravan: 1.2× (slow, obvious target)
- Courier: 0.5× (fast, low profile)
- Adventuring party: 0.9× (armed, intimidating)

TIME_MODIFIERS:
- Night travel: 2.0× (encounters more frequent)
- Dawn/Dusk: 1.5× (transition periods risky)
- Daytime: 1.0× (normal)
- Midday: 0.8× (peak visibility, fewer surprises)

EXAMPLE:
Merchant caravan on Major Road at night:
= 5% × 1.0 × 2.0 = 10% encounter chance per checkpoint
Every 0.5 miles = 4-5 checks per journey = 40-50% total encounter probability
```

---

## ENCOUNTER TYPE TABLES

### Tier 1: Friendly Encounters (0-20% roll)

#### EN_001: "Fellow Merchants" (Merchant Caravans Only)
```
TRIGGER: Road encounters between merchant groups
PROBABILITY: 8% on major roads with merchant traffic
PARTIES_INVOLVED: 2 merchant caravans passing

SCENARIO_DETAILS:
- "You spot another caravan ahead on the road, moving in opposite direction"
- "The Westmarch Trading House - rival but professional merchant group"
- Size: 5-7 people, 2-3 wagons, 3-4 animals
- Leader: "Merchant Corvin" (human, age 50, competitive but fair)

INTERACTION_OPTIONS:

OPTION_A: "Friendly negotiation"
- Share market information (+0.05 morale both groups)
- Learn about: Prices in distant markets, road conditions, rumors
- Result: +5 gp value intel, relationship: +0.10
- Time: 15 minutes

OPTION_B: "Competitive trading"
- Discussion about who has better goods/prices
- No actual trade (different destinations), just information
- Result: +3 gp value intel, relationship: +0.05
- Mood: Professional rivalry established

OPTION_C: "Ignore/Avoid"
- Polite wave but no stopping
- Result: No intel gained, neutral relationship (-0.02)
- Time: 5 minutes

OPTION_D: "Aggressive undercut attempt"
- Try to buy their cargo cheap to resell
- Reaction: Corvin offended, refuses (-0.10 relationship)
- Result: Failed negotiation, reputation damage
- Consequence: Westmarch will warn other merchants

MORALE_EFFECTS:
- Successful negotiation: +0.02 morale (trading culture)
- Competitive exchange: No change (normal business)
- Conflict: -0.05 morale (tension)

RELATIONSHIP_TRACKING:
- Eldridge ↔ Westmarch: Initial relationship established (0.50)
- Future encounters: Relationship carries forward
- Economic impact: +50-100 gp shared market intelligence value
```

#### EN_002: "Rest Stop Hospitality" (All Caravans)
```
TRIGGER: Arrival at rest stop with other travelers present
PROBABILITY: 35% at any given rest stop during season
PARTIES_INVOLVED: Other travelers (merchants, families, military, adventurers)

SCENARIO_TYPES:

TYPE_A: "Helpful Locals"
- Rest stop keeper offers: Hot meal, free water, warnings about road conditions
- Reward: -10 gp rest costs, +0.03 morale
- Intel: Learn about threats ahead, opportunities
- Relationship: Rest stop reputation +0.05

TYPE_B: "Weary Travelers"
- Group of refugees, homeless, or displaced people
- Situation: Need food/water, poor condition
- Choice 1: "Offer help" (+5 gp charity, +0.08 morale for caring crew)
- Choice 2: "Ignore" (no cost, -0.03 morale for heartless crew)
- Choice 3: "Give supplies generously" (+20 gp cost, +0.12 morale, future favor possible)

TYPE_C: "Military Recruitment"
- Militia captain present at rest stop
- Pitch: "We need strong people for expedition, good pay"
- Your options:
  - Accept recruitment: Lose 1-2 crew members, +100-200 gp payment
  - Decline: Relationship neutral, no consequence
  - Negotiate: Temporary hiring arrangement

TYPE_D: "Blessing Ceremony"
- Religious figure (Brother Aldwin at Shrine, Priestess at shrine)
- Offer: Blessing for journey safety
- Cost: 5-20 gp optional donation
- Effect: +0.05 morale, potential +5% hazard zone reduction for 1-2 days

MORALE_EFFECTS:
- Positive interaction: +0.05 morale each
- Generosity: +0.10 morale
- Conflict/rudeness: -0.08 morale

ECONOMIC_TRACKING:
- Charity given: Track cumulative for potential future rewards
- Reputation: Word spreads at rest stops (Eldridge circle grows reputation)
```

#### EN_003: "Trading Opportunity" (Merchant Caravans)
```
TRIGGER: Encounter with traveling merchant or tradespeople
PROBABILITY: 15% on merchant routes
PARTIES_INVOLVED: 1-3 traveling merchants/peddlers/craftspeople

SCENARIO_TYPES:

TYPE_A: "Jeweler/Craftsperson"
- Traveling artisan with high-value goods
- Goods offered: Jewelry, crafted items, specialty goods
- Prices: 20-40% premium over market (because of convenience)
- Choice 1: "Buy select items" (+100-300 gp cargo value)
- Choice 2: "Negotiate bulk purchase" (-15% from asking price)
- Choice 3: "Offer to transport goods" (partnership opportunity)

TYPE_B: "Herb Gatherer"
- Traveling healer/herbalist with rare medicinal plants
- Goods offered: Rare herbs, poultices, remedies
- Purchase: +50 gp value, +0.05 morale (crew feels safer with medicines)
- Benefit: Medic (if caravan has one) gains +0.05 morale

TYPE_C: "Information Broker"
- Traveling bard/messenger with rumors and intel
- Sells: Information about roads, threats, opportunities
- Cost: 5-15 gp for specific intel
- Reward: +5-50 gp value intel (shortcut, hidden danger warning, opportunity)

TYPE_D: "Desperate Seller"
- Person selling items far below market value (in trouble)
- Situation: Debt, fleeing, emergency
- Items offered: 50-75% of normal value
- Risk: May be stolen goods, buyer beware
- Opportunity: +100-300 gp value for 50-75 gp investment
- Consequence: 15% chance of legal trouble later

MORALE_EFFECTS:
- Good trade: +0.02 morale
- Great deal: +0.04 morale
- Ethical purchase (helping person): +0.06 morale
- Suspicious deal: -0.03 morale (crew uncomfortable)

ECONOMIC_TRACKING:
- All trades logged
- Profit/loss calculated
- Reputation for fair dealing spreads
```

---

### Tier 2: Neutral Encounters (20-40% roll)

#### EN_004: "Weather Event"
```
TRIGGER: Random weather change during travel
PROBABILITY: 20% per day of travel (spring/autumn higher)
PARTIES_INVOLVED: Natural event, no antagonists

SCENARIO_TYPES:

TYPE_A: "Spring Mudslide"
- Spring rain causes mud on road, visibility reduced
- Duration: 2-4 hours
- Speed penalty: -0.40× (mud slows movement significantly)
- Damage risk: 10% chance of vehicle wheel damage (-1 vehicle condition)
- Crew morale: -0.03 (frustration, delay)
- Recommended: Rest stop until mud dries, or take safer alternate route
- Benefit: Muddy road = fewer bandits (they avoid too)

TYPE_B: "Sudden Storm"
- Heavy rain, possible lightning
- Duration: 3-6 hours
- Movement: HALT (too dangerous to travel)
- Must take shelter (rest stop, camp, or roadside shelter)
- Morale: -0.05 (nervousness, discomfort)
- Benefit: +0.03 morale recovery once sheltered (relief)
- Economic: -5 to 10 gp (supplies water-damaged)

TYPE_C: "Unusual Heat/Cold"
- Extreme temperature swing
- Speed penalty: -0.20× (animals tired from temperature)
- Supply usage: +1 day water consumption
- Animal fatigue: +0.10 (stress from temperature)
- Morale: -0.02 (discomfort)
- Duration: Until temperature normalizes (6-12 hours)
- Remedy: Extra water, slower pace, more rest stops

TYPE_D: "Dust Storm/Wind Event"
- High winds reduce visibility, dust clouds
- Duration: 1-3 hours
- Visibility: Reduced to 20 feet (navigation challenge)
- Speed penalty: -0.30× (dangerous to travel fast)
- Morale: -0.02 (anxiety)
- Opportunity: Wind can cover group's approach (stealth +0.10 if hiding)

MORALE_EFFECTS:
- Weather survived: +0.03 morale (relief)
- Animal safety: +0.05 morale (if crew values animals)
- Supplies damaged: -0.05 morale (resource loss)

ECONOMIC_TRACKING:
- Supply damage: Track water/food spoilage
- Vehicle damage: Minor wear increased
- Time loss: Delays in schedule
- Wildlife opportunity: Sometimes animals forced onto roads
```

#### EN_005: "Animal Encounter" (Non-Hostile)
```
TRIGGER: Crossing wildlife territory
PROBABILITY: 8% in wilderness areas, 2% on roads
PARTIES_INVOLVED: Wild animals (not magical, not organized)

SCENARIO_TYPES:

TYPE_A: "Herd Passage"
- Deer herd, wild horses, other herbivores crossing road
- Size: 30-50 animals
- Duration: 15-30 minutes passing
- Hazard: Animals unpredictable, low risk of collision
- Opportunity: Scout can identify animal type (+0.02 morale for knowledge)
- Benefit: None, just observation
- Crew morale: +0.01 (peaceful wildlife viewing)

TYPE_B: "Predator Pack (Wolves/Wild Dogs)"
- Pack of wolves following at distance
- Size: 5-12 wolves
- Threat level: Low if caravan has guards
- Duration: 2-4 hours (pack follows, doesn't attack)
- Morale: -0.05 (nervousness from stalking)
- Guard readiness: +0.02 (purpose, vigilance)
- Resolution: Pack loses interest as caravan enters populated area
- Alternates: Can drive them off with noise/fire (+0.05 guard morale)

TYPE_C: "Bear Encounter"
- Single bear or mother with cubs
- Threat: Low if caravan stays calm
- Duration: 15-30 minutes until bear moves away
- Morale: -0.08 (bear is scary)
- Guard activation: Full alert, everyone ready
- Recommendation: Slow movement, no sudden noise
- Bad outcome (5% chance): Bear charges caravan (-0.15 morale, combat)
- Good outcome: Bear ignores caravan (+0.02 relief)

TYPE_D: "Birds of Prey"
- Hawks, eagles, or other large birds of prey
- Threat: Very low, no danger to caravan
- Duration: 5-10 minutes of sighting
- Morale: +0.02 (majestic sight)
- Scout interest: Scout fascinated (+0.03 morale)
- Non-event, mostly flavor

MORALE_EFFECTS:
- Peaceful wildlife: +0.02 morale
- Threatening encounter: -0.05 morale
- Successful defense: +0.08 morale (crew proved capable)
- Animal harm: -0.15 morale (guilt, if crew kills animal)

ECONOMIC_TRACKING:
- No direct cost usually
- Optional: Can hunt animal for meat (+30 gp food value)
- Consequence: Disturbing natural order (-0.03 morale for nature-lovers)
```

#### EN_006: "Stranded Traveler"
```
TRIGGER: Individual in distress encountered on road
PROBABILITY: 5% at encounters
PARTIES_INVOLVED: 1-3 people in trouble

SCENARIO_TYPES:

TYPE_A: "Injured Traveler"
- Person with injury (broken leg, illness, wound)
- Situation: Can't walk, stranded on road
- Need: Medical help, transport to settlement
- Choice 1: "Help immediately" (-30 min time, +0.08 morale for helping)
- Choice 2: "Transport to nearest settlement" (-1 hour, +0.10 morale, +0.05 reputation)
- Choice 3: "Ignore" (-0.12 morale, crew disturbed by callousness)
- Reward: Traveler may be noble/wealthy (future favor, +50 gp reward)
- Risk: Traveler could be ambush setup (5% chance bandit trap)

TYPE_B: "Lost Child"
- Young child (5-10 years old) alone on road
- Situation: Separated from family, scared
- Need: Help finding family or reaching safety
- Choice 1: "Help search for family" (+45 min time, +0.15 morale)
- Choice 2: "Take to nearest settlement" (+30 min, +0.08 morale, +0.08 reputation)
- Choice 3: "Ignore" (-0.20 morale, severe moral penalty for crew)
- Reward: Family might offer reward (50-200 gp if found together)
- Emotional: Crew bonding over helping (relationships +0.08)

TYPE_C: "Fleeing Person"
- Person running from something (guards, danger, pursuit)
- Situation: Desperate, asking for help
- Need: Transport/hiding
- Choice 1: "Ignore and continue" (-0.03 morale, neutral)
- Choice 2: "Ask what they're fleeing" (+0.05 morale, information gained)
- Choice 3: "Offer help" (+0.08 morale, +0.05 reputation, but +risk)
- Risk: Could be criminal (25% chance of legal trouble later)
- Benefit: Could be refugee with skills (valuable person added)

TYPE_D: "Robbery Victim"
- Person who was robbed, injured, stranded
- Situation: Lost all possessions, desperate
- Need: Help, supplies, emotional support
- Choice 1: "Offer supplies" (-5 gp cost, +0.08 morale)
- Choice 2: "Offer transport + supplies" (-10 gp, +0.12 morale, +0.05 reputation)
- Choice 3: "Offer revenge help" ("Help us catch the robbers", +0.10 morale, future quest hook)
- Choice 4: "Ignore" (-0.10 morale)
- Reward: Victim can provide intel on bandits/dangers

MORALE_EFFECTS:
- Helping: +0.08 to +0.15 morale (depends on help level)
- Ignoring: -0.10 to -0.20 morale (crew morality drop)
- Successful help: +0.10 morale (satisfaction)

REPUTATION_TRACKING:
- Help offered: +0.05 reputation at settlements
- Ignore: -0.03 reputation (word spreads)
- Exceptional help: +0.10 reputation (hero status)

FUTURE_CONSEQUENCES:
- Helped person: Possible return favor (future)
- Ignored person: Possible future resentment
- Helped criminal: Possible legal complication
```

---

### Tier 3: Dangerous Encounters (40-60% roll)

#### EN_007: "Bandit Ambush"
```
TRIGGER: Hazard zone check fail on dangerous roads
PROBABILITY: 2% (very low road) to 35% (high hazard zone)
PARTIES_INVOLVED: 4-8 bandits, organized or desperate

BANDIT_TYPES:

TYPE_A: "Highway Bandits" (Professional)
- Leader: "Ravus the Scarred" (human, age 38, scarred face, intimidating)
- Size: 6-8 bandits (experienced fighters)
- Tactic: Coordinated ambush, professionally organized
- Demand: "Your valuables or your lives"
- Cargo target: Merchant caravans (known for wealth)
- Combat difficulty: HARD (disciplined fighters)

INTERACTION_OPTIONS:

OPTION_1: "Negotiate and pay ransom"
- Cost: 10-30% of current cargo value (negotiation-dependent)
- Result: Safe passage, no combat
- Morale: -0.08 (humiliating, but alive)
- Consequence: Word spreads, route becomes "known bandit area"

OPTION_2: "Fight"
- Combat engagement (if caravan combat-capable)
- Difficulty: Hard (experienced bandits)
- Possible outcomes:
  - Victory: +0.15 morale (proved courage), +2d100 gp loot, +0.05 reputation
  - Defeat: -0.20 morale (trauma), cargo loss, possible death
  - Pyrrhic victory: Win but casualties (-0.10 morale, +deaths)

OPTION_3: "Surrender valuable cargo"
- Accept loss to save lives
- Cost: -100 to -500 gp (cargo loss)
- Morale: -0.12 (defeated feeling)
- Benefit: No deaths, intact caravan
- Consequence: Failed trade cycle (profit loss this route)

OPTION_4: "Use deception"
- Trick bandits (sleight of hand, hidden cargo, false distraction)
- Difficulty: Moderate (need crew abilities)
- Success: +0.10 morale (outsmarted enemies), keep cargo
- Failure: Bandits furious, combat harder (-0.05 to combat rolls)

TYPE_B: "Desperate Starving Bandits"
- Leader: "Grix" (ragged, hungry, dangerous)
- Size: 4-6 bandits (poorly armed, hungry, dangerous)
- Tactic: Desperate, unpredictable, brutal
- Demand: Any food/supplies
- Cargo target: Food supplies primarily
- Combat difficulty: MODERATE (unpredictable but less skilled)

INTERACTION_OPTIONS:

OPTION_1: "Offer food/supplies"
- Cost: -20 gp in supplies (negotiated)
- Result: Grateful bandits depart peacefully
- Morale: +0.08 (mercy shown)
- Benefit: +0.05 reputation (merciful), possible future ally

OPTION_2: "Negotiate: employ them"
- Offer: Join caravan as guards (temp position)
- Cost: -10 gp per day wages
- Benefit: +2-3 combat strength for 3-5 days
- Risk: Untrustworthy, may steal/cause trouble (+0.05% betrayal chance)

OPTION_3: "Fight"
- Combat engagement
- Difficulty: Moderate (less skilled but hungry/determined)
- Victory: +0.12 morale, +loot, +reputation
- Defeat: -0.18 morale (defeated by lesser enemy)

MORALE_EFFECTS:
- Combat victory: +0.12 to +0.15 morale
- Negotiated escape: -0.05 to -0.08 morale
- Peaceful resolution: +0.05 morale
- Combat defeat: -0.20+ morale (trauma, injury)
- Crew casualties: -0.25 morale (grief)

ECONOMIC_TRACKING:
- Cargo loss: Immediate profit reduction
- Medical costs: +20 gp if injuries
- Reputation: Changes based on encounter outcome
- Future safety: Cleared bandit group reduces future threat
```

#### EN_008: "Goblin Scout Encounter"
```
TRIGGER: Travel through goblin territory or high-alert zones
PROBABILITY: 5% (normal) to 35% (goblin zone)
PARTIES_INVOLVED: 3-6 goblin scouts or patrol

SCENARIO_CONTEXT:
- Deep Father activity increased (main storyline element)
- Goblins scouting, not necessarily attacking immediately
- Can escalate to combat or be avoided

GOBLIN_TYPES:

TYPE_A: "Scout Patrol"
- Size: 3-4 goblins on reconnaissance
- Leader: "Squik" (medium goblin, sharp-eyed)
- Objective: Gather intelligence, not attack
- Initial: Spot caravan and observe from distance

INTERACTION_OPTIONS:

OPTION_1: "Avoid engagement"
- Attempt to move past/around without combat
- Difficulty: Medium (sneaking check)
- Success: Goblins don't attack, but report sighting
- Failure: Combat engagement
- Result: No capture, goblins report to larger group

OPTION_2: "Engage in combat"
- Combat engagement with scout patrol
- Difficulty: Easy to Moderate (small group)
- Victory: +0.10 morale, eliminate threat, possible loot
- Defeat: -0.18 morale, possible capture
- Consequence: Goblins escalate response (larger group follows)

OPTION_3: "Attempt negotiation" (very risky)
- Risky diplomatic approach
- Difficulty: Hard (species distrust, communication barrier)
- Success (rare): Learn goblin intelligence, possible truce
- Failure: Combat triggered, goblins offended
- Consequence: Can't be attempted twice

OPTION_4: "Buy passage"
- Offer trade goods for safe passage
- Cost: -20 to -50 gp in trade goods
- Result: Goblins depart peacefully, no combat
- Morale: -0.02 (paying enemy)
- Benefit: Safe passage, time saved vs. combat
- Note: Only works once per group

TYPE_B: "Larger War Party"
- Size: 6-8 goblins + possible larger creature
- Leader: "Grok the Crusher" (large, aggressive)
- Objective: Capture/raid caravan
- Initial: More aggressive approach

INTERACTION_OPTIONS:

OPTION_1: "Fight"
- Combat engagement (caravan must be combat-capable)
- Difficulty: Hard (experienced war party)
- Victory: +0.15 morale, significant loot, +0.08 reputation
- Defeat: -0.25 morale, significant casualties, cargo loss
- Capture: Character captured, rescue quest required

OPTION_2: "Flee/Evade"
- Attempt to escape engagement
- Difficulty: Hard (war party fast, organized)
- Success: Escape via alternate route or hidden camp
- Failure: Combat forced anyway
- Consequence: Lose some cargo attempting escape (thrown to lighten load)

OPTION_3: "Fortify and defend"
- Set up defensive position at rest stop
- Hold until help arrives (militia, other caravans, adventurers)
- Difficulty: Hard (siege-like situation)
- Cost: -12 hours time minimum
- Benefit: Militia/Crimson Blades can arrive to help

MORALE_EFFECTS:
- Combat victory: +0.12 to +0.18 morale
- Combat defeat: -0.20 to -0.25 morale
- Evasion: -0.05 morale (close call anxiety)
- Successful defense: +0.15 morale (proved capability)

RELATIONSHIP_TRACKING:
- Military appreciation: Militia +0.10 relationship (helped clear threat)
- Adventurer hire: +opportunity to hire Crimson Blades
- Settlement gratitude: +0.08 reputation (protected region)

FUTURE_CONSEQUENCES:
- War party eliminated: Future goblin encounters easier (word spreads)
- War party escaped: Future encounters harder (warned others)
- Deep Father involvement: Investigation hook for plot development
```

---

### Tier 4: Critical Encounters (60%+ roll - Story Moments)

#### EN_009: "NPC Caravan Encounter"
```
TRIGGER: Specific scheduled encounters between NPCs in system
PROBABILITY: 90% (scheduled events, not random)
PARTIES_INVOLVED: Another full caravan or party from NPC list

ENCOUNTER_A: "Eldridge meets Crimson Blades"
- Setting: Crossroads caravanserai
- Situation: Crimson Blades between contracts, available for hire
- Interaction: Military Aldwin approaches about escort
- Dialogue: "We're heading to Kilhel. Bandits reported on roads. Interested?"
- Options:
  - Hire: 10 gp per day per mercenary (60 gp for party) + combat assist
  - Negotiate: 8 gp per day (5% discount, improves relationship)
  - Decline: No consequence, just continue
  - Negotiate + future contract: Build relationship for next trade run

ECONOMIC_IMPACT:
- Hire: -60 gp direct cost (for 3-day journey)
- Benefit: +0.05 caravan morale, +safety to route, +probability cargo protection
- Future: Relationship established, easier hire next time

ENCOUNTER_B: "Settlers arrive at Tiny Stump"
- Setting: Tiny Stump settlement
- Situation: Settlers arrival, new community forming
- Interaction: Existing settlers + new settlers integration
- Conflict potential: Land disputes, resource competition
- Opportunity: Trade partnerships, market growth

POLITICAL_IMPACT:
- Successful integration: +0.08 settlement reputation
- Conflict resolution: Major opportunity for player involvement
- Economic: New market opens for merchants (+200-500 gp trading opportunity)

ENCOUNTER_C: "Swift Courier meets merchant caravan"
- Setting: En route between settlements
- Situation: Courier provides mail delivery service to merchant group
- Interaction: Kael/Isla offers expedited letter service
- Cost: 2-5 gp per item, fast delivery in 1-2 days
- Benefit: Communication network, business efficiency

RELATIONSHIP_TRACKING:
- Successful transaction: +0.05 reputation for both groups
- Reliable service: Repeated customers, partnership develops

ENCOUNTER_D: "Military patrol meets merchant caravan"
- Setting: Random road encounter
- Situation: Militia checkpoint, caravan inspection
- Interaction: Standard protocol or potential problem
- Options:
  - Cooperative: +0.02 relationship, 15 min delay
  - Suspicious: -0.05 relationship, 30 min inspection, possible cargo questions
  - Friendly: +0.05 relationship, valuable intel exchange

MORALE_EFFECTS:
- Positive encountering: +0.05 to +0.10 morale
- Negative encountering: -0.05 to -0.10 morale
- Neutral professional: No change
```

---

## RANDOM ENCOUNTER RESOLUTION PROCEDURE

### Step-by-Step Generation Process

```
PROCEDURE: Generate Encounter for Caravan

STEP_1: Determine Encounter Frequency
- Roll d100 for encounter check
- Compare against base probability (location + caravan + time)
- If roll < threshold: Generate encounter
- If roll >= threshold: No encounter, continue travel

EXAMPLE:
- Location: Major Road (LOW hazard = 5% base)
- Caravan: Merchant (1.0× visibility)
- Time: Daylight (1.0× modifier)
- Base probability: 5% × 1.0 × 1.0 = 5%
- Roll: 47 (vs 5% threshold)
- Result: NO encounter

STEP_2: If Encounter Triggered, Determine Type
- Roll d100 again to determine encounter category
- 1-20: Friendly (Tier 1)
- 21-40: Neutral (Tier 2)
- 41-60: Dangerous (Tier 3)
- 61-100: Critical/Story (Tier 4)

STEP_3: Roll Specific Encounter Within Category
- Merchant Caravan on Major Road during day:
  - Friendly roll: "Fellow Merchants" (most likely)
  - Neutral roll: "Weather Event" or "Animal Encounter"
  - Dangerous roll: "Bandit Ambush" (low probability but possible)
  - Critical roll: "Caravan Crossing"

STEP_4: Generate Encounter Details
- NPC names: Generate from available NPC list or create new
- Situation specifics: Based on caravan composition, location
- Time: Generate encounter timing within travel window
- Scale: Number of NPCs/enemies, cargo value at stake

STEP_5: Present to Players/Game Master
- Describe encounter situation
- List available options
- Allow player choice
- Generate consequences based on choice
- Update caravan state, morale, relationships, economy

STEP_6: Log Encounter
- Record in caravan's event history
- Update affected NPCs' relationship tracking
- Track economic impact (costs, gains, losses)
- Note reputation changes (visible to other groups)
```

---

## ENCOUNTER CONSEQUENCE MATRIX

### Outcome Effects on Caravan

```
DECISION_IMPACT_FRAMEWORK:

When player makes choice in encounter:
1. Immediate effect: Morale, resources, time
2. NPC relationship effect: Affected NPCs' perception changes
3. Economic effect: Cargo, money, supplies
4. Reputation effect: Visible to other caravans/settlements
5. Future encounter effect: Changes future encounter probability
6. Plot development: Moves storylines forward

EXAMPLE - Bandit Ambush Resolution:

CHOICE: "Fight the bandits"
├─ Immediate: Combat resolution
│  ├─ Victory: +0.15 morale, crew feels proud
│  ├─ Defeat: -0.25 morale, trauma
│  └─ Casualties: -0.30 morale per death, relationships affected
├─ NPC effect:
│  ├─ Guards: +0.15 morale (purpose validated)
│  ├─ Merchants: -0.08 morale (stress, cargo at risk)
│  ├─ Support staff: -0.10 morale (fear)
│  └─ Heart-type NPCs: +0.10 morale if victory (protection successful)
├─ Economic:
│  ├─ Loot gained: +100-500 gp (bandit equipment)
│  ├─ Casualties healing: +20-50 gp medical supplies used
│  ├─ Delayed schedule: -0.5 day journey time
│  └─ Damaged goods: -5% cargo value (combat spillage)
├─ Reputation:
│  ├─ Among bandits: +0.15 reputation (feared/respected)
│  ├─ Among settlements: +0.10 reputation (cleared threat)
│  ├─ Among merchants: +0.08 reputation (brave)
│  └─ Among militia: +0.12 reputation (helped security)
├─ Future encounters:
│  ├─ Bandit groups: -encounter probability (cleared out)
│  ├─ Other caravans: +0.05 reputation (story spreads)
│  └─ New opportunities: Mercenary contract offers, security work
└─ Plot development:
   └─ Deep Father connection: If goblins involved, escalates main plot
```

---

**RANDOM ENCOUNTER SYSTEM COMPLETE**

This framework provides:
✅ Probabilistic encounter generation
✅ Location/caravan/time-based scaling
✅ 20+ unique encounter types
✅ Multiple resolution options per encounter
✅ Comprehensive consequence tracking
✅ Integration with NPC relationships
✅ Economic impact modeling
✅ Reputation system
✅ Plot development hooks
✅ Replayability (different outcomes each time)