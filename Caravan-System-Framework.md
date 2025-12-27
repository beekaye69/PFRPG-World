# POCKET FANTASY RPG - CARAVAN SYSTEM FRAMEWORK
## Complete Vehicle & Movement Architecture

**Type:** Core Gameplay System  
**Status:** Production Ready - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Universal caravan/convoy movement, scheduling, and state management

---

## OVERVIEW

This document defines the complete caravan system: a universal framework for moving groups (merchant caravans, military convoys, settler groups, adventuring parties, etc.) across the world using the road network and rest stop infrastructure.

**Core Philosophy:**
- **Modular Design** — Generic vehicle/caravan template can be specialized for any group type
- **State-Based Movement** — Three-state machine handles all movement scenarios
- **Dynamic Scheduling** — Game datetime drives all timing and state transitions
- **Extensible Framework** — Systems can adapt vehicle behavior, hazards, encounters, and events
- **Server-Agnostic** — Works with any API architecture (JSON, database, flat-file storage)

---

## SYSTEM ARCHITECTURE

### Conceptual Model

```
CARAVAN INSTANCE
├─ Identity Data (ID, name, type, allegiance)
├─ Composition Data (vehicles, cargo, animals, NPCs)
├─ State Machine (position, status, time remaining)
├─ Movement Rules (speed, modifiers, constraints)
├─ Schedule Data (next waypoint, arrival time, rest duration)
└─ Event Hooks (encounters, hazards, dynamic events)

STATE TRANSITIONS
├─ AT_NODE (resting/resupplying at waypoint)
├─ TRAVELING (moving between waypoints)
└─ CAMPING (temporary rest in open area)

TIME INTEGRATION
├─ Game DateTime (day, hour, minute tracking)
├─ Movement Speed (affected by season, terrain, cargo)
├─ Rest Duration (affected by group type, hazards)
└─ Event Triggers (timed encounters, hazard checks)
```

---

## UNIVERSAL VEHICLE TEMPLATE

### Core Vehicle Properties

Every caravan is composed of vehicles. Each vehicle has standardized properties:

```
VEHICLE OBJECT
{
  "vehicle_id": "unique_identifier",
  "vehicle_type": "MERCHANT_WAGON | MILITARY_CART | SETTLER_WAGON | PACK_ANIMAL | PERSONAL_HORSE",
  
  CAPACITY PROPERTIES:
  "cargo_capacity_lbs": 2000,           // Maximum cargo weight
  "cargo_current_lbs": 1400,            // Current cargo weight
  "cargo_utilization": 0.70,            // Percentage full (1400/2000)
  "passenger_capacity": 4,              // Number of people
  "passenger_current": 3,               // Actual passengers
  "animal_required": true,              // Needs animals to move
  
  ANIMAL PROPERTIES:
  "animal_type": "HORSE | MULE | OX | CAMEL",
  "animal_count": 2,                    // Number of animals
  "animal_condition": "FRESH|TIRED|EXHAUSTED", // Energy state
  "animal_rest_required_hours": 4,      // Hours needed to recover
  
  MOVEMENT PROPERTIES:
  "base_speed_mph": 2.5,                // Unloaded speed
  "encumbrance_factor": 0.85,           // Modifier based on cargo
  "effective_speed_mph": 2.125,         // base_speed × encumbrance
  "road_type_modifier": {               // Adjustment by terrain
    "MAJOR_ROAD": 1.0,
    "SECONDARY_ROAD": 0.85,
    "WILDERNESS": 0.60
  },
  
  CONDITION PROPERTIES:
  "structural_integrity": 100,          // Percentage (0-100)
  "repair_difficulty": "EASY|NORMAL|HARD",
  "needs_repair": false,
  "repair_cost_gp": 0,
  
  SPECIAL PROPERTIES:
  "weather_vulnerable": false,          // Rain damage potential
  "terrain_restrictions": [],           // Impassable terrain types
  "special_cargo": false,               // Hazardous/regulated goods
  "military_vehicle": false,            // Requires escort/authorization
  
  METADATA:
  "owner": "NPC_ID or caravan_master",
  "purchase_date": "game_date",
  "maintenance_log": []                 // Historical repairs
}
```

### Vehicle Type Matrix

| Type | Capacity | Speed | Animals | Best For | Cost |
|---|---|---|---|---|---|
| Merchant Wagon | 2500 lbs | 2.5 mph | 2 horses | Standard trade | 150 gp |
| Military Cart | 1500 lbs | 3.0 mph | 2 mules | Military supply | 120 gp |
| Settler Wagon | 3000 lbs | 2.0 mph | 4 oxen | Long-distance move | 200 gp |
| Pack Animal | 300 lbs | 4.0 mph | 1 mule | Fast courier | 50 gp |
| Personal Horse | 150 lbs | 5.0 mph | 1 horse | Individual travel | 80 gp |
| Heavy Wagon | 4000 lbs | 1.5 mph | 4 horses | Bulk freight | 250 gp |

---

## CARAVAN COMPOSITION MODEL

### Caravan Object (Complete)

```
CARAVAN INSTANCE
{
  IDENTITY:
  "caravan_id": "CR_2025_001",
  "caravan_name": "Eldridge Trade Consortium",
  "caravan_type": "MERCHANT|MILITARY|SETTLER|ADVENTURING|COURIER|REFUGEE",
  "allegiance": "INDEPENDENT|ELDRIDGE|CROSSROADS|KILHEL|MILITARY",
  
  COMPOSITION:
  "vehicles": [
    { vehicle object 1 },
    { vehicle object 2 },
    ...
  ],
  "total_vehicles": 3,
  "total_passengers": 8,
  "total_animals": 6,
  
  CARGO SUMMARY:
  "cargo_weight_current": 6200,         // Sum of all vehicles
  "cargo_weight_capacity": 8500,        // Sum of all vehicles
  "cargo_utilization": 0.729,           // Overall percentage
  "cargo_categories": {
    "FOOD": 1200,
    "TEXTILE": 1500,
    "METALWORK": 1000,
    "LIVESTOCK": 500,
    "SPECIAL": 2000
  },
  
  LEADERSHIP:
  "caravan_master": "NPC_ID",           // Primary leader
  "caravan_master_name": "Merchant Aldwin",
  "secondary_leaders": ["NPC_ID_2"],
  "total_npcs": 12,
  "npc_roles": {
    "GUARDS": 3,
    "MERCHANTS": 4,
    "HANDLERS": 3,
    "SUPPORT": 2
  },
  
  MOVEMENT STATE:
  "current_state": "AT_NODE",           // or TRAVELING / CAMPING
  "current_location": "RS_6",           // Rest Stop 6 (Crossroads)
  "current_coordinates": [0, 2],        // X, Y on grid
  "destination_location": "RS_7",       // Kilhel Main Gate
  "destination_coordinates": [0, 3.2],
  
  TIME & SCHEDULE:
  "departure_time": {
    "game_date": "Year 5, Month 3, Day 15",
    "hour": 8,
    "minute": 0
  },
  "expected_arrival_time": {
    "game_date": "Year 5, Month 3, Day 17",
    "hour": 14,
    "minute": 0
  },
  "time_remaining_hours": 30.5,         // At node, hours until departure
  "time_remaining_traveling": 14,       // While traveling, hours until arrival
  
  MOVEMENT PROPERTIES:
  "base_speed_mph": 2.3,                // Average across vehicles
  "encumbrance_adjustment": 0.88,       // Cargo weight impact
  "terrain_current": "MAJOR_ROAD",
  "weather_condition": "CLEAR",
  "weather_modifier": 1.0,
  "effective_speed_mph": 2.02,          // All modifiers applied
  "distance_traveled_miles": 0,         // Current segment progress
  "distance_remaining_miles": 3.2,
  
  RESOURCE STATE:
  "supply_food_days": 8,                // Estimated food supply duration
  "supply_water_status": "GOOD",        // CRITICAL / LOW / GOOD / FULL
  "supply_animal_feed_days": 5,
  "morale": 0.85,                       // 0-1 scale (affects speed, encounters)
  "animal_fatigue": 0.30,               // 0-1 scale (affects speed, risk)
  
  HAZARD TRACKING:
  "current_hazard_zone": "LOW",         // VERY_LOW / LOW / MEDIUM / HIGH / CRITICAL
  "hazard_active": false,
  "hazard_type": null,                  // BANDITS / WEATHER / TERRAIN / GOBLIN / etc.
  "threat_assessment": "CLEAR",
  
  REST STOP INTERACTION:
  "allowed_rest_duration_max_hours": 12,
  "current_rest_elapsed_hours": 4,
  "rest_services_available": ["FOOD", "WATER", "ANIMAL_CARE", "REPAIR"],
  "rest_services_used": ["WATER"],
  "rest_cost_gp": 15,
  
  METADATA:
  "created_date": "2025-12-19",
  "last_updated": "2025-12-19T01:15:00Z",
  "update_frequency": "hourly",         // How often state updates
  "event_log": [],                      // Historical event tracking
  "active": true                        // Is this caravan currently active?
}
```

---

## STATE MACHINE SPECIFICATION

### Three-State Architecture

Every caravan is in exactly ONE state at any moment:

#### STATE 1: AT_NODE (Resting/Resupplying)

**Conditions:**
- Caravan is at a rest stop (RS) or settlement
- Not actively traveling
- Can rest, resupply, repair, trade

**Properties:**
```
{
  "state": "AT_NODE",
  "node_location": "RS_4",              // Which rest stop
  "node_name": "Millbrook Hold",
  "node_type": "RS_MERCHANT",
  "arrival_time": { game_datetime },
  "node_rest_hours": 0,                 // Hours rested so far
  "node_rest_max_hours": 12,            // Maximum permitted rest
  "node_events_available": [            // What can happen here
    "RESUPPLY_FOOD",
    "RESUPPLY_WATER",
    "ANIMAL_CARE",
    "MERCHANT_TRADING",
    "NPC_INTERACTION"
  ]
}
```

**Transitions:**
- **→ TRAVELING:** When rest ends or caravan chooses to depart early
  - Must have: destination set, animals rested enough, supplies checked
  - Time cost: Setup time (15-30 min)

- **→ CAMPING:** Emergency only (if urgent need to leave before adequate rest)
  - Temporary camp setup in open area
  - Then return to AT_NODE after brief stop

**Duration:**
- Minimum: 2 hours (quick water/food stop)
- Typical: 4-8 hours (medium rest)
- Maximum: 12 hours (overnight stay, allowed rest varies by location)
- Override: Military emergency protocols can force departure

**Services at Nodes:**
- All rest stops offer: WATER, BASIC_SUPPLIES
- Merchant stops: + TRADING, FOOD
- Shrines: + SPIRITUAL_SERVICES, SHELTER
- Cities: + FULL_SERVICES, REPAIR, ESCORT_HIRING
- Checkpoints: + INSPECTION, DOCUMENTATION

**Cost at Nodes:**
- Basic stop: Free to 5 gp (water/passage)
- Resupply (food, animal feed): 10-25 gp per stop
- Repair service: 20-100 gp (depends on damage)
- Merchant trading: Variable (market-based)
- Overnight lodging: 5-15 gp per person

---

#### STATE 2: TRAVELING (Moving Between Waypoints)

**Conditions:**
- Caravan has left a rest stop with a set destination
- Actively moving along road/route
- Cannot rest except emergency camp

**Properties:**
```
{
  "state": "TRAVELING",
  "departure_location": "RS_4",         // Where we left
  "destination_location": "RS_6",       // Where we're going
  "route_distance_miles": 2.3,          // Total distance
  "distance_traveled_miles": 0.8,       // How far we've come
  "distance_remaining_miles": 1.5,      // How far to go
  "departure_time": { game_datetime },
  "estimated_arrival": { game_datetime },
  "time_elapsed_hours": 1.5,
  "time_remaining_hours": 1.2,
  "current_segment": "MAJOR_ROAD",      // Terrain type
  "travel_speed_effective_mph": 1.98,   // With all modifiers
  "progress_per_game_minute": 0.033,    // Distance/minute (for real-time updates)
  "encounter_check_distance": 2.3,      // When to check for encounters
  "hazard_check_remaining": 0.5         // Miles until hazard check
}
```

**Transitions:**
- **→ AT_NODE:** When arriving at destination
  - Automatic when distance_remaining = 0
  - Transition to AT_NODE with node_rest_hours = 0

- **→ CAMPING:** Emergency stop (injured NPC, animal collapse, weather)
  - Mandatory break, minimum 4 hours
  - Then can resume TRAVELING or wait for rescue

- **→ STOPPED (ERROR):** Route is blocked
  - Caravan cannot proceed (bridge collapsed, military blockade)
  - Requires manual intervention to reroute

**Movement Calculations:**
```
EFFECTIVE_SPEED = BASE_SPEED × ENCUMBRANCE_FACTOR × TERRAIN_MODIFIER × WEATHER_MODIFIER

BASE_SPEED:
- Merchant wagon: 2.5 mph
- Military cart: 3.0 mph
- Settler wagon: 2.0 mph
- Average caravan: 2.0-2.5 mph (limited by slowest vehicle)

ENCUMBRANCE_FACTOR (by cargo utilization):
- 0-25% full: 1.0 (no penalty)
- 25-50% full: 0.95 (light modifier)
- 50-75% full: 0.85 (medium penalty)
- 75-100% full: 0.70 (heavy penalty)
- Over capacity: 0.50 (severe penalty)

TERRAIN_MODIFIER (by road type):
- MAJOR_ROAD: 1.0 (normalized baseline)
- SECONDARY_ROAD: 0.85 (rougher terrain)
- WILDERNESS: 0.60 (difficult travel)

WEATHER_MODIFIER (by condition):
- CLEAR: 1.0
- LIGHT_RAIN: 0.95 (mud, visibility)
- HEAVY_RAIN: 0.80 (bad mud, danger)
- SNOW: 0.70 (slippery, slow)
- EXTREME: 0.50 (unsafe, halt recommended)

SEASON_MODIFIER (applied to base):
- SPRING: 1.2× (muddy, slower) [overrides weather for mud]
- SUMMER: 1.0× (normal)
- AUTUMN: 1.0× (normal)
- WINTER: 1.5× (slow, cold, short days)

EXAMPLE:
Base = 2.5 mph (merchant caravan average)
Cargo = 65% full → 0.85
Terrain = MAJOR_ROAD → 1.0
Weather = LIGHT_RAIN → 0.95
Season = SUMMER → 1.0
EFFECTIVE = 2.5 × 0.85 × 1.0 × 0.95 × 1.0 = 2.02 mph

At 2.02 mph, a 3.2 mile journey takes:
3.2 / 2.02 = 1.58 hours ≈ 1 hour 35 minutes
```

**Encounter System During Travel:**
```
DISTANCE_MILESTONE_CHECKS (at regular intervals)
Every 0.5 miles → Check for:
- Bandit ambush (if hazard zone MEDIUM/HIGH)
- Weather change
- Animal fatigue/rest needed
- NPC event (conflict, injury, romance, quest hook)

HAZARD_CHECKS (by zone):
Zone: VERY_LOW (1% chance per check)
Zone: LOW (5% chance per check)
Zone: MEDIUM (15% chance per check)
Zone: HIGH (35% chance per check)
Zone: CRITICAL (65% chance per check)

Hazard types:
- BANDITS (aggressive encounter)
- WILDLIFE (animal attack)
- WEATHER (storm, flooding)
- TERRAIN (bridge collapse, landslide)
- GOBLIN (post-raid response, if active)
- MERCHANT_RIVAL (trading conflict)
- MILITARY (checkpoint, escort request)
```

**Time Tracking During Travel:**
```
REAL-TIME INTEGRATION (for live campaigns):

Game updates every GAME_MINUTE:
- Subtract 1 minute from time_remaining
- Add distance: (effective_speed / 60) = distance per minute
- Update distance_traveled
- Check milestones

Example (2.02 mph speed):
- Per game minute: 2.02 / 60 = 0.0337 miles per minute
- Per game hour: 2.02 miles
- 1.58-hour journey: 95 game minutes

This allows:
- Real-time caravan tracking
- Live encounter generation
- Dynamic time advancement
- Player interception potential
```

---

#### STATE 3: CAMPING (Emergency/Temporary Rest)

**Conditions:**
- Caravan has stopped in open area (camp area)
- NOT at established rest stop
- Temporary situation requiring break

**Properties:**
```
{
  "state": "CAMPING",
  "camp_location": "CA_2",              // Which camp area
  "camp_name": "Verdant Pasture",
  "camp_coordinates": [0, 0.6],
  "camp_reason": "EMERGENCY|PLANNED|MANDATORY",
  "camp_duration_hours": 4,             // Planned duration
  "camp_elapsed_hours": 0,              // Time spent so far
  "camp_security": "UNGUARDED",         // vs GUARDED
  "camp_visibility": "EXPOSED",         // vs HIDDEN
  "camp_morale_penalty": -0.05,         // -5% morale for camping
  "camp_animal_rest_factor": 0.8,       // Gets 80% normal rest benefit
  "camp_weather_exposure": true,        // Vulnerable to weather
  "camp_encounter_risk": 0.25,          // 25% chance hostile encounter per 4 hours
  "camp_fire": true,                    // Lit fire? (visibility vs morale)
  "camp_guards_assigned": 3             // How many on watch rotation
}
```

**Transitions:**
- **→ TRAVELING:** After emergency resolved, resume journey to destination
  - Must have minimum 4-hour camp
  - Resume with reduced time (lost time in camping)

- **→ AT_NODE:** If decided to go to nearest rest stop instead
  - Reroute to nearest rest stop from current location
  - Abandon camping for established infrastructure

- **→ CAMPING (extended):** If new emergency (injury, severe weather)
  - Duration extended automatically

**Characteristics:**
- **Not** a rest stop: No services, no trading, no NPC interactions
- **Temporary only:** 4-12 hour duration maximum
- **Risky:** Higher encounter risk, weather exposure
- **Psychological:** Morale penalty for caravan (people prefer settlements)
- **Recovery:** Animals get 80% normal rest (sleeping outdoors)

**Camping Requirements:**
```
To CAMP IN AREA, caravan needs:
- Water source nearby (stream, well)
- Open space (minimum 60ft × 60ft per vehicle)
- Defensible position (if military concern)
- Terrain suitable for tents/animals

Hazards at camp:
- Bandits (night ambush): 5-25% chance based on zone
- Weather (storm, sudden temperature drop): 10-15% chance
- Animals (wolves, bears, etc.): 2-8% chance
- Encounter NPCs: 20-40% chance (refugees, merchants, travelers)
```

**Food & Supply Usage During Camping:**
```
Per 4-hour camp:
- Food consumption: 0.5 day supply (half-rations, rest period)
- Water consumption: 0.3 day supply (lower activity)
- Animal feed: 0.4 day supply (grazing available)
- Firewood: 2-3 units (basic fire)
```

---

## TIME & DATETIME INTEGRATION

### Game Datetime Model

```
GAME_DATETIME OBJECT
{
  "year": 5,
  "month": 3,               // 1-12
  "day": 15,                // 1-28 (all months same length)
  "hour": 8,                // 0-23
  "minute": 0,              // 0-59
  "season": "SPRING",       // Derived from month
  "day_of_week": "MARKETDAY", // Named day system
  "time_of_day": "MORNING"  // DAWN / MORNING / AFTERNOON / EVENING / DUSK / NIGHT
}

SEASON CALCULATION:
- Months 1-3: SPRING
- Months 4-6: SUMMER
- Months 7-9: AUTUMN
- Months 10-12: WINTER

DAYLIGHT HOURS (by season):
- SPRING: 6 AM - 6 PM (12 hours)
- SUMMER: 5 AM - 7 PM (14 hours)
- AUTUMN: 6 AM - 6 PM (12 hours)
- WINTER: 7 AM - 5 PM (10 hours)

TIME_OF_DAY (by hour):
- 0-4: NIGHT (travel discouraged)
- 5-6: DAWN (dangerous, limited visibility)
- 6-11: MORNING (optimal travel)
- 11-13: AFTERNOON (good travel)
- 13-17: AFTERNOON (continuing)
- 17-18: EVENING (approaching dusk)
- 18-19: DUSK (light failing, travel hazard)
- 19-23: NIGHT (no travel for merchants)
```

### Movement Time Calculations

**Departure Logic:**
```
CARAVAN DECIDES TO TRAVEL:

1. Check time of day
   - If NIGHT or DUSK: Discourage departure
   - If DAWN: Permit with warning
   - If MORNING-EVENING: Standard departure

2. Calculate available daylight
   daylight_remaining = sunset_hour - current_hour

3. Check journey time
   journey_hours = destination_distance / effective_speed

4. Decision matrix:
   IF journey_hours <= daylight_remaining:
     → PROCEED (arrive before dark)
   ELSE IF caravan_type == MERCHANT:
     → DISCOURAGE (need to camp)
   ELSE IF caravan_type == MILITARY:
     → PERMIT (military can travel dark)
   ELSE IF caravan_type == COURIER:
     → PERMIT (fast movement OK)

5. Set destination_arrival_time
   arrival_time = current_time + journey_hours
```

**Rest Duration Logic:**
```
AT_NODE REST CALCULATION:

Base rest needed = (8 - animal_fatigue_level) hours
// Animals fully fresh = 0, exhausted = 1.0

Minimum rest = 2 hours (water break)
Maximum rest = 12 hours (overnight)

Recommended rest = 4-6 hours (normal stop)

EXAMPLE:
- Animal fatigue: 0.6 (60% tired)
- Base needed: 8 - 0.6 = 7.4 hours
- But max = 12 hours, min = 2 hours
- So: 7.4 hours recommended

System will:
- Allow departure after 2 hours (rest_duration = 2)
- Recommend wait until 7.4 hours
- Force maximum rest at 12 hours
```

**Daily Schedule Example:**

```
CARAVAN DAY SIMULATION:

6:00 AM - MORNING: Depart from Crossroads (RS_6)
         State: TRAVELING → Kilhel (RS_7)
         Distance: 3.2 miles
         Speed: 2.02 mph effective
         ETA: 8:35 AM (2.58 hours)

6:00-8:30 AM - TRAVEL TIME
         Every 0.5 miles: Check for encounters
         Mile 0.5 (6:15 AM): No hazard
         Mile 1.0 (6:30 AM): Clear
         Mile 1.5 (6:45 AM): Check morale
         Mile 2.0 (7:00 AM): Good progress
         Mile 2.5 (7:15 AM): Approaching gate
         Mile 3.0 (7:30 AM): Final segment
         Mile 3.2 (7:35 AM): ARRIVE

7:35 AM - MORNING: Arrive at Kilhel Gate (RS_7)
         State: → AT_NODE
         node_rest_hours: 0
         node_rest_max: varies (city inspection typically 1-2 hours)

7:35-9:00 AM - GATE INSPECTION
         Mandatory: Cargo inspection (45 min)
         Mandatory: Weapons count (20 min)
         Mandatory: Tax assessment (15 min)
         Total: ~80 minutes

9:00 AM - Cleared for entry
         Caravan chooses:
         A) Enter city (move to settlement)
         B) Camp outside and rest (continue tomorrow)
         C) Resupply at gate and continue (not recommended)

IF CHOICE B (Camp):
9:00 AM-5:00 PM - REST AT GATE
         State: CAMPING (planned, not emergency)
         Duration: 8 hours
         Or: Move to Camp Area 9 (Kilhel Outer Meadows)

5:00 PM - EVENING: Rest complete
         Decision: Continue to Kilhel proper or camp night?
         If camp: CAMPING overnight (dangerous, -morale)
         If travel: Only 2 hours until DUSK, not recommended

RESULT: Typical Crossroads→Kilhel journey:
- Depart 6 AM
- Arrive 8 AM
- Inspection 1.5 hours
- Arrive Kilhel proper ~9:30 AM
- Rest/resupply 4-6 hours
- Available for next leg by afternoon
```

---

## CARAVAN SPEED MODIFIERS SYSTEM

### Comprehensive Modifier Matrix

```
BASE_SPEED (by caravan type):
MERCHANT_CARAVAN:
  - 2.5 mph (standard), reduced to 2.0 by diversity of vehicles
  - 2 merchant wagons (2.5 mph each)
  - 3 pack animals (4.0 mph each)
  - Average: (2.5+2.5+4.0+4.0+4.0)/5 = 3.4 → limited by wagons = 2.5 mph

MILITARY_CONVOY:
  - 3.0 mph (lighter loads, organized movement)
  - 2 military carts (3.0 mph each)
  - 2 supply wagons (2.5 mph each)
  - Horses (4.0 mph)
  - Limited by supply wagons = 2.5 mph, but discipline maintains 3.0 average

SETTLER_CARAVAN:
  - 2.0 mph (heavy, slow, family groups)
  - 4 settler wagons (2.0 mph each)
  - Limited by heavy loads = 2.0 mph

COURIER_DISPATCH:
  - 4.5 mph (single fast rider)
  - 1 personal horse (5.0 mph)
  - Can achieve 4-5 mph across entire journey

ADVENTURING_PARTY:
  - 3.5 mph (mixed travel, some on foot/horseback)
  - Variable depending on composition
  - Slower with heavy equipment, faster if unencumbered

REFUGEE_COLUMN:
  - 1.5 mph (many on foot, slow animals, fear/exhaustion)
  - Slowest caravan type (humanitarian emergency)
  - High morale penalty if forced faster

MODIFIER BREAKDOWN:

1. ENCUMBRANCE PENALTY
   Utilization: 0-25% → ×1.00 (no penalty)
   Utilization: 25-50% → ×0.95
   Utilization: 50-75% → ×0.85
   Utilization: 75-100% → ×0.70
   Over capacity: ×0.50

2. TERRAIN MODIFIER (road type)
   MAJOR_ROAD (East Road, Northern Trade): ×1.0
   SECONDARY_ROAD (Western Branch): ×0.85
   WILDERNESS (open grassland): ×0.60
   MOUNTAIN_PASS: ×0.40 (if implemented)
   RIVER_CROSSING: ×0.30 (if implemented)

3. WEATHER MODIFIER
   CLEAR: ×1.0
   LIGHT_RAIN: ×0.95
   HEAVY_RAIN: ×0.80
   SNOW: ×0.70
   BLIZZARD: ×0.40
   EXTREME (hurricane, etc.): ×0.20

4. SEASON MODIFIER (applies to base)
   SPRING (mud, flooding risk): ×1.2 (speed penalty)
   SUMMER (normal): ×1.0
   AUTUMN (normal): ×1.0
   WINTER (ice, short days, cold): ×1.5 (severe penalty)

5. ANIMAL FATIGUE
   Fresh (0.0): ×1.0
   Rested: (0.0-0.25): ×0.98
   Moderate (0.25-0.5): ×0.90
   Tired (0.5-0.75): ×0.75
   Exhausted (0.75-1.0): ×0.50
   Collapse threshold: 1.0+ (mandatory rest)

6. HAZARD/EVENT MODIFIER
   Clear road: ×1.0
   Hazard zone active: ×0.80-0.90 (caution, reduced speed)
   Active combat/bandits: ×0.10 (halt, combat happens)
   Emergency (injury, fire): ×0.00 (stop completely)

7. CARAVAN_MORALE
   Excellent (0.9-1.0): ×1.05 (willing faster)
   Good (0.7-0.9): ×1.0 (normal speed)
   Fair (0.5-0.7): ×0.95 (some reluctance)
   Poor (0.3-0.5): ×0.85 (dissatisfaction slows group)
   Critical (0.0-0.3): ×0.70 (mutiny risk, very slow)

8. DAYTIME SPEED (night travel penalty)
   NIGHT hours: ×0.40 (dangerous, slow, only military/courier)
   DAWN/DUSK: ×0.70 (limited visibility)
   DAY hours: ×1.0 (normal)
```

### Real-World Examples

```
EXAMPLE 1: MERCHANT CARAVAN (Standard Route)
Base speed: 2.5 mph (merchant wagons limited)
Cargo utilization: 65% → ×0.85
Terrain: MAJOR_ROAD → ×1.0
Weather: CLEAR → ×1.0
Season: SUMMER → ×1.0
Animal fatigue: Moderate → ×0.90
Morale: Good → ×1.0
Time of day: AFTERNOON → ×1.0

EFFECTIVE = 2.5 × 0.85 × 1.0 × 1.0 × 1.0 × 0.90 × 1.0 × 1.0 = 1.91 mph

For 3.2 mile journey:
3.2 / 1.91 = 1.68 hours = 1 hour 41 minutes

EXAMPLE 2: MILITARY CONVOY (Urgent)
Base speed: 3.0 mph (military organization)
Cargo utilization: 50% → ×0.95
Terrain: MAJOR_ROAD → ×1.0
Weather: LIGHT_RAIN → ×0.95
Season: AUTUMN → ×1.0
Animal fatigue: Fresh → ×1.0
Morale: Excellent (military discipline) → ×1.05
Time of day: MORNING → ×1.0

EFFECTIVE = 3.0 × 0.95 × 1.0 × 0.95 × 1.0 × 1.0 × 1.05 × 1.0 = 2.84 mph

For 3.2 mile journey:
3.2 / 2.84 = 1.13 hours = 1 hour 8 minutes

EXAMPLE 3: SETTLER CARAVAN (Heavy, Slow)
Base speed: 2.0 mph (heavy wagons)
Cargo utilization: 85% → ×0.70
Terrain: SECONDARY_ROAD (Western Branch) → ×0.85
Weather: HEAVY_RAIN → ×0.80
Season: SPRING → ×1.2
Animal fatigue: Tired → ×0.75
Morale: Fair (family groups, some conflict) → ×0.95
Time of day: MORNING → ×1.0

EFFECTIVE = 2.0 × 0.70 × 0.85 × 0.80 × 1.2 × 0.75 × 0.95 × 1.0 = 0.68 mph

For 5.3 mile Eldridge→Tiny Stump journey:
5.3 / 0.68 = 7.8 hours ≈ 7 hours 48 minutes
(This is why settlers camp!)

EXAMPLE 4: COURIER (Fast)
Base speed: 4.5 mph (single rider)
Cargo: 10% → ×1.0 (minimal cargo)
Terrain: MAJOR_ROAD → ×1.0
Weather: CLEAR → ×1.0
Season: SUMMER → ×1.0
Animal fatigue: Fresh → ×1.0
Morale: Excellent (urgent mission) → ×1.05
Time of day: MORNING → ×1.0

EFFECTIVE = 4.5 × 1.0 × 1.0 × 1.0 × 1.0 × 1.0 × 1.05 × 1.0 = 4.73 mph

For 3.2 mile journey:
3.2 / 4.73 = 0.68 hours ≈ 40 minutes
(Courier can make Crossroads→Kilhel in under 1 hour!)
```

---

## SCHEDULING ENGINE

### Caravan Next Waypoint Logic

```
WAYPOINT_SELECTION ALGORITHM:

INPUT:
- current_location: Current rest stop
- current_time: Game datetime
- destination: Final destination or "NEXT_AVAILABLE"
- caravan_morale: Current morale (0-1)
- animal_fatigue: Current fatigue (0-1)
- supplies_status: Food/water remaining

DECISION TREE:

IF destination is specific (e.g., "RS_7"):
  → Use direct route to destination
  → Calculate travel time to destination
  → Check if daylight permits arrival
  
IF destination is "NEXT_AVAILABLE":
  → Find all reachable waypoints
  → Calculate travel time to each
  → Filter by daylight constraint
  → Filter by supplies (can we reach with current supplies?)
  → Recommend closest suitable waypoint

DAYLIGHT_CHECK:
  current_daylight_remaining = sunset_hour - current_hour
  journey_time_hours = waypoint_distance / effective_speed_mph
  
  IF journey_time_hours < current_daylight_remaining:
    → Can arrive in daylight (PERMITTED)
  ELSE IF caravan_type in [MILITARY, COURIER]:
    → Can travel at night (PERMITTED, with night penalty)
  ELSE:
    → Cannot reach in daylight (RECOMMEND CAMP instead)

SUPPLIES_CHECK:
  food_remaining_days = supplies_status.food / daily_consumption
  
  IF food_remaining_days > (journey_distance / 20):
    → Sufficient supplies to reach next waypoint
  ELSE:
    → Must resupply at current waypoint before moving
    → Add 2-4 hours to current rest for supply gathering

MORALE_CHECK:
  IF morale < 0.4:
    → Group morale crisis
    → Recommend extended rest (8+ hours) at pleasant location
    → Avoid checkpoints or dangerous areas
  IF morale < 0.5:
    → Group needs encouragement
    → Recommend shrine visit or settlement comfort
    → Avoid forcing night travel

ANIMAL_FATIGUE_CHECK:
  IF animal_fatigue > 0.75:
    → Animals approaching exhaustion
    → MUST have 6+ hour rest before next journey
    → Cannot proceed to distant waypoints
  IF animal_fatigue > 0.85:
    → Animals at risk of collapse
    → MUST remain at current location until <0.6

OUTPUT:
- recommended_waypoint: Best next location
- travel_time_hours: Time to reach waypoint
- supply_status: Can we make it?
- rest_required_hours: How long to rest
- total_time_at_this_location_hours: Rest + other activities
```

### Multi-Day Journey Planning

```
EXAMPLE: ELDRIDGE → KILHEL (4-day merchant caravan journey)

DAY 1:
- Start: Eldridge (RS_1), 6 AM
- Destination: Verdant Pasture (Camp 2), 0.6 miles
- Travel time: 0.4 hours (fast opening leg)
- Arrive: 6:24 AM
- State: CAMPING (planned overnight)
- Rest: 10 hours (animals need recovery)
- Depart next morning: 4:30 PM? (wait until next morning)

DAY 2:
- Start: Verdant Pasture (Camp 2), 6 AM
- Destination: Shrine Clearing (Camp 3), 0.2 miles
- Travel time: 0.1 hours (quick movement)
- Arrive: 6:06 AM
- Mid-day: Continue to Crossroads (RS_6), 1.2 miles from Shrine
- Additional travel: 0.6 hours
- Arrive Crossroads: ~7 AM
- State: AT_NODE (major hub)
- Rest/resupply: 6-8 hours
- Depart: 2 PM

DAY 3:
- Start: Crossroads (RS_6), 2 PM
- Destination: Northern Meadow (Camp 8), 2.0 miles
- Travel time: 1.1 hours (afternoon travel)
- Arrive: 3:06 PM
- Early evening campfire, resupply, animal care
- State: CAMPING (planned overnight)
- Rest: 10 hours
- Depart next morning: 6 AM

DAY 4:
- Start: Northern Meadow (Camp 8), 6 AM
- Destination: Kilhel Gate (RS_7), 1.2 miles
- Travel time: 0.65 hours
- Arrive: 6:39 AM
- State: AT_NODE (city gate)
- Inspection/processing: 1.5 hours
- Depart for city proper or camp: 8:15 AM

TOTAL TIME: 3 days of actual travel + 1-2 days of rest/resupply = 4-5 real days

OPTIMIZED ROUTE (No overnight camps):
DAY 1: Eldridge → Shrine → Crossroads (3.8 miles total, 1.9 hours travel, 2 hours rest mid-route)
DAY 2: Crossroads → Kilhel (3.2 miles, 1.7 hours travel, complete by 10 AM)
Total: 2 days of travel (if pushed hard, morale penalty)

RELAXED ROUTE (With strategic rests):
DAY 1: Eldridge → Verdant Pasture, evening camp
DAY 2: Verdant → Shrine → Crossroads, arrive 7 AM, rest 6 hours
DAY 3: Crossroads → Northern Meadow, arrive 3 PM, evening camp
DAY 4: Northern Meadow → Kilhel Gate, arrive 6:39 AM, complete inspection by 8 AM
Total: 4 days (better morale, safer travel, animals well-rested)
```

---

## DYNAMIC EVENT SYSTEM HOOKS

### Event Trigger Points

```
Events are triggered at specific moments during caravan operation:

DEPARTURE_EVENTS (when leaving a waypoint):
- NPC joins/leaves caravan
- Merchant acquires/sells goods
- Rumors/information gathering
- Supplies inadequate (force resupply)
- Weather forecast changes plans
- Bandits spotted on road ahead

TRAVEL_EVENTS (during movement):
- Distance milestone (every 0.5 miles)
  → Check for: Bandits, weather change, animal fatigue
- Time milestone (hourly)
  → Check for: Morale events, random NPC chatter
- Hazard zone entered (crossing from safe to dangerous area)
  → Trigger: Hazard check sequence

ARRIVAL_EVENTS (when reaching waypoint):
- NPC at location initiates interaction
- Trade opportunity (merchant caravan)
- Information exchange (news, road conditions)
- Emergency (wounded traveler, stranded group)
- Inspection (military checkpoint)
- Price changes (seasonal market shifts)

CAMPING_EVENTS (during emergency camp):
- Night encounter (25% per 4-hour camp)
- Weather worsens (10% per 4 hours)
- Animal incident (wolf attack, escape)
- NPC conflict (crew dispute, romance subplot)
- Supply issue (discovering contaminated food)

REST_STOP_EVENTS (while at node):
- NPC dialogue (location keeper, other travelers)
- Business opportunity (merchant pitch, job offer)
- Rumor/quest hook (information lead)
- Service request (repair need discovered)
- Interpersonal event (caravan member relationship)
```

### Event Hook Integration Example

```
SCENARIO: Caravan traveling Crossroads → Kilhel

MILE 0.5 (Northern Meadow approach):
- Hazard check: Zone = LOW → 5% encounter chance → Roll: 23 (no encounter)
- Weather check: Current CLEAR → 10% change chance → Roll: 67 (no change)
- Animal fatigue: Currently 0.45 → acceptable

MILE 1.0 (Mid-journey):
- Morale check: Currently 0.75 → Roll morale event → 40% chance
  → Result: "Traveling merchants" encounter group heading opposite direction
  → Dialogue opportunity, trade opportunity, gossip exchange
  → Morale +0.02 (positive interaction)

MILE 1.5:
- Weather check: 10% chance → Roll: 84 (weather change!)
- Weather shifts: CLEAR → LIGHT_RAIN
- Speed modifier changes: ×1.0 → ×0.95
- Remaining travel time recalculates: 1.7 hrs → 1.79 hrs

MILE 2.0:
- Check approaching destination: Within 1 mile of Kilhel Gate
- System prepares: Gate NPCs, inspection procedures, destination arrival
- Caravan leaders receive: "Kilhel Gate ahead, visible road signs"

ARRIVAL (2.3 miles):
- State: TRAVELING → AT_NODE (Kilhel Gate)
- Trigger: Gate arrival event sequence
  1. Gate captain approaches: Inspection protocol begins
  2. NPC: "Welcome, merchants. State your business and cargo."
  3. Event choice: Honest/deflect/bribe gates open/closed
  4. Process: Inspection (30-80 minutes based on choices)
  5. Outcome: Tax assessed, weapons recorded, passage granted
```

---

## DATABASE SCHEMA & API INTEGRATION

### Caravan Data Storage Model

```
TABLE: Caravans
├─ caravan_id (PK, UUID)
├─ caravan_name (string)
├─ caravan_type (enum: MERCHANT|MILITARY|SETTLER|...)
├─ allegiance (string)
├─ caravan_master_npc_id (FK → NPCs)
├─ current_state (enum: AT_NODE|TRAVELING|CAMPING)
├─ current_location_id (FK → RestStops or CampAreas)
├─ destination_location_id (FK → RestStops)
├─ created_date (timestamp)
├─ active (boolean)
└─ metadata (JSON)

TABLE: Vehicles
├─ vehicle_id (PK, UUID)
├─ caravan_id (FK → Caravans)
├─ vehicle_type (enum)
├─ cargo_weight_current (int)
├─ cargo_weight_capacity (int)
├─ animal_type (string)
├─ animal_count (int)
├─ animal_condition (enum: FRESH|TIRED|EXHAUSTED)
├─ structural_integrity (int 0-100)
├─ cargo_details (JSON array of items)
└─ metadata (JSON)

TABLE: CaravanSchedules
├─ schedule_id (PK, UUID)
├─ caravan_id (FK → Caravans)
├─ waypoint_sequence (array of location IDs)
├─ current_waypoint_index (int)
├─ estimated_completion_date (timestamp)
├─ actual_completion_date (timestamp, nullable)
├─ status (enum: PLANNED|IN_PROGRESS|COMPLETED|CANCELLED)
└─ metadata (JSON)

TABLE: CaravanEventLog
├─ event_id (PK, UUID)
├─ caravan_id (FK → Caravans)
├─ event_type (enum: DEPARTURE|TRAVEL|ARRIVAL|ENCOUNTER|...)
├─ event_timestamp (timestamp)
├─ event_details (JSON)
├─ location_id (FK → locations)
└─ impact (JSON: morale change, supplies used, etc.)
```

### API Endpoints (Pseudocode)

```
GET /caravans/{caravan_id}
- Returns: Full caravan object with current state

PUT /caravans/{caravan_id}/state
- Request: { state: "TRAVELING", destination: "RS_7" }
- Returns: Updated caravan with new state
- Triggers: Departure event sequence

POST /caravans/{caravan_id}/tick
- Request: { game_datetime: { year, month, day, hour, minute } }
- Returns: Updated caravan with time progression
- Handles: Movement calculations, encounter checks, time passage
- Frequency: Called every game minute/hour depending on implementation

GET /caravans/{caravan_id}/schedule
- Returns: Next waypoints, estimated arrival times, routing

POST /caravans/{caravan_id}/rest
- Request: { duration_hours: 4, services: ["WATER", "FOOD"] }
- Returns: Updated caravan with rest effects
- Updates: Animal fatigue, supplies, morale

GET /caravans?filter=active&type=MERCHANT
- Returns: List of active merchant caravans
- Useful for: Finding caravans for player interaction

POST /caravans/create
- Request: { caravan_type, caravan_master_id, vehicles: [...], destination }
- Returns: New caravan object
- Initializes: All state, schedule, event log
```

---

## INTEGRATION WITH EXISTING SYSTEMS

### Connection to Road Network

The caravan system reads from:
- **Rest Stop data** (Rest-Stops-Camp-Areas-Map.md)
- **Distance matrix** (pre-calculated waypoint distances)
- **Road types** (MAJOR_ROAD, SECONDARY_ROAD, WILDERNESS)
- **Coordinates** (for pathfinding, distance calculation)

### Connection to NPC System

The caravan system interacts with:
- **Caravan masters** (NPC_SYSTEM → leader identity)
- **NPC roles** (guards, merchants, handlers, support)
- **NPC schedules** (are associated NPCs available/busy?)
- **NPC relationships** (internal caravan politics)

### Connection to Settlement System

Caravans interact with settlements at:
- **Stops** (resting, resupplying, trading)
- **Recruitment** (hiring guards, merchants, animals)
- **Services** (repair, healing, information)
- **Encounters** (settlement NPCs initiating with caravan)

### Connection to Time System

Caravans depend on:
- **Game datetime** (current time, day, season)
- **Daylight hours** (when travel is safe)
- **Weather system** (climate affecting speed)
- **Calendar system** (seasonal modifiers, festivals, events)

---

## OPERATIONAL EXAMPLES

### Example 1: Standard Merchant Caravan

```
CARAVAN: "Eldridge Trade Consortium"
TYPE: MERCHANT
MASTER: Merchant Aldwin (NPC)

VEHICLES:
- Merchant Wagon 1 (2500 lbs cargo: textiles, wine)
- Merchant Wagon 2 (2500 lbs cargo: metalwork, tools)
- Pack Animals 1-3 (300 lbs each: supplies, trade goods)
Total capacity: 6100 lbs
Current cargo: 5800 lbs (95% full - slight penalty)

SCHEDULE:
Day 1: Eldridge → Crossroads (2 miles, 1.5 hrs travel + 4 hrs rest)
Day 2: Crossroads → Kilhel (3.2 miles, 1.7 hrs travel)
Total: 2 days, arrives Kilhel with goods for trading

EXPECTED REVENUE:
- Kilhel textiles market: 1500 gp profit potential
- Kilhel metalwork market: 2000 gp profit potential
- Minor losses from travel: -200 gp (wear, feeding animals)
NET POTENTIAL: +3300 gp

RISKS:
- Bandits on Northern Trade Road (15% encounter chance if poor condition)
- Animal fatigue (animals well-rested, low risk)
- Weather (summer clear skies, minimal risk)
- Competitor merchants (negotiation, not combat)

ACTUAL PLAYTHROUGH:
- Departs: 6 AM from Eldridge
- Arrives Crossroads: 7:30 AM
- Rests, resupplies, trades minor goods: 4 hours
- Departs: 11:30 AM
- En route: Encounters friendly merchant caravan heading opposite direction
- Exchange: Information about market prices, road conditions
- Morale boost: +0.05
- Arrives Kilhel: 1:15 PM
- Gate inspection: Weapons registered, cargo noted, tax assessed (12% = 696 gp)
- Enters city for trading
```

### Example 2: Military Convoy (Urgent)

```
CARAVAN: "Crossroads Militia Patrol Unit"
TYPE: MILITARY
MASTER: Captain Mareck (NPC)

VEHICLES:
- Military Cart 1 (1500 lbs: weapons, armor repair supplies)
- Military Cart 2 (1500 lbs: food, medical supplies)
- Supply Wagon 1 (2500 lbs: bulk grain, forage)
- Scout Horses (4 scouts on personal mounts)
Total passengers: 12 (3 guards, 4 handlers, 5 support/scouts)
Total animals: 10 (4 horses, 6 mules)

MISSION: Respond to goblin activity report
DESTINATION: Blackstone Ravine (1.2 miles south of Crossroads)

SCHEDULE:
- Immediate deployment (emergency state)
- No planned resupply (carry what needed)
- Night travel permitted (military protocol)
- Return to base within 48 hours

MOVEMENT:
Base speed: 3.0 mph (military organization)
Cargo utilization: 40% (light travel loads) → ×0.95
Terrain: MAJOR_ROAD → ×1.0
Weather: NIGHT travel → ×0.40 (but urgent, override)
Season: SPRING → ×1.2 (muddy) but military discipline → effective ×0.85
Effective speed: ~2.4 mph (reduced for night safety)

For 1.2 mile journey:
1.2 / 2.4 = 0.5 hours = 30 minutes

ACTUAL PLAYTHROUGH:
- Departs: 11 PM from Crossroads barracks (urgent orders)
- Night travel with full light discipline: lanterns
- En route: No encounters (clear road, familiar patrol area)
- Arrives Blackstone Ravine: 11:30 PM
- Setup camp: Defensive perimeter established
- Duty: Night watch rotation, preparation for dawn scout
- Morning: Day light reconnaissance, encounter resolution
```

### Example 3: Settler Caravan (Multi-Day Journey)

```
CARAVAN: "Westward Settlers' Guild"
TYPE: SETTLER
MASTER: Guild Master Torvin (NPC)

VEHICLES:
- Settler Wagon 1 (3000 lbs: family possessions)
- Settler Wagon 2 (3000 lbs: family possessions)
- Settler Wagon 3 (3000 lbs: animals, animals)
- Supply Wagon (2500 lbs: preserved food, tools)
Total passengers: 24 (2 families + support)
Total animals: 14 (8 oxen for wagons, 6 pack animals)

DESTINATION: Tiny Stump (frontier settlement)
DISTANCE: 5.3 miles (via Western Branch)
GOAL: Establish new settlement/homestead

SCHEDULE (Relaxed, Safe):
Day 1: Eldridge → Harrow Meadow (0.2 mi, 0.1 hrs) → CAMPING
       Rest overnight, animals graze

Day 2: Harrow Meadow → Verdant Pasture (0.4 mi, 0.25 hrs)
       Shrine Clearing (0.8 mi, 0.5 hrs combined)
       → CAMPING at Shrine Clearing
       Rest overnight, spiritual services, community bonding

Day 3: Shrine → Crossroads via East Road (1.2 mi, 0.7 hrs)
       → AT_NODE (Crossroads) major hub
       Rest/resupply: 8 hours (food, animal feed, family needs)

Day 4: Crossroads → Western Branch Meadow (1.5 mi, 0.9 hrs)
       → CAMPING (planned overnight)

Day 5: Western Branch Meadow → Tiny Stump (2.0 mi, 1.2 hrs)
       → ARRIVAL at frontier settlement
       Total travel: 5.3 miles over 5 days

MOVEMENT CALCULATIONS (Day 1 detailed):
Base: 2.0 mph (heavy settler wagons)
Cargo: 85% full → ×0.70
Terrain: SECONDARY_ROAD (Western Branch) → ×0.85
Weather: CLEAR → ×1.0
Season: SPRING → ×1.2 (muddy penalty)
Fatigue: Fresh morning → ×1.0
Morale: Good (hopeful) → ×1.0
EFFECTIVE = 2.0 × 0.70 × 0.85 × 1.0 × 1.2 × 1.0 × 1.0 = 1.43 mph

For 0.2 mile camp approach:
0.2 / 1.43 = 0.14 hours ≈ 8 minutes (short opening leg)

ACTUAL PLAYTHROUGH:
- Depart: Eldridge 6 AM (families sad leaving homes)
- Arrive Harrow: 6:08 AM
- Rest day: Farming families help Harrow family with spring planting
- Relationship: Eldridge settlers improve trust with Harrow family
- Morale: +0.10 (community service feels good)
- Depart next morning: 6 AM

Day 2 movement: 2 miles, 1.4 hours travel
- Arrive Shrine: 7:25 AM
- Brother Aldwin greets: Offers blessing ceremony (+morale)
- Families participate in spiritual service (1 hour)
- Depart: 8:30 AM toward Crossroads
- Additional travel: 1.2 miles, 0.85 hours
- Arrive Crossroads: 9:20 AM
- Immediate: Rest required (children tired)
- Rest/resupply: 8 hours at Crossroads hub
- Depart next day: 6 AM (refreshed, new supplies acquired)

Day 3: Crossroads → Western Branch Meadow
- Movement: 1.5 miles, 1.1 hours
- Arrive: 7:06 AM
- Camp setup: Families establish evening camp
- Preparation: Scouts ahead for water, firewood
- Evening: Community meal, campfire gathering
- Morale: Bonding time increases group cohesion +0.05

Day 4: Final approach to Tiny Stump
- Movement: 2.0 miles, 1.5 hours
- Arrive: 7:30 AM
- Settlement master greets: "Welcome to Tiny Stump"
- Setup: New arrivals begin integration into settlement

TOTAL TIME: 5 real days (4 days travel + setup, 1 day rest buffer)
SUPPLIES CONSUMED: 4 days worth (planning for 6 days = 2 days buffer)
RELATIONSHIP BUILDING: +0.15 morale from community stops
GROUP CONDITION: Arrived well-rested, cohesive, ready to build
```

---

## SYSTEM STATES & DECISION FLOW

### Complete State Diagram

```
    START (CREATED)
        ↓
    [Assign master, vehicles, supplies]
        ↓
    AT_NODE (initial)
    ├─ [Rest period, 2-12 hours]
    ├─ [Resupply: food, water, animal feed]
    ├─ [NPC events: arrivals, departures]
    ├─ [Encounter checks: quest hooks, news]
    └─ → TRAVELING [When departure time reached]
        
    TRAVELING
    ├─ [Active movement toward destination]
    ├─ [Every 0.5 mi: encounter check]
    ├─ [Every hour: morale event check]
    ├─ [Speed calculation with all modifiers]
    ├─ [Time tracking: progress toward destination]
    ├─ → AT_NODE [When arriving at waypoint]
    ├─ → CAMPING [If emergency (injury, hazard)]
    └─ → STOPPED [If route blocked - manual recovery]
    
    CAMPING
    ├─ [Emergency/temporary rest in open]
    ├─ [4-12 hour duration]
    ├─ [Higher hazard risk]
    ├─ [Night encounter checks: 25% per 4 hrs]
    ├─ [Animals get 80% rest benefit]
    ├─ [Morale penalty: -0.05]
    ├─ → TRAVELING [Resume journey after emergency resolved]
    ├─ → AT_NODE [Decide to go to nearest waypoint instead]
    └─ → CAMPING [Extended - new emergency develops]
    
    COMPLETED
    ├─ [Final destination reached]
    ├─ [Archive: store in completed caravans]
    └─ [Retain: event log for historical tracking]
    
    CANCELLED
    ├─ [Manual cancellation by admin/master]
    └─ [Retain: event log, note reason]
```

---

## SYSTEM CONSTRAINTS & LIMITS

### Hard Limits

```
ANIMAL_FATIGUE_CONSTRAINT:
- Cannot travel if any animal_fatigue > 0.95
- Animals collapse at 1.0, requiring 12+ hours recovery
- System prevents cruel overuse of animals

DAYLIGHT_CONSTRAINT (Merchants/Settlers):
- Cannot depart if arrival time > sunset (except military/couriers)
- Forces strategic planning of multi-day journeys
- Night travel available ONLY for military, couriers, urgent

SUPPLY_CONSTRAINT:
- Cannot reach distant waypoint without sufficient food/water
- Dying of thirst/hunger creates emergency camp state
- Forces resupply stops at known locations

MORALE_CONSTRAINT:
- If morale < 0.2: Group threatens to disband
- Caravan forced to halt at nearest settlement for recovery
- Days required to recover: ceil(abs_morale_deficit * 4)

CARGO_CAPACITY_CONSTRAINT:
- Cannot carry more than 120% vehicle capacity
- Exceeding capacity: 0.50 speed multiplier (severely limited)
- Encourages realistic logistics planning

TIME_CONSTRAINT:
- Game datetime advances continuously
- Cannot "wait forever" at locations (seasonal changes, NPC interactions)
- Simulated world continues regardless of player action
```

### Soft Recommendations

```
These aren't enforced but affect gameplay quality:

DISTANCE_RECOMMENDATION:
- Optimal daily travel: 5-8 miles with rest
- Too short (<2 mi): Inefficient, wastes time
- Too long (>12 mi): Exhausting, animal fatigue risk

REST_RECOMMENDATION:
- Minimum safe rest: 4 hours
- Comfortable rest: 6-8 hours
- Full recovery rest: 10-12 hours

MORALE_MANAGEMENT:
- Monthly morale check: If <0.5, offer pleasant stops
- Shrines, settlements, successful trades: morale boosters
- Bandits, failed trades, hazards: morale penalties

ANIMAL_CARE:
- Every 2 days: Full pasture rest recommended
- Rivers/streams every 4 hours minimum
- Peak fatigue > 0.7: Reduce travel speed or rest
```

---

## IMPLEMENTATION CHECKLIST

### Phase 1: Core Framework (COMPLETE THIS FIRST)
- [ ] Caravan object schema finalized
- [ ] Vehicle template created
- [ ] State machine logic coded (AT_NODE, TRAVELING, CAMPING transitions)
- [ ] Speed calculation system implemented
- [ ] Modifier matrix system functional
- [ ] Time tracking system (game datetime integration)
- [ ] Distance calculations between all waypoints
- [ ] Basic API endpoints operational

### Phase 2: Movement & Navigation
- [ ] Movement speed calculation verified with examples
- [ ] Route finding algorithm (shortest safe path)
- [ ] Waypoint sequencing (multi-stop journeys)
- [ ] Estimated arrival time calculations
- [ ] Actual position tracking during travel

### Phase 3: Rest Stop Interaction
- [ ] Rest stop arrival triggers
- [ ] Service availability check
- [ ] Supply acquisition system
- [ ] Animal care/rest system
- [ ] Cost calculations for services
- [ ] NPC interaction at rest stops

### Phase 4: Events & Encounters
- [ ] Distance milestone event triggers
- [ ] Hazard zone checks during travel
- [ ] Encounter generation (bandits, merchants, NPCs)
- [ ] Weather change events
- [ ] Animal incident events
- [ ] NPC relationship events

### Phase 5: Integration
- [ ] Integration with Road Network data
- [ ] Integration with NPC system
- [ ] Integration with Settlement system
- [ ] Integration with Time/Calendar system
- [ ] Integration with Weather system (if exists)
- [ ] Integration with Player party system (for interactions)

### Phase 6: Testing
- [ ] Load test: 10 simultaneous caravans
- [ ] Stress test: Speed calculations under load
- [ ] Edge case: Caravan stranded (supplies depleted)
- [ ] Edge case: Animals exhausted (collapse recovery)
- [ ] Edge case: Morale crisis (mutiny recovery)
- [ ] Integration test: Multi-system interaction

---

## PRODUCTION DEPLOYMENT NOTES

### Performance Optimization

```
CARAVAN_TICK (most frequent operation):
Recommended frequency: Every GAME_MINUTE or GAME_HOUR
Cache calculations:
- Store effective_speed for duration of segment
- Store current_hazard_zone (only recalculate on distance mile change)
- Store weather_modifier (update on weather events)

Database queries:
- Bulk load all active caravans once per game-hour
- Store in memory during tick cycle
- Write updates back in batch operation (every game-hour)
- Archive completed caravans weekly

API request optimization:
- Combine multiple caravan updates in single batch request
- Use compression for large caravan arrays
- Implement caching for frequently accessed waypoint data
```

### Monitoring & Analytics

```
TRACK FOR GAME BALANCE:
- Average caravan completion time (should be 2-5 days)
- Encounter rate during travel (should be 10-25% per journey)
- Morale degradation rate (should take 3+ days to reach crisis)
- Animal fatigue accumulation (should require rest every 2 days)
- Economic impact (caravan profits/losses affecting settlement economy)

ALERTS FOR SYSTEM HEALTH:
- Caravan taking >2 game-weeks to complete journey (likely stuck)
- Caravan morale negative (mutiny risk)
- Animal fatigue >0.95 for >4 hours (collapse risk)
- Supplies <1 day remaining (starvation risk)
```

---

**CARAVAN SYSTEM FRAMEWORK COMPLETE**

This production-grade system provides:
✅ Universal template for any group movement
✅ Flexible state machine (3 states handle all scenarios)
✅ Dynamic speed calculations (realistic modifiers)
✅ Time integration (game datetime drives all systems)
✅ Extensible event hooks (for encounters, hazards, quests)
✅ Road network integration (uses existing waypoint data)
✅ NPC system integration (caravan masters, roles, relationships)
✅ Ready for military convoys, merchant caravans, settler groups, courier systems, adventuring parties, refugee columns

Ready for implementation and integration with AnythingLLM vector database.