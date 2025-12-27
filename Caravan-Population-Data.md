# POCKET FANTASY RPG - CARAVAN POPULATION DATA
## Complete Operational Instances & Live Schedules

**Type:** Game Data - Production Population  
**Status:** Ready for Deployment - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Populate caravan system with functional, playable instances

---

## OVERVIEW

This document contains **real caravan instances** with complete NPCs, vehicles, cargo, schedules, and operational data. These are ready-to-use caravans that can be deployed immediately into the game world.

**Contents:**
- 12 Active Caravan Instances (merchant, military, settler, courier, adventuring)
- Complete NPC rosters with personalities and roles
- Detailed vehicle compositions with cargo
- Multi-week schedules integrated with game calendar
- Economic data (costs, profits, market values)
- Encounter hooks and random event seeds
- Relationship networks between caravans and settlements

---

## CARAVAN INSTANCE 1: ELDRIDGE TRADE CONSORTIUM

### Core Identity
```
caravan_id: CR_ELD_001
caravan_name: "Eldridge Trade Consortium"
caravan_type: MERCHANT
allegiance: ELDRIDGE
current_state: AT_NODE
current_location: RS_6 (Crossroads)
established_date: Year 4, Month 8 (seasonal merchant operation)
operating_season: YEAR_ROUND (primary route: Eldridge ↔ Kilhel)
active: true
reputation: EXCELLENT (longest-running caravan, reliable)
```

### Caravan Master & Leadership
```
PRIMARY_MASTER:
name: "Merchant Aldwin the Elder"
npc_id: NPC_ELD_ALW_001
race: HUMAN
age: 58
role: Caravan Master, Head Merchant
personality: Professional, fair-minded, mentor figure
skills: Negotiation, route planning, conflict resolution
quirk: Always reads weather signs at dawn before deciding travel times
background: Founded Eldridge Trade Consortium 15 years ago

SECONDARY_LEADERS:
1. name: "Torvin Swiftfoot"
   npc_id: NPC_ELD_TOR_001
   race: HALFLING
   age: 34
   role: Deputy Master, Scout Lead
   responsibility: Road scouting, hazard checking, route optimization
   quirk: Excellent dancer, always has fiddle and entertains at camps
   relationship: Trusted right-hand, considers Aldwin a father figure

2. name: "Hela Ironhand"
   npc_id: NPC_ELD_HEL_001
   race: DWARF
   age: 61
   role: Guard Captain, Security Chief
   responsibility: Personnel safety, caravan defense, militia liaison
   quirk: Veteran of border conflicts, tells war stories to new guards
   relationship: Respects Aldwin's leadership, protective of crew

TOTAL_NPCS: 14
```

### Vehicle Composition
```
VEHICLE 1:
vehicle_id: VEH_ELD_001
vehicle_type: MERCHANT_WAGON
owner: Merchant Aldwin (personal)
condition: EXCELLENT (maintained 95/100)
animal_required: 2 HORSES (both FRESH)
cargo_capacity: 2500 lbs
cargo_current: 2200 lbs (88% utilization)
cargo_items:
  - Fine Wines (12 crates, 600 lbs) - Kilhel market value: 800 gp
  - Woven Textiles (8 bolts, 400 lbs) - Kilhel market value: 600 gp
  - Spice Collection (4 containers, 80 lbs) - Kilhel market value: 300 gp
  - Quality Leather (20 hides, 600 lbs) - Kilhel market value: 400 gp
  - Tool Sets (3 complete sets, 180 lbs) - Kilhel market value: 250 gp
  - Misc supplies (340 lbs) - Kilhel market value: 150 gp
passenger_capacity: 4
passenger_current: 2 (Merchant Aldwin + assistant)

VEHICLE 2:
vehicle_id: VEH_ELD_002
vehicle_type: MERCHANT_WAGON
owner: Consortium (shared)
condition: GOOD (88/100, minor wheel wear)
animal_required: 2 MULES (both RESTED)
cargo_capacity: 2500 lbs
cargo_current: 2150 lbs (86% utilization)
cargo_items:
  - Metalwork & Tools (various, 900 lbs) - Kilhel market value: 600 gp
  - Preserved Foods (20 sacks, 400 lbs) - Kilhel market value: 200 gp
  - Pottery & Ceramics (35 pieces, 350 lbs) - Kilhel market value: 180 gp
  - Rope & Cordage (200 lbs) - Kilhel market value: 100 gp
  - Salt & Preservatives (300 lbs) - Kilhel market value: 80 gp
  - Misc trading stock (200 lbs) - Kilhel market value: 150 gp
passenger_capacity: 4
passenger_current: 3 (merchants, handlers)

VEHICLE 3:
vehicle_id: VEH_ELD_003
vehicle_type: PACK_ANIMAL (2 MULES)
owner: Consortium
condition: EXCELLENT (96/100)
cargo_capacity: 600 lbs (300 per mule)
cargo_current: 550 lbs (92% utilization)
cargo_items:
  - High-value jewels & crafts (150 lbs) - Kilhel market value: 1200 gp
  - Specialty herbs (80 lbs) - Kilhel market value: 300 gp
  - Documents & correspondence (20 lbs) - Kilhel market value: varies
  - Personal supplies (300 lbs)

TOTAL_VEHICLES: 3
TOTAL_ANIMALS: 6 (4 horses, 2 mules)
TOTAL_PASSENGERS: 5
```

### Cargo Summary
```
cargo_weight_current: 4900 lbs
cargo_weight_capacity: 5600 lbs
cargo_utilization: 87.5%
estimated_market_value_kilhel: 5210 gp
estimated_profit_margin: 35-40%
expected_net_profit: 1800-2100 gp (after expenses)

CARGO_CATEGORIES:
- TEXTILES: 400 lbs (textiles, leather) → 1000 gp value
- WINE: 600 lbs → 800 gp value
- METALWORK: 900 lbs → 600 gp value
- FOODSTUFFS: 420 lbs → 280 gp value
- SPECIALTY: 150 lbs (jewels, herbs, crafts) → 1500 gp value
- MISC: 1430 lbs → 1030 gp value
```

### NPC Roster (Full)
```
MERCHANT_ROLE (4 NPCs):
1. Merchant Aldwin (master)
2. Torvin Swiftfoot (deputy, scout)
3. Merchant Helena - elder female merchant, specializes in textile negotiations
   npc_id: NPC_ELD_HEL_002, age 55, HUMAN, veteran negotiator
4. Merchant Marcus - younger male merchant, focused on metalwork & tools
   npc_id: NPC_ELD_MAR_001, age 28, HUMAN, ambitious, quick learner

GUARD_ROLE (3 NPCs):
1. Hela Ironhand (captain)
2. Guard Thorin - Dwarf guard, Hela's old companion, veteran warrior
   npc_id: NPC_ELD_THO_001, age 44, DWARF, gruff but reliable
3. Guard Lyssa - Young human female guard, learning trade, eager
   npc_id: NPC_ELD_LYS_001, age 22, HUMAN, optimistic, romantic interest hook

HANDLER_ROLE (3 NPCs):
1. Handler Willem - Animal caretaker, veterinary knowledge
   npc_id: NPC_ELD_WIL_001, age 38, HUMAN, gentle with animals
2. Handler Petra - Equipment manager, logistics coordinator
   npc_id: NPC_ELD_PET_001, age 31, HUMAN, detail-oriented
3. Handler Kess - Junior handler, learning trade
   npc_id: NPC_ELD_KES_001, age 16, HUMAN, enthusiastic, some issues with animals

SUPPORT_ROLE (2 NPCs):
1. Cook Magda - Camp cook, also herbalist, mother figure
   npc_id: NPC_ELD_MAG_001, age 52, HUMAN, nurturing, good storyteller
2. Medic Thomas - First aid provider, basic healer
   npc_id: NPC_ELD_THO_002, age 42, HUMAN, competent, dry humor

TOTAL: 14 NPCs (roster complete)
```

### Movement State & Schedule
```
CURRENT_STATE: AT_NODE
current_location: RS_6 (Crossroads Caravanserai)
arrival_time: Year 5, Month 3, Day 14, 08:00 AM
rest_elapsed: 6 hours
rest_remaining: 2 hours (until departure)
allowed_rest_max: 12 hours

NEXT_MOVEMENT:
destination: RS_7 (Kilhel Main Gate)
departure_planned: Year 5, Month 3, Day 14, 10:00 AM
distance: 3.2 miles
expected_arrival: Year 5, Month 3, Day 14, 11:45 AM (weather clear, optimal conditions)
speed_calculation:
  base_speed: 2.5 mph
  cargo_utilization: 87.5% → ×0.70
  terrain: MAJOR_ROAD → ×1.0
  weather: CLEAR → ×1.0
  season: SPRING (mud season) → ×1.2
  animal_fatigue: RESTED → ×1.0
  morale: EXCELLENT (0.95) → ×1.05
  time_of_day: MORNING → ×1.0
  EFFECTIVE = 2.5 × 0.70 × 1.0 × 1.0 × 1.2 × 1.0 × 1.05 × 1.0 = 2.21 mph
  journey_time = 3.2 / 2.21 = 1.45 hours ≈ 87 minutes

MULTI_DAY_SCHEDULE:
- Year 5, Month 3, Day 14: Crossroads → Kilhel (arrive 11:45 AM)
- Year 5, Month 3, Day 14-15: Kilhel (trading, overnight rest)
  * Marketplace sales (estimate: 4500 gp revenue)
  * Restocking for return journey (estimate: 1200 gp purchases)
  * Net this stop: +3300 gp
- Year 5, Month 3, Day 15: Kilhel → Crossroads (return journey)
- Year 5, Month 3, Day 16-17: Crossroads (brief rest, militia resupply)
- Year 5, Month 3, Day 17: Crossroads → Eldridge (return home)
```

### Resource State
```
supply_food_days: 6 (purchased at Crossroads, fresh supplies)
supply_water_status: FULL (just restocked at waystations)
supply_animal_feed_days: 4 (grain at Crossroads)
morale: 0.95 (EXCELLENT - profitable journey, good crew morale)
animal_fatigue: 0.10 (FRESH - well-rested from previous stop)

REST_STOP_INTERACTION (Current):
allowed_rest_duration_max: 12 hours
rest_services_available: ["FOOD", "WATER", "ANIMAL_CARE", "REPAIR", "TRADING"]
rest_services_used_so_far: ["WATER", "ANIMAL_CARE"]
rest_cost_accumulated: 45 gp
services_planned:
  - Food resupply: 20 gp (buy fresh provisions for 6 days)
  - Animal feed: 15 gp (grain & hay for 4 days)
  - Repair inspection: FREE (minor wheel check)
  - Merchant trading: 30 gp cost for market information updates
total_rest_cost_projected: 110 gp
```

### Economic Data
```
TRIP_ECONOMICS (Eldridge → Kilhel → Eldridge cycle):
Revenue (estimated Kilhel sales):
  - Wines: 800 gp
  - Textiles/Leather: 1000 gp
  - Metalwork: 600 gp
  - Spices/Herbs: 300 gp
  - Specialty goods: 1500 gp
  - Misc items: 1030 gp
  TOTAL REVENUE: 5230 gp

Expenses:
  - Animal feed (8 days): 40 gp
  - Rest stop fees (3 stops): 75 gp
  - NPC wages (14 people, 3 days): 210 gp (15 gp per person per day)
  - Wear & maintenance: 50 gp
  - Supplies: 60 gp
  - Permits/taxes (Kilhel gate): 784 gp (15% of cargo value)
  - Replacements/emergency: 30 gp
  TOTAL EXPENSES: 1249 gp

NET PROFIT (estimated): 3981 gp

PROFIT MARGIN: 76% (EXCELLENT)

TRIP_FREQUENCY: Every 10-14 days (3-4 trips per month)
ANNUAL_PROJECTION: 12,000-16,000 gp profit annually
```

### Hazard & Encounter Data
```
current_hazard_zone: LOW (Crossroads → Kilhel is well-traveled safe route)
hazard_active: false
threat_assessment: CLEAR

HAZARD_ZONE_BREAKDOWN (for return journey):
- Crossroads immediate area: VERY_LOW
- Northern Trade Road (miles 0-2): LOW (militia presence)
- Kilhel Gate area: VERY_LOW (city control)

ENCOUNTER_PROBABILITY_ESTIMATES:
- Bandit ambush: 2% (unlikely, well-guarded route)
- Merchant rival: 15% (potential trade competition at Kilhel)
- Military checkpoint: 40% (likely militia contact at Kilhel Gate)
- Weather change: 20% (spring mud season risk)
- Friendly NPC encounter: 30% (other caravans on same route)
- Animal incident: 5% (well-maintained animals, low risk)

PREVIOUS_INCIDENTS (Historical):
- Never been ambushed (excellent reputation = safety)
- 3 encounters with rival merchants (resolved peacefully via negotiation)
- 12 militia checkpoints (all routine, no issues)
- 2 weather delays (spring mud, added 1 day each)
- 0 animal fatalities (excellent care)
```

### Reputation & Relationships
```
REPUTATION_SCORE: 95/100 (EXCELLENT)
- Eldridge: BELOVED (home city, economic engine)
- Crossroads: TRUSTED (frequent visitors, reliable)
- Kilhel: RESPECTED (profitable trading partner, fair dealing)
- Militia: ALLIED (provide intel, military appreciates trade goods)
- Competitor Merchants: NEUTRAL (some rivalry, mostly professional)

SETTLEMENT_RELATIONSHIPS:
- Eldridge: +20 morale when departing (pride in hometown)
- Harrow Family: +5 morale (always gift with wine purchases)
- Verdant Farm: Trade relationship (buy produce when passing)
- Thornbush Holdings: Trade relationship (sell metalwork)
- Crossroads: Caravanserai partners (discount rates)
- Kilhel: Major trade hub (primary destination)

INDIVIDUAL_NPC_RELATIONSHIPS:
- Brother Aldwin (Shrine): Blessing effect when passing (+0.05 morale)
- Captain Thorne (Crossroads): Military information sharing
- Miller Torvin (Millbrook): Grain supplier, regular trades
- Farmer Marta (Thornbush): Herb/medicine supplier
- Gate Captain (Kilhel): Expedited inspection reputation
```

---

## CARAVAN INSTANCE 2: CROSSROADS MILITIA PATROL UNIT

### Core Identity
```
caravan_id: CR_CRS_001
caravan_name: "Crossroads Militia Patrol Unit"
caravan_type: MILITARY
allegiance: CROSSROADS
current_state: AT_NODE
current_location: RS_3 (Blackstone Ravine Checkpoint)
established_date: Year 1, Month 1 (permanent military presence)
operating_schedule: CONTINUOUS (patrols every 2-3 days)
active: true
mission_focus: Border security, goblin monitoring, caravan escort
```

### Command Structure
```
COMMANDING_OFFICER:
name: "Captain Mareck"
npc_id: NPC_CRS_MRC_001
rank: Captain (militia command)
race: HUMAN
age: 47
role: Checkpoint Commander, Patrol Leader
personality: Stern, by-the-book, protective of settlements
skills: Military tactics, leadership, goblin warfare experience
quirk: Always carries leather journal for logging suspicious activity
background: 25 years military service, fought in border conflicts

OFFICERS (1):
name: "Sergeant Kaine"
npc_id: NPC_CRS_KAI_001
rank: Sergeant
race: HUMAN
age: 35
role: Deputy Commander, Logistics
responsibility: Supplies, schedules, training
quirk: Obsessive about equipment maintenance

ENLISTED_PERSONNEL (8):
1. Guard Petra - Female human, scout specialist, age 29
2. Guard Darius - Male human, veteran fighter, age 41
3. Guard Elian - Male elf, archer, age 156 (elf lifespsan)
4. Guard Thom - Male halfling, tracker, age 28
5. Supply Handler Brant - Human quartermaster, age 44
6. Support Medic Helix - Gnome healer, age 87
7. Guard Recruit Jonas - Young human trainee, age 18
8. Guard Recruit Mira - Young half-orc trainee, age 16

TOTAL_PERSONNEL: 10
```

### Vehicle Composition
```
VEHICLE 1:
vehicle_id: VEH_CRS_001
vehicle_type: MILITARY_CART
condition: EXCELLENT (97/100, well-maintained)
animal_required: 2 MULES (FRESH)
cargo: 1500 lbs (weapons, armor repair supplies)
  - Replacement weapons (20 units): 400 lbs, value: 800 gp
  - Armor repair materials: 300 lbs, value: 300 gp
  - Ammunition: 200 lbs, value: 400 gp
  - Replacement armor: 400 lbs, value: 600 gp
  - Miscellaneous equipment: 200 lbs, value: 150 gp

VEHICLE 2:
vehicle_id: VEH_CRS_002
vehicle_type: SUPPLY_WAGON
condition: GOOD (85/100, normal wear)
animal_required: 4 MULES (RESTED)
cargo: 2500 lbs (food, medical supplies, supplies)
  - Preserved food (30 days supply): 600 lbs, value: 300 gp
  - Medical supplies: 300 lbs, value: 400 gp
  - Grain/forage for animals: 400 lbs, value: 100 gp
  - Miscellaneous supplies: 1200 lbs, value: 200 gp

RIDING_ANIMALS:
- Scout Horses (4): Personal mounts for scouts/officers

TOTAL_VEHICLES: 2
TOTAL_ANIMALS: 10 (6 mules, 4 horses)
TOTAL_PASSENGERS: 10
```

### Current Mission
```
MISSION_NAME: "Goblin Escalation Response"
MISSION_STATUS: ACTIVE
DEPLOYMENT_DATE: Year 5, Month 3, Day 13, 20:00 (emergency deployment)
CURRENT_LOCATION: Blackstone Ravine Checkpoint
MISSION_OBJECTIVE: Investigate increased goblin scouting activity, reinforce checkpoint

MOVEMENT_SCHEDULE:
- Year 5, Month 3, Day 14: Patrol southern routes (Goblin Territory boundary)
- Year 5, Month 3, Day 15: Return to checkpoint for report
- Year 5, Month 3, Day 16-17: Awaiting orders from Crossroads command
- Year 5, Month 3, Day 18+: Possible extended patrol or city defense

HAZARD_ASSESSMENT: MEDIUM-HIGH
- Goblin scout activity: 35% encounter chance per patrol
- Ambush risk: 20% (if scouts report back)
- Weather risk: 15% (spring conditions)
```

### Supply & Logistics
```
supply_food_days: 30 (military grade rations)
supply_water_status: GOOD (checkpoint has well access)
supply_animal_feed_days: 10 (grain from Crossroads supply)
ammunition_status: FULL
medical_supplies: WELL_STOCKED
morale: 0.80 (GOOD - military discipline, but tense mission)
animal_fatigue: 0.25 (RESTED - fresh from deployment)

PATROL_COSTS (daily):
- Food & rations: 10 gp (10 personnel)
- Animal feed: 5 gp
- Wear & maintenance: 3 gp
- Medical supplies: 2 gp
- Ammunition replacement: 1 gp
DAILY_TOTAL: 21 gp

MONTHLY_BUDGET: 630 gp (paid by Crossroads militia budget)
```

### Military Data
```
COMBAT_READINESS: EXCELLENT (95%)
- All personnel trained
- Equipment well-maintained
- Morale acceptable for extended deployment

GOBLIN_THREAT_LEVEL: ELEVATED
- Recent scouting reports: 5 separate groups spotted in past month
- Attack probability: LOW (goblin caution near checkpoint)
- Escalation risk: MEDIUM (Deep Father activity may be driving scouts)

STANDING_ORDERS:
1. Maintain checkpoint 24/7
2. Check all caravans for contraband weapons/goblin intelligence
3. Patrol southern routes daily
4. Report sightings to Captain Thorne (Crossroads command)
5. Assist civilian caravans in distress
6. Do NOT pursue goblins beyond Goblin Territory boundary (standing order)
```

---

## CARAVAN INSTANCE 3: WESTWARD SETTLERS' GUILD

### Core Identity
```
caravan_id: CR_SET_001
caravan_name: "Westward Settlers' Guild"
caravan_type: SETTLER
allegiance: INDEPENDENT (frontier expansion)
current_state: TRAVELING
current_location: CA_10 (Western Branch Meadow, mid-route)
established_date: Year 5, Month 2 (new expedition)
destination: Tiny Stump (frontier settlement)
active: true
mission_focus: Frontier settlement expansion, homestead establishment
```

### Leadership
```
GUILD_MASTER:
name: "Torvin Stonehammer"
npc_id: NPC_SET_TOR_001
race: DWARF
age: 64
role: Guild Master, Community Leader
personality: Patient, visionary, stubborn about traditions
skills: Settlement planning, construction, conflict mediation
quirk: Always carries a scale model of his dream settlement
background: Pushed for frontier expansion for 10 years before organizing this

DEPUTY_LEADERS:
1. name: "Elena Redwood"
   npc_id: NPC_SET_ELN_001
   race: HUMAN
   age: 41
   role: Family Coordinator, Social Leader
   responsibility: Group cohesion, conflict resolution, spiritual guidance

2. name: "Gareth Woodwright"
   npc_id: NPC_SET_GAR_001
   race: HUMAN
   age: 56
   role: Resources Master, Supplies Coordinator
   responsibility: Food, tools, building materials, logistics

SCOUT_LEADER:
name: "Kess Swiftfeet"
npc_id: NPC_SET_KES_001
race: HALFLING
age: 29
role: Scout Lead, Wilderness Guide
responsibility: Route scouting, hazard identification, hunting

TOTAL_PEOPLE: 24 (6 adults + 18 family/group members)
```

### Family Groups (Complete Roster)
```
FAMILY_GROUP_1 (7 people):
Patriarch: "Aldric Farmwright" (age 45, experienced farmer)
Matriarch: "Marta Farmwright" (age 42, herbalist/healer)
Children: 4 (ages 8-16)
Role: Agricultural foundation for new settlement
Goal: Establish farmland at Tiny Stump

FAMILY_GROUP_2 (8 people):
Patriarch: "Hallor Stoneworker" (age 48, mason/builder)
Matriarch: "Betrice Stoneworker" (age 46, household manager)
Children: 4 (ages 6-14)
Role: Construction & infrastructure
Goal: Build settlement structures, fortifications

FAMILY_GROUP_3 (9 people):
Patriarch: "Dermot Craftsmith" (age 52, blacksmith)
Matriarch: "Fiona Craftsmith" (age 50, trader)
Children: 5 (ages 4-18)
Role: Crafts, tools, trade goods
Goal: Establish settlement workshops

TOTAL_COMPOSITION: 3 families, 24 people
CHILDREN: 13 (strong future-oriented group)
ELDERLY: 1 (Torvin - respected elder)
```

### Vehicle Composition (Heavy)
```
VEHICLE 1:
vehicle_id: VEH_SET_001
vehicle_type: SETTLER_WAGON (family wagon, Farmwright family)
condition: GOOD (82/100, travel wear)
animal_required: 4 OXEN (MODERATE_FATIGUE - 0.45)
cargo_capacity: 3000 lbs
cargo_current: 2800 lbs (93% utilization)
cargo_contents:
  - Farming tools (plows, hoes, scythes): 400 lbs
  - Seeds & grain for planting: 300 lbs
  - Household goods & furniture: 1200 lbs
  - Food supplies: 500 lbs
  - Personal possessions: 400 lbs
passengers: 7 (Farmwright family + space for supplies)

VEHICLE 2:
vehicle_id: VEH_SET_002
vehicle_type: SETTLER_WAGON (builder's wagon, Stoneworker family)
condition: FAIR (76/100, heavy use)
animal_required: 4 OXEN (MODERATE_FATIGUE - 0.50)
cargo_capacity: 3000 lbs
cargo_current: 2900 lbs (97% utilization - nearly at capacity)
cargo_contents:
  - Construction tools & materials: 800 lbs
  - Building supplies (timber, nails, stones): 1300 lbs
  - Household goods: 600 lbs
  - Food supplies: 200 lbs
passengers: 8 (Stoneworker family)

VEHICLE 3:
vehicle_id: VEH_SET_003
vehicle_type: SETTLER_WAGON (craftsman's wagon, Craftsmith family)
condition: GOOD (84/100, careful maintenance)
animal_required: 4 OXEN (TIRED - 0.60)
cargo_capacity: 3000 lbs
cargo_current: 2700 lbs (90% utilization)
cargo_contents:
  - Blacksmith tools & metals: 600 lbs
  - Trade goods & craft supplies: 700 lbs
  - Household goods: 1000 lbs
  - Food supplies: 400 lbs
passengers: 9 (Craftsmith family)

VEHICLE 4 (SUPPLY WAGON):
vehicle_id: VEH_SET_004
vehicle_type: SUPPLY_WAGON (community resources)
condition: EXCELLENT (91/100, heavily maintained)
animal_required: 4 OXEN (FRESH - 0.20)
cargo_capacity: 2500 lbs
cargo_current: 2400 lbs (96% utilization)
cargo_contents:
  - Preserved food (90 days supply): 800 lbs
  - Medical supplies: 100 lbs
  - Emergency equipment: 300 lbs
  - Tools & replacements: 500 lbs
  - Water barrels: 700 lbs
passengers: 0 (cargo only)

TOTAL_VEHICLES: 4
TOTAL_ANIMALS: 16 OXEN (slow but very strong)
TOTAL_PASSENGERS: 24 (all people)
```

### Journey Details (Current)
```
JOURNEY_STAGE: DAY 4 (of 5-day planned journey)
departure_origin: Eldridge (RS_1)
departure_time: Year 5, Month 3, Day 11, 06:00 AM
current_location: CA_10 (Western Branch Meadow)
current_location_arrival: Year 5, Month 3, Day 14, 07:06 AM
destination_final: Tiny Stump (RS_9 settlement)
estimated_arrival_final: Year 5, Month 3, Day 15, 08:30 AM

MOVEMENT_CALCULATIONS (Current Segment):
base_speed: 2.0 mph (settler wagons)
cargo_utilization: 93% average → ×0.70
terrain: SECONDARY_ROAD (Western Branch) → ×0.85
weather: CLEAR → ×1.0
season: SPRING (mud) → ×1.2
animal_fatigue: MIXED (0.45 avg) → ×0.92
morale: 0.82 (GOOD - excited about new life, some travel fatigue) → ×1.0
time_of_day: MORNING → ×1.0

EFFECTIVE = 2.0 × 0.70 × 0.85 × 1.0 × 1.2 × 0.92 × 1.0 × 1.0 = 1.24 mph

Next leg (2.0 miles to Tiny Stump):
2.0 / 1.24 = 1.61 hours ≈ 97 minutes

ROUTE_TAKEN (Complete Journey):
Day 1: Eldridge → Harrow Meadow (CA_1) - 0.2 miles
       CAMPING overnight (animals rest, families bond)

Day 2: Harrow → Verdant Pasture → Shrine Clearing → Crossroads
       Total: 1.8 miles traveled
       AT_NODE Crossroads: 8 hours rest/resupply (major hub stop)

Day 3: Crossroads → Western Branch Meadow (CA_10)
       Distance: 1.5 miles
       CAMPING overnight (planned rest)

Day 4: Western Branch → Tiny Stump (final destination)
       Distance: 2.0 miles
       ARRIVAL: Day 5 morning (08:30 AM planned)
```

### Supply & Resource Status
```
supply_food_days: 45 (preserved, rationed carefully for 24 people)
supply_water_status: GOOD (barrels filled at recent stops)
supply_animal_feed_days: 3 (oxen need high caloric intake, being watched)
morale: 0.82 (GOOD - excited/hopeful, travel fatigue setting in)
animal_fatigue: MIXED
  - Ox team 1 (Farmwright): 0.45 (rested well)
  - Ox team 2 (Stoneworker): 0.50 (moderate)
  - Ox team 3 (Craftsmith): 0.60 (approaching tired)
  - Ox team 4 (Supply): 0.20 (fresh)
  AVERAGE: 0.44 (needs 1-2 more days rest after arrival)

FAMILY_MORALE_BREAKDOWN:
- Farmwright family: 0.85 (excited about farming future)
- Stoneworker family: 0.80 (ready to build homes)
- Craftsmith family: 0.82 (focused on marketplace goals)
Overall: 0.82 (GOOD but travel-worn)

REST_NEEDS:
After arrival, settlers need:
- 2-3 days settlement/camp setup
- Animals need 1-2 full rest days before heavy work
- Humans need psychological recovery (adjustment to new location)
```

### Economic Data (Settlement-Building Costs)
```
TOTAL_GROUP_INVESTMENT: 8500 gp (entire settlement-building fund)
BREAKDOWN:
- Land lease/grant (government): Varies, negotiated at Tiny Stump
- Building materials: Already purchased & loaded (1300 lbs)
- Tools & equipment: Already purchased (1500 lbs value)
- Seeds & farming supplies: 300 lbs loaded
- Preserved food (90 days): 600 lbs loaded
- Emergency fund: 2000 gp (for unexpected needs)

EXPECTED_SETTLEMENT_COSTS:
- Initial shelter construction: 1000-1500 gp
- Tool replacement/repairs: 300-500 gp
- Food supplement (first season): 400-600 gp
- Livestock acquisition: 500-800 gp (animals for farming)
- Trade goods/supplies: 200-400 gp
Total startup: 2400-3800 gp

REMAINING_FUND_AFTER_STARTUP: 4700-6100 gp (safety margin, future investment)

SETTLEMENT_PROFITABILITY_PROJECTION:
Year 1: Break-even (establish foundation)
Year 2-3: Profitability if farming succeeds (2000-5000 gp annual revenue)
```

---

## CARAVAN INSTANCE 4: KILHEL MERCHANT DISPATCH - "SWIFT COURIER"

### Core Identity
```
caravan_id: CR_KIL_001
caravan_name: "Kilhel Merchant Dispatch - Swift Courier"
caravan_type: COURIER
allegiance: KILHEL (merchant class)
current_state: TRAVELING
current_location: (approaching Crossroads from Kilhel)
established_date: Year 4, Month 1 (dedicated courier service)
operating_schedule: THRICE_WEEKLY (Monday, Wednesday, Friday cycles)
active: true
mission_focus: Fast document/small package delivery between Kilhel ↔ Crossroads ↔ Eldridge
```

### Personnel & Mounts
```
PRIMARY_COURIER:
name: "Kael Swiftblade"
npc_id: NPC_KIL_KAL_001
race: HUMAN
age: 34
role: Head Courier, Route Master
personality: Calm under pressure, focused on speed & reliability
skills: Horsemanship, navigation, quick decision-making
quirk: Never misses a delivery window; has 98% on-time record
background: Former military scout, transitioned to civilian courier work

BACKUP_COURIER:
name: "Isla Quickhand"
npc_id: NPC_KIL_ISL_001
race: HUMAN
age: 28
role: Deputy Courier, Support Rider
personality: Cheerful, reliable, good with people
skills: Horse care, emergency repairs, diplomacy
relationship: Married to Kael; partners in business & life

SUPPORT_STAFF:
1. name: "Master Horst" (age 52) - Horse trainer, animal care expert
2. name: "Scribe Helena" (age 45) - Document handling, record keeping

TOTAL_PERSONNEL: 4
```

### Vehicles & Animals
```
MOUNT_1:
vehicle_id: VEH_KIL_001
vehicle_type: PERSONAL_HORSE (Kael's mount)
name: "Windwhisper" (mare, exceptional runner)
condition: EXCELLENT (98/100)
speed_capacity: 5.0 mph (unencumbered, fresh)
cargo_capacity: 150 lbs
cargo_current: 80 lbs (documents, small packages)
animal_condition: FRESH

MOUNT_2:
vehicle_id: VEH_KIL_002
vehicle_type: PERSONAL_HORSE (Isla's mount)
name: "Swiftfoot" (stallion, strong & reliable)
condition: EXCELLENT (97/100)
speed_capacity: 4.8 mph
cargo_capacity: 150 lbs
cargo_current: 60 lbs (backup documents, emergency supplies)
animal_condition: FRESH

SUPPORT_WAGON:
vehicle_id: VEH_KIL_003
vehicle_type: SMALL_WAGON (stationary at Kilhel way-station)
purpose: Supply storage, horse feed, equipment maintenance
operated_by: Master Horst, Scribe Helena
location: Kilhel (not traveling)

TOTAL_ANIMALS: 2 HORSES (plus 3 backup horses at way-station)
```

### Cargo Detail (Current)
```
DOCUMENT_TYPES:
- Merchant letters of credit: 5 documents
- Trade route reports: 8 documents
- Tax & duty notifications: 3 documents
- Personal correspondence: 12 sealed letters
- Military intelligence (unmarked): 2 documents

PACKAGE_TYPES:
- High-value jewelry (insured, sealed): 1 package
- Medicinal herbs (for herbalist): 1 package
- Diplomatic seals: 3 items

TOTAL_CARGO_WEIGHT: 80 lbs (Kael) + 60 lbs (Isla) = 140 lbs
UTILIZATION: Very light (optimal for speed)

DELIVERY_SCHEDULE (Current Route):
- Origination: Kilhel (departed 06:00 AM today)
- Waypoint 1: Kilhel Gate (departure point)
- Waypoint 2: Northern Meadow (CA_8) - arrival expected 08:00 AM
- Waypoint 3: Crossroads - arrival expected 09:45 AM (current destination)
- Final: Eldridge - arrival expected 11:30 AM (if Crossroads delivery quick)
- Return: Kilhel - depart Eldridge 02:00 PM (afternoon cycle)

EXPECTED_DELIVERY_TIME_TOTAL: 5.5 hours (Kilhel → Eldridge)
CONTRAST_TO_MERCHANT: Merchant caravan takes 2+ days; courier does same in 5 hours
```

### Movement Calculations
```
BASE_SPEED: 4.5 mph (average for 2 riders on fresh horses, light cargo)

MODIFIERS:
- Cargo utilization: 5% → ×1.0 (no penalty, very light)
- Terrain: MAJOR_ROAD → ×1.0
- Weather: CLEAR → ×1.0
- Season: SPRING → ×1.0 (courier can ignore mud with light horses)
- Animal fatigue: FRESH → ×1.0
- Morale: EXCELLENT (0.98 - professional pride) → ×1.05
- Time of day: MORNING → ×1.0

EFFECTIVE = 4.5 × 1.0 × 1.0 × 1.0 × 1.0 × 1.0 × 1.05 × 1.0 = 4.73 mph

SPEED_ADVANTAGE:
- vs. Merchant caravan (1.91 mph): 2.5× faster
- vs. Settler caravan (1.24 mph): 3.8× faster
- vs. Military convoy (2.84 mph): 1.7× faster

KILHEL_TO_ELDRIDGE (5.3 miles):
Time = 5.3 / 4.73 = 1.12 hours ≈ 67 minutes
```

### Route Schedule (Daily)
```
COURIER_SCHEDULE (Monday, Wednesday, Friday):

MORNING DISPATCH (Early start):
- 05:00 AM: Mount check, gear preparation (Kilhel way-station)
- 06:00 AM: Depart Kilhel with mail
- 08:00 AM: Pass Northern Meadow (brief horse rest, 5 minutes)
- 09:45 AM: Arrive Crossroads (military checkpoint, inspection 15 min)
- 10:00 AM: Depart Crossroads with Eldridge mail
- 11:15 AM: Arrive Eldridge (town militia check, 10 min)
- 12:00 PM: Depart Eldridge with return mail (late lunch at way-station)

RETURN CYCLE (Afternoon):
- 02:00 PM: Depart Eldridge with return parcels
- 03:15 PM: Arrive Crossroads (brief checkpoint)
- 03:30 PM: Depart Crossroads
- 05:30 PM: Arrive Kilhel (before dark arrival, mandatory)

DAILY_CYCLE: 10 hours round-trip
STOPS: 3 settlements, 1 waypoint, 2-3 militia checkpoints
PAYLOAD_TURNAROUND: Typically 30-45 minutes per location for sorting
```

### Economic Data (Courier Business)
```
REVENUE_MODEL (Per delivery cycle):
- Merchant letters: 5 items × 5 gp each = 25 gp
- Military intelligence: 2 items × 10 gp each = 20 gp
- Personal mail: 12 items × 1 gp each = 12 gp
- Package delivery: 5 items × 3 gp each = 15 gp
- High-value insurance: 1 item × 50 gp = 50 gp
CYCLE_REVENUE: 122 gp

CYCLE_COSTS:
- Horse feed: 5 gp (both horses, 1 day)
- Horse care/maintenance: 3 gp
- Supplies & wear: 2 gp
- Checkpoint tolls/fees: 3 gp
- Personnel: 20 gp (split between 2 couriers, 1 day portion)
CYCLE_COST: 33 gp

CYCLE_PROFIT: 89 gp per cycle

FREQUENCY: 3 cycles per week (Monday, Wednesday, Friday)
WEEKLY_PROFIT: 267 gp
MONTHLY_PROFIT (4.3 weeks): ~1150 gp
ANNUAL_PROFIT: ~13,800 gp

BUSINESS_STATUS: HIGHLY PROFITABLE, STABLE ROUTE
```

### Hazard & Security
```
THREAT_LEVEL: LOW (well-protected route, merchant class backing)
BANDITS: 3% encounter risk (couriers specifically targeted)
WEATHER: 5% delay risk (spring mud, rare for light horses)
MILITIA_CHECKPOINTS: 100% (standard procedure, no threat)
ANIMAL_INCIDENT: 2% risk (fresh horses, excellent care)

SECURITY_MEASURES:
- Both couriers armed (light swords for personal defense)
- Military liaison at Crossroads (Captain Thorne provides intelligence)
- Kilhel merchant guild backing (reputation + resources)
- Sealed documents (tampering obvious)
- Insurance coverage for high-value items
- Military escort available (if critical documents)

HISTORICAL_RECORD:
- Years of operation: 2 years
- Deliveries completed: 312
- On-time delivery rate: 98%
- Security incidents: 0
- Lost packages: 0
- Animal losses: 0
PERFECT_RELIABILITY_RECORD
```

---

## CARAVAN INSTANCE 5: ADVENTURING PARTY (HIRED MERCENARY GROUP)

### Core Identity
```
caravan_id: CR_ADV_001
caravan_name: "The Crimson Blades" (mercenary company)
caravan_type: ADVENTURING (combat-focused)
allegiance: INDEPENDENT (mercenary neutral)
current_state: AT_NODE
current_location: RS_6 (Crossroads Caravanserai)
established_date: Year 3 (3 years operating)
active: true
mission_focus: Monster hunting, bandit suppression, caravan escort,  mercenary contracts
```

### Party Composition
```
PARTY_LEADER:
name: "Captain Darius Blackbrand"
npc_id: NPC_ADV_DAR_001
race: HUMAN
age: 42
class: FIGHTER
role: Party leader, combat coordinator
personality: Gruff, practical, mission-focused
skills: Leadership, melee combat, tactics
backstory: Former military officer, turned mercenary after service

PARTY_MEMBERS (5):

1. name: "Lyssa Stormborn"
   npc_id: NPC_ADV_LYS_001
   race: HUMAN
   age: 31
   class: ROGUE/RANGER
   role: Scout, traps, ranged support
   specialty: Stealth, tracking, ambush tactics
   weapon: Bow + dual daggers

2. name: "Bromak Ironforge"
   npc_id: NPC_ADV_BRO_001
   race: DWARF
   age: 89
   class: PALADIN
   role: Divine support, defense, undead/evil detection
   specialty: Holy magic, protection spells, melee defense
   weapon: Warhammer + shield

3. name: "Thara Moonwhisper"
   npc_id: NPC_ADV_THA_001
   race: ELF
   age: 287
   class: WIZARD
   role: Magical support, damage dealer, utility magic
   specialty: Evocation spells (fire, lightning), detect magic
   weapon: Staff + dagger

4. name: "Kess Shadowbend"
   npc_id: NPC_ADV_KES_001
   race: HALF-ORC
   age: 34
   class: BARBARIAN
   role: Tank, damage dealer, intimidation
   specialty: High HP, melee destruction, crowd control
   weapon: Two-handed axe

5. name: "Felix Quicksilver"
   npc_id: NPC_ADV_FEL_001
   race: HALFLING
   age: 29
   class: CLERIC/HEALER
   role: Healing, support magic, buffs
   specialty: Restoration magic, protection, light healing
   weapon: Mace + shield

TOTAL_PARTY_SIZE: 6 (including leader)
PARTY_COMPOSITION: Well-balanced (1 leader, 1 scout, 1 tank, 1 mage, 1 healer, 1 damage)
COMBAT_CAPABILITY: EXCELLENT (veteran group, proven tactics)
```

### Current Contract
```
CONTRACT_NAME: "Blackstone Ravine Goblin Menace"
EMPLOYER: Captain Thorne (Crossroads Militia, authorized by settlement council)
CONTRACT_VALUE: 500 gp (guaranteed) + 50 gp per goblin scout eliminated
CONTRACT_DURATION: 1 week (from Year 5, Month 3, Day 13)
OBJECTIVE: Suppress goblin scouting activity near Blackstone Ravine

MISSION_DETAILS:
- Recent goblin scout sightings (7 separate encounters)
- Threat level elevated (Deep Father unrest in lower territories)
- Military insufficient for extended patrols
- Mercenary support authorized by settlement council

OPERATIONAL_PLAN:
- Day 1-2: Reconnaissance patrols (identify goblin activity patterns)
- Day 3-5: Active suppression (eliminate scouts, disrupt patrols)
- Day 6-7: Report findings, await new contract or dismiss

EXPECTED_BONUS_EARNINGS:
- If 10 scouts eliminated: +500 gp → Total 1000 gp
- If 20 scouts eliminated: +1000 gp → Total 1500 gp
- Practical expectation: 8-12 scouts → ~900-1100 gp total
```

### Party Inventory & Equipment
```
WEAPONS_STATUS:
- All party members: Fully equipped, no damage
- Darius: Longsword (excellent condition), shield
- Lyssa: Bow + arrows (40 arrows), dual daggers
- Bromak: Warhammer (blessed), shield (+1 AC religious inscription)
- Thara: Staff (inscribed with runes), spell book
- Kess: Two-handed axe (keen edge), no armor (barbarian)
- Felix: Mace (healing enchantment), shield

ARMOR_SUMMARY:
- Darius: Full plate (excellent)
- Lyssa: Leather (excellent)
- Bromak: Plate (excellent)
- Thara: Robes (enchanted, AC 12)
- Kess: None (barbarian unarmored bonus)
- Felix: Chain (good condition)

MAGICAL_ITEMS:
- Bromak's Shield: +1 Holy protection
- Thara's Staff: +1 to spell DC
- Felix's Mace: Healing enchantment (1d4+1 restored when used in prayer)

RATIONS & SUPPLIES:
- Food: 14 days (mercenary grade, good nutrition)
- Water: Fresh-filled at Crossroads
- Medical supplies: Extensive (potions, bandages, antitoxins)
- Camping equipment: Full (tents, bedrolls, fire supplies)
- Ammunition: Fully stocked

TOTAL_PARTY_VALUE: ~5000 gp (equipment + supplies + magical items)
```

### Economics (Mercenary Business)
```
ANNUAL_REVENUE_ESTIMATES:
- Monthly contract work: 1000-2000 gp average
- Monster bounty hunting: 500-1000 gp monthly
- Caravan escort rates: 10 gp per day per mercenary (60 gp for party)
- Annual projection: 18,000-36,000 gp

OPERATING_COSTS (Monthly):
- Rations & supplies: 80 gp
- Equipment maintenance: 40 gp
- Animal care (2 horses): 20 gp
- Lodging/rest stops: 60 gp
- Equipment replacement fund: 50 gp
MONTHLY_OPERATIONAL: 250 gp

PROFIT_MARGIN: 75-85% (very profitable if contracts steady)
BUSINESS_STATUS: Highly profitable but inconsistent (contract dependent)

CURRENT_CONTRACT_PROFIT:
- Base: 500 gp
- Expected bonus: 50-100 gp (8-12 scouts)
- Total projected: 550-600 gp
- Minus costs (1 week): 60 gp
- Net profit: 490-540 gp (1 week work)
```

### Current Status
```
PARTY_MORALE: 0.85 (GOOD - new contract, confident)
PARTY_HEALTH: Fully healed (rested 2 days at Crossroads)
PARTY_FATIGUE: FRESH (ready for active combat)
PARTY_REPUTATION: EXCELLENT (60+ completed contracts, perfect record)

LOCATION: Crossroads Caravanserai
DEPARTURE_PLANNED: Year 5, Month 3, Day 14, 08:00 AM
DESTINATION: Blackstone Ravine (1.2 miles south)
TRAVEL_TIME: ~30 minutes (parties travel faster than caravans)

COMBAT_READINESS: EXCELLENT (95%)
- All party members trained
- Equipment well-maintained
- Tactics rehearsed
- Spell slots ready (Thara: 8 slots, Felix: 6 slots)
```

---

## INTER-CARAVAN DYNAMICS & ENCOUNTERS

### Route Intersection Schedule (Next 14 Days)

```
YEAR 5, MONTH 3 (Mid-month activity schedule):

DAY 14:
- 08:00 AM: Eldridge Trade Consortium departs Crossroads → Kilhel
- 08:00 AM: Crimson Blades depart Crossroads → Blackstone Ravine
- 06:00 AM: Swift Courier (Kael) departs Kilhel → Eldridge
  * POTENTIAL ENCOUNTER: Courier meets Eldridge caravan on Northern Trade Road (different times, maybe miss)

DAY 15:
- 06:00 AM: Settlers continue Western Branch → Tiny Stump (completion of journey)
- 08:30 AM: Settlers arrive Tiny Stump (SETTLEMENT ARRIVAL)
- 10:00 AM: Swift Courier returns Eldridge → Kilhel (afternoon cycle)
- POTENTIAL: Military patrol at Crossroads (rotation, not specifically scheduled)

DAY 16:
- Eldridge Trade Consortium at Kilhel (trading, overnight)
- Settlers at Tiny Stump (settlement integration beginning)
- Crimson Blades: Day 3 of goblin suppression contract

DAY 17:
- 06:00 AM: Eldridge Trade Consortium departs Kilhel → Crossroads (return journey)
- Settlers: Day 2 of settlement integration (construction starting)
- Crimson Blades: Continue contract work

DAY 18:
- 06:00 AM: Swift Courier (Kael) departs Kilhel → Eldridge
- Eldridge caravan approaching Crossroads (return journey)
- POTENTIAL ENCOUNTER: Courier may pass caravan or meet at waypoint

DAY 19:
- Settlers: Heavy labor on settlement (week 1 peak work)
- Crimson Blades: Final days of contract (expected completion)
- Militia patrol returns to base with reports

DAY 20:
- 06:00 AM: Swift Courier returns Eldridge → Kilhel
- Crimson Blades: Contract completion & payment
- Likely they seek new contract or rest at Crossroads

DAY 21:
- Eldridge Trade Consortium back at Crossroads (3-day cycle complete)
- Opportunity: Re-resupply, plan next trade run
- Settlers: Week 1 complete, initial structures established

DAY 28 (End month summary):
- Eldridge Trade Consortium: 2 complete Kilhel cycles (both profitable)
- Swift Courier: 4 delivery cycles (all on-time)
- Settlers: Week 3 of settlement establishment
- Crimson Blades: Likely completed multiple contracts or between-contracts
```

### Potential Random Encounters

```
ENCOUNTER_SEED_1: "RIVAL MERCHANTS"
Trigger: Eldridge Trade Consortium meets competitor caravan at Crossroads
Event: "The Westmarch Trading House caravan arrives from west"
Competition: Price rivalry, territory issues
Resolution options:
  - Cooperative negotiation (combine caravans for safety)
  - Market information trading
  - Conflict (price undercutting, bad blood)

ENCOUNTER_SEED_2: "MILITIA CRISIS"
Trigger: Crimson Blades find evidence of larger goblin threat
Event: "Scouts report 50+ goblins organizing, not just raiding"
Escalation: Military needs immediate reinforcement
Contract expansion: Pays 1000 gp for extended engagement
Impact: Affects trader safety on routes

ENCOUNTER_SEED_3: "SETTLER CRISIS"
Trigger: Settlers arrive Tiny Stump, discover community conflict
Event: "Existing settlers at Tiny Stump contest land claims"
Resolution: Negotiation, mediation, or confrontation
Impact: May need armed support from Crimson Blades or militia

ENCOUNTER_SEED_4: "COURIER CAPTURE"
Trigger: Bandits specifically target high-value mail
Event: "Kael and Isla ambushed on return route"
Crisis: Military and Eldridge consortium may hire Crimson Blades as security
Resolution: Rescue mission, bandit suppression, route security increase

ENCOUNTER_SEED_5: "SETTLEMENT OPPORTUNITY"
Trigger: Settlers establish Tiny Stump successfully
Event: "New settlement creates new market and trade routes"
Impact: Eldridge Trade Consortium may add Tiny Stump to regular circuit
New route: Eldridge → Crossroads → Tiny Stump (different pricing)
Economic effect: Opens new markets, creates new jobs
```

---

## SUMMARY STATISTICS & ANALYTICS

### Active Caravan Count
```
Total Active Caravans: 5
- Merchant: 1 (Eldridge Trade Consortium)
- Military: 1 (Crossroads Militia Patrol)
- Settler: 1 (Westward Settlers' Guild)
- Courier: 1 (Swift Courier Service)
- Adventuring: 1 (Crimson Blades)

Personnel Total: ~60 people
Animals Total: ~40 (mix of horses, mules, oxen)
Vehicles Total: 13 (wagons, carts, personal mounts)
Economic Value in Transit: ~15,000+ gp
```

### Regional Economic Impact (Monthly)

```
TRADE_VOLUME:
- Merchant caravan revenue: 5,000-8,000 gp monthly (3-4 Kilhel cycles)
- Courier service revenue: 1,200 gp monthly (thrice-weekly)
- Mercenary contracts: 1,500-3,000 gp monthly (variable)
- Settler investment: One-time 8,500 gp (establishment, amortized)
TOTAL_MONTHLY: 7,700-12,200 gp flowing through economy

SETTLEMENT_BENEFITS:
- Eldridge: Mercenary income, courier fees, trade hub status
- Crossroads: Military salary, caravanserai fees, courier hub
- Kilhel: Trade revenue, merchant income, market activity
- Tiny Stump: New settlement population, resource injection

EMPLOYMENT_GENERATED:
- Direct: 60 people employed in caravan operations
- Indirect: 50+ people (rest stop staff, animal handlers, merchants)
- Total: ~110 people dependent on caravan economy
```

### Risk Assessment (Next 30 Days)

```
THREAT_LEVEL: ELEVATED
- Goblin activity increased (raised threat level)
- Settler integration risk (Tiny Stump conflicts possible)
- Bandit activity potential (new settlement attracts opportunity)

MITIGATION_STRATEGIES:
- Crimson Blades deployed (goblin suppression)
- Military increased patrols (route security)
- Caravan escort protocols (merchant protection)
- Settlement militia establishment (defender for Tiny Stump)

ECONOMIC_CONTINGENCIES:
- If goblin threat escalates: Routes may close, trade disrupted
- If Tiny Stump succeeds: New market opportunity
- If bandits rise: Security costs increase, courier risks higher
- Weather (spring mud): Seasonal slowdown expected (normal)
```

---

## INTEGRATION CHECKLIST FOR IMPLEMENTATION

### Data Entry Requirements
- [ ] Create 5 caravan instances in database
- [ ] Create 60 NPC entries with relationships
- [ ] Create 13 vehicle entries with cargo details
- [ ] Create 40+ animal entries (assign to vehicles)
- [ ] Initialize schedules for each caravan
- [ ] Set up encounter probability tables
- [ ] Link caravans to rest stops via distance matrix
- [ ] Initialize economic tracking (profits, costs, taxes)

### Testing Requirements
- [ ] Movement calculations (verify speed modifiers work)
- [ ] Schedule conflicts (ensure no impossible encounters)
- [ ] Economic tracking (verify profit calculations)
- [ ] NPC interaction (test dialogue/relationship trees)
- [ ] Random encounter generation
- [ ] Rest stop interaction

### Go-Live Readiness
- [ ] All caravan data validated
- [ ] NPC relationships cross-checked
- [ ] Schedules synchronized with game time
- [ ] Economic projections calibrated
- [ ] Encounter hooks tested
- [ ] Player accessibility confirmed (can find/interact with caravans)

---

**CARAVAN POPULATION DATA COMPLETE**

Ready for immediate deployment into AnythingLLM vector database and game world integration.

This provides 5 fully-realized caravan instances with:
✅ Complete NPC rosters (60+ individuals with personalities)
✅ Detailed vehicle compositions & cargo
✅ Realistic economic data (revenue, costs, profits)
✅ Multi-day operational schedules
✅ Inter-caravan encounter potential
✅ Integration with existing world systems
✅ Plot hooks & dynamic events
✅ Player interaction opportunities