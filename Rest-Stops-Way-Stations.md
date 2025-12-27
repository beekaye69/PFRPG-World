# POCKET FANTASY RPG - REST STOPS & WAY-STATIONS COMPLETE DATA
## Detailed Location Infrastructure

**Type:** Game Data - Location Systems  
**Status:** Production Ready - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Complete operational data for all rest stops, way-stations, and safe points

---

## REST STOP FRAMEWORK

### Rest Stop Classification System

```
REST_STOP_TYPES:

TYPE_SETTLEMENT (Large):
- Features: Inn, tavern, stable, guards, marketplace
- Services: FULL_SERVICES (all available)
- Rest capacity: 20+ people comfortably
- Examples: Eldridge (RS_1), Kilhel (RS_7), Crossroads (RS_6)
- Tax: 15% on cargo value
- Stay comfort: High (morale +0.05)

TYPE_MAJOR_HUB (Medium):
- Features: Basic inn/tavern, stables, water, market
- Services: STANDARD_SERVICES (most available)
- Rest capacity: 10-15 people
- Examples: Millbrook Hold (RS_4), Thornbush Holdings (RS_5)
- Tax: 5-10% on cargo
- Stay comfort: Medium (morale no change)

TYPE_MINOR_WAYPOINT (Small):
- Features: Basic shelter, water, emergency supplies only
- Services: BASIC_SERVICES (water, food, animal care minimal)
- Rest capacity: 5-8 people
- Examples: Rest Stop 2, Rest Stop 8
- Tax: 0% (no government)
- Stay comfort: Low (morale -0.02)

TYPE_SHRINE (Spiritual):
- Features: Religious building, meditation space, blessing services
- Services: SPIRITUAL_SERVICES (blessing, healing, counsel)
- Rest capacity: 10-12 people
- Examples: Shrine Clearing (CA_3)
- Tax: Donation-based (0-20 gp suggested)
- Stay comfort: High for spiritual (morale +0.05, +0.03 to faith stats)

TYPE_CAMP_AREA (Emergency):
- Features: Open space, water source, no structures
- Services: NONE (natural resources only)
- Rest capacity: Unlimited (outdoor)
- Examples: Verdant Pasture (CA_1), Northern Meadow (CA_8)
- Tax: None
- Stay comfort: Poor (morale -0.05)
```

---

## MAJOR SETTLEMENTS - DETAILED

### RS_1: ELDRIDGE (Home Base Settlement)

```
SETTLEMENT_DATA:
├─ Type: Settlement (Tier 1)
├─ Population: 800-1,000 people
├─ Government: Democratic council (Merchant-led)
├─ Primary economy: Trade, agriculture
├─ Military: Town guard (15 people)
├─ Location: Western region, major road crossroads

INFRASTRUCTURE:

MAIN_INN:
name: "The Traveler's Rest"
keeper: "Innkeeper Marek" (human, age 45, friendly)
capacity: 30 rooms
pricing:
  - Basic room: 1 gp/person/night
  - Quality room: 2 gp/person/night
  - Group discount: 15% for 5+ people
services:
  - Meals: 2 gp/person/day (included in basic room)
  - Hot baths: 1 gp/person
  - Stable: 1 gp/animal/night
  - Laundry: 2 gp/batch
quality: GOOD (clean, safe, warm)
specialties: Famous for stew, trading hub information

TAVERN:
name: "The Golden Griffin"
keeper: "Bartender Torvin" (dwarf, age 67, talkative)
specials:
  - Local ales: 4 cp/mug
  - Mead: 1 gp/mug
  - Wine: 2 gp/glass
food:
  - Simple meals: 5-8 gp
  - Tavern pies: 1 gp each
entertainment:
  - Live music: Thursdays & Sundays
  - Bard stories: Regular (free)
  - Games: Dice, cards, board games available
rumors: Hub for local information, gossip trades freely

MARKETPLACE:
primary_merchants:
  - Produce vendor: Fresh vegetables, fruits (seasonal)
  - Grain merchant: Bulk supplies
  - Leather worker: Quality hides, equipment
  - Blacksmith: Weapons, tools, repairs
  - Herb seller: Medicinal plants, cooking herbs
general_pricing:
  - 10-15% above base (convenience premium)
  - Negotiable for bulk purchases
market_days: Mondays, Wednesdays, Saturdays (busiest)

STABLE:
operator: "Stableman Willem" (human, age 52, expert care)
capacity: 40 animals
services:
  - Basic stabling: 1 gp/animal/night
  - Premium care: 1.5 gp/animal/night (grooming, special feed)
  - Emergency surgery: 50+ gp (available for injured animals)
reputation: Best animal care in region (highly recommended)

MILITIA_BARRACKS:
commander: "Captain Thorne" (human, age 52, stern, organized)
personnel: 15 guards
stationed_here: Full-time garrison
services_for_caravans:
  - Escort hire: 10 gp per guard per day
  - Escort package: 100 gp for 5-day protection
  - Information: Free intel on route conditions
  - Emergency support: Available for crisis (guards available for hire)

REST_STOP_SERVICES:

REPAIR_SERVICES:
├─ Wagon repair: 20-100 gp (depends on damage)
├─ Harness repair: 5-15 gp
├─ Wheel replacement: 30 gp per wheel
├─ Tool sharpening: 2-5 gp
└─ General maintenance: 10-30 gp

SUPPLY_PURCHASE_PRICES:
├─ Food: 1-2 gp per unit (standard to premium)
├─ Water: Free (well access)
├─ Animal feed: 0.5 gp per unit (grain), 1 gp per unit (hay)
├─ Medicine: 2-10 gp per item
├─ Tools: 5-50 gp per item
└─ Rope/cord: 1 gp per length

SPECIAL_SERVICES:
├─ Banking: Merchant council holds deposits (safe storage)
├─ Money exchange: 0% fee (official rate)
├─ Document notarization: 5 gp per document
├─ Legal contracts: 10 gp per contract (witness provided)
└─ Healing services: Herbalist available (5-20 gp per treatment)

REST_STOP_FEES:
├─ Basic stop (4 hours): 5 gp
├─ Standard overnight: 20 gp (caravanserai beds)
├─ Full service night: 30 gp (meals, animal care, comfort)
└─ Multi-day stay: 25 gp per day (good for travelers)

CARGO_TAXES:
├─ Outgoing: None (home settlement, supportive)
├─ Incoming (returning merchant): 5% (local tax, supportive)
└─ Foreign merchants: 10% (standard trade tax)

MORALE_EFFECTS:
├─ Eldridge crew at home: +0.20 morale (pride, family nearby)
├─ Returning caravan: +0.15 morale (successful trip, rest awaits)
├─ Extended stay: -0.02 morale per day after day 3 (wanting to move)
└─ Reputation at home: +0.05 morale (known/respected)

RELATIONSHIP_DATA:
├─ Innkeeper Marek: Friendly with merchants (0.75 relationship)
├─ Captain Thorne: Professional with caravans (0.70 relationship)
├─ Stableman Willem: Excellent with animal handlers (0.85)
└─ Merchant Council: Supportive of Eldridge Trade Consortium (0.90)

ARRIVAL_PROCEDURE:
1. Report to militia checkpoint (5 min)
2. Check in at caravanserai (inn) (10 min)
3. Stable animals (15 min)
4. Rest/resupply as needed
5. Depart only after approval (routine, 30 seconds)
```

### RS_6: CROSSROADS (Major Hub)

```
SETTLEMENT_DATA:
├─ Type: Major Hub (Tier 1)
├─ Population: 500-600 people
├─ Government: Militia-governed (Captain Thorne)
├─ Primary economy: Trade, caravansary services, military
├─ Military: Garrison (20 soldiers stationed)
├─ Location: Central region, critical road junction

INFRASTRUCTURE:

CARAVANSERAI:
name: "The Crossroads Caravanserai"
keeper: "Master Hadro" (half-elf, age 150, experienced, knowledgeable)
capacity: 50 rooms + large common areas
pricing:
  - Standard bed: 1 gp/person/night
  - Meals included: Yes (breakfast + dinner)
  - Common room: Free access (fireplace, seating, storytelling)
  - Stables: 1 gp/animal/night
services:
  - Laundry: 2 gp/batch
  - Hot water baths: 1 gp/person
  - Leather repair: 5-10 gp
  - Equipment storage: 2 gp/day (secure)
atmosphere: Bustling hub, merchants, mercenaries, travelers mixing
specialties: "Crossroads Stew" (famous), information exchange, adventurer recruitment

REST_STOP_SERVICES:

CARAVAN_SERVICES:
├─ Vehicle maintenance: 10-40 gp (average 25 gp)
├─ Animal medical: 5-20 gp (veterinary services)
├─ Supplies vendor: Complete stock (pricing: standard + 5%)
├─ Equipment merchant: Weapons, armor, tools (fair pricing)
└─ Information broker: 2-5 gp per rumor/intel

ARRIVAL_INSPECTION:
├─ Militia checkpoint: ~15 minutes
├─ Cargo documentation: Standard procedure
├─ Weapons registration: If needed
├─ Caravan credentials: Verified
└─ Cost: None (routine)

AVERAGE_STOP_COSTS:
├─ Caravanserai stay (1 night): 20 gp
├─ Animal feed/care: 10-15 gp
├─ Meal supplements: 5-10 gp
├─ Equipment/supply: 5-20 gp (as needed)
├─ Misc services: 5-10 gp
└─ TOTAL TYPICAL: 45-75 gp

MORALE_EFFECTS:
├─ At crossroads: Neutral (0.0 change)
├─ Well-rested: +0.02 morale (comfortable accommodations)
├─ Militia interaction: -0.02 morale (if any conflict), +0.02 (if helpful)
└─ Successful rest: +0.03 morale overall (good services)

RELATIONSHIP_DATA:
├─ Master Hadro: Friendly with all merchants (0.70 base)
├─ Captain Thorne: Professional, fair (0.65 relationship)
├─ Military guards: Professional distance (0.60 relationship)
└─ Crimson Blades (when present): Established relationship (0.75)

SPECIAL_FEATURES:

MERCENARY_RECRUITMENT:
- Crimson Blades have standing office here
- Available for hire: Standard rate 10 gp/day per combatant
- Contract negotiation: Happens at caravanserai
- Waiting time: Usually 1-2 day (check availability)

MILITARY_LIAISON:
- Captain Thorne available for briefings
- Militia escort hire: 10 gp/guard/day (standard)
- Intelligence sharing: Free (cooperation agreement)
- Urgent response: Available (militia priority)

MARKETPLACE:
- Active trading hub (100+ transactions daily)
- Prices: Competitive (standard +3%)
- Selection: Complete stock of common goods
- Market days: Daily (permanent merchants)
```

### RS_7: KILHEL (Major City)

```
SETTLEMENT_DATA:
├─ Type: Settlement (Tier 1 - Largest)
├─ Population: 2,000-2,500 people
├─ Government: Noble house (Duke's administration)
├─ Primary economy: Major trade hub, craftsmanship, military
├─ Military: City guard (60 soldiers) + militia
├─ Location: Eastern region, major road endpoint

INFRASTRUCTURE:

MAIN_INN:
name: "The Duke's Rest"
keeper: "Innkeeper Valdris" (human, age 68, distinguished)
capacity: 60 rooms (largest in region)
pricing:
  - Basic room: 1.5 gp/person/night
  - Quality room: 3 gp/person/night
  - Merchant suite: 5 gp/night (for caravan masters)
  - Meals: 2 gp/person/day (included)
services:
  - Premium meals: 5-10 gp extra
  - Hot baths: 1.5 gp/person
  - Stable: 1.5 gp/animal/night
  - Laundry: 3 gp/batch
  - Document notarization: 5 gp
reputation: Most prestigious inn in region, high standards

MARKETPLACE:
primary_merchants:
  - Silk merchants: Premium textiles (3-5 gp/unit, high quality)
  - Wine traders: Specialty wines (40-100 gp/crate)
  - Metalwork crafters: Quality weapons/tools (20-100+ gp)
  - Jewelers: Cut gems, jewelry (100-500+ gp per piece)
  - Spice merchants: Specialty imports (3-5 gp/unit, premium)
  - Craft artisans: Handmade goods (varying prices, high quality)
pricing:
  - Premium market: 10-20% above average (quality premium)
  - Specialty goods: 50-100% markup (rarity)
  - Bulk negotiation: Discounts available (20-30% for large orders)
market_quality: HIGHEST in region, curated goods, prestigious reputation

STABLE:
operator: "Master Stallion Keeper Aldris" (dwarf, age 156, expert)
capacity: 80 animals
services:
  - Standard stabling: 1.5 gp/animal/night
  - Premium care: 2.5 gp/animal/night
  - Veterinary surgery: 100+ gp (extensive services)
  - Animal training: 20+ gp/session
reputation: Finest animal care, noble families use this stable

MILITIA_BARRACKS:
commander: "Captain Aldwin" (human, age 55, stern military bearing)
personnel: 60 city guard + militia reserve
stationed_here: Full garrison
services_for_caravans:
  - Escort hire: 12 gp/guard/day (premium due to training)
  - Escort package: 250 gp for 5-day protection (discount)
  - Information: Free intel (military cooperation)
  - Emergency support: Priority response (city guard backing)

REST_STOP_SERVICES:

REPAIR_SERVICES:
├─ Master craftsman repairs: 50-200 gp (quality service)
├─ Standard repairs: 20-50 gp
├─ Emergency service: 1.5× cost (expedited)
├─ Specialized work: 100+ gp (intricate jobs)
└─ Quality guarantee: Work warranted for 1 year

SUPPLY_PURCHASE_PRICES:
├─ Food (premium): 2-3 gp per unit
├─ Wine/ale: 2-5 gp per unit
├─ Animal feed: 1 gp per unit (premium quality)
├─ Medicine: 5-20 gp per item (advanced healing available)
├─ Luxury goods: 10-100+ gp per item
└─ Specialty items: Varying prices (rare goods)

SPECIAL_SERVICES:
├─ Banking: City treasury (secure deposits)
├─ Money exchange: 1% fee (standard banking)
├─ Legal contracts: 15 gp (prestigious legal backing)
├─ Document authentication: 10 gp per document
├─ Noble introductions: 50-100 gp (networking service)
└─ Healing services: Certified healers (20-50 gp per treatment)

REST_STOP_FEES:
├─ Gate inspection: 10 gp mandatory (security check)
├─ Basic stop (4 hours): 10 gp
├─ Standard overnight: 30 gp (caravanserai)
├─ Full service: 40 gp (meals, care, comfort, services)
└─ Multi-day: 35 gp per day

CARGO_TAXES:
├─ Incoming: 15% on declared cargo value (mandatory)
├─ Outgoing: 0% (no export tax)
├─ Exception: Restricted goods (weapons, etc.) require permit (+5-20 gp fee)
└─ Tax collection: Gate checkpoint, automatic

MORALE_EFFECTS:
├─ Arrival at Kilhel: +0.05 morale (prestige, excitement)
├─ After successful trade: +0.10 morale (profitable venture)
├─ Extended stay (2+ nights): -0.02 morale per day (wanting movement)
└─ Departing after success: +0.12 morale (pride, profit)

RELATIONSHIP_DATA:
├─ Innkeeper Valdris: Professional (0.65 relationship)
├─ Captain Aldwin: Formal military (0.60 relationship)
├─ Marketplace merchants: Competitive but fair (0.60 relationship)
└─ Duke's administration: Neutral/professional (0.55 relationship)

ARRIVAL_PROCEDURE:
1. Gate checkpoint (mandatory inspection, 15-20 min)
2. Cargo documentation (tax assessment, 10-15 min)
3. Weapons check (if applicable, 5-10 min)
4. Check into inn (10 min)
5. Stable animals (15-20 min)
6. Begin trading/activities (rest dependent)
7. Departure (tax exit clearance, 10 min)
TOTAL_FIRST_ARRIVAL: 60-90 minutes
```

---

## MINOR WAYPOINTS & CAMPS

### RS_4: MILLBROOK HOLD

```
SETTLEMENT_DATA:
├─ Type: Major Hub (Tier 2)
├─ Population: 200-250 people
├─ Government: Village council (farmer-led)
├─ Primary economy: Agriculture, milling, local trade
├─ Location: Northern region, major road junction
├─ Key feature: Grain mill (regional grain hub)

MAIN_INN:
name: "The Miller's Daughter"
keeper: "Milady Petra" (human, age 40, warm)
capacity: 15 rooms
pricing:
  - Basic: 1 gp/person/night (meals included)
  - Meals supplement: 1 gp extra for premium
  - Stables: 0.8 gp/animal/night
  - Group rate: 10% discount for 5+

SERVICES:
├─ Grain trading: 0.8 gp/unit (excellent market)
├─ Milling service: 1 gp per batch (for grain processing)
├─ Animal feed: 0.5 gp/unit (excellent local supply)
├─ Tavern: Local ale (3 cp/mug)
└─ Information: Local farming gossip, road conditions

REST_STOP_COSTS:
├─ Basic stay: 15 gp
├─ Animal feed: 5 gp
├─ Services/supplies: 5-10 gp
└─ TOTAL: 25-30 gp

SPECIALIZATION:
- Excellent for grain resupply
- Good reputation with farmers
- Local market for produce
- Information hub for northern routes
```

### RS_5: THORNBUSH HOLDINGS

```
SETTLEMENT_DATA:
├─ Type: Major Hub (Tier 2)
├─ Population: 150-200 people
├─ Government: Manor house (noble estate)
├─ Primary economy: Herbal medicine, farming, hospitality
├─ Location: Southern region, forest edge
├─ Key feature: Herbalist center (renowned healer)

MAIN_LODGE:
name: "Thornbush Manor House"
keeper: "Lady Marta" (human, age 55, herbalist, caring)
capacity: 20 rooms
pricing:
  - Basic: 1 gp/person/night
  - Stables: 1 gp/animal/night
  - Healing services: 5-20 gp per treatment
  - Herb bundle: 2-5 gp per bundle

SERVICES:
├─ Herbalist consultation: 2 gp (advice on ailments)
├─ Healing potions: 10-30 gp per potion
├─ Herb supplies: 2-4 gp per unit (premium quality)
├─ Medical treatment: 5-20 gp per patient
└─ Tavern: Local honey mead (4 cp/mug)

REST_STOP_COSTS:
├─ Basic stay: 15 gp
├─ Healing consultation: 2-5 gp
├─ Services: 5-10 gp
└─ TOTAL: 22-30 gp

SPECIALIZATION:
- Excellent healing services
- Rare herb availability
- High-quality medicines
- Good for crew health recovery
```

### CA_1: VERDANT PASTURE

```
CAMP_DATA:
├─ Type: Camp Area (Emergency)
├─ Features: Open meadow, water stream, no structures
├─ Rest capacity: Unlimited (outdoor camping)
├─ Location: Southwestern approach to Eldridge

FACILITIES:
├─ Water: Stream access (good quality, fresh)
├─ Grazing: Excellent pasture for animals (+0.02 animal fatigue recovery)
├─ Shelter: None (outdoor only)
├─ Firewood: Readily available (forest edge)
├─ Security: Low (isolated area, low bandit risk)

CAMPING_COSTS:
├─ No fees (open public land)
├─ Optional: Payment to Harrow family (nearby) - 2-5 gp (goodwill)
└─ TOTAL: 0-5 gp

CAMP_QUALITY:
├─ Comfort: Poor (-0.05 morale from outdoor camping)
├─ Safety: Good (+0.02 morale from isolation)
├─ Rest quality: Fair (animals rest well, humans comfortable enough)
├─ Duration: Good for overnight or multi-day camp

MORALE_EFFECTS:
├─ Overnight camp: -0.03 morale (discomfort)
├─ Good weather: +0.02 morale (pleasant night)
├─ Bad weather: -0.08 morale (miserable conditions)
└─ Animal rest: +0.05 animal fatigue recovery (good grazing)

RELATIONSHIPS:
├─ Harrow Family: Can trade for supplies, goodwill payment appreciated
├─ Reputation bonus: +0.02 if generous to local family
└─ Future favor: Good relationship may provide emergency aid if needed
```

### CA_3: SHRINE CLEARING

```
CAMP_DATA:
├─ Type: Shrine (Spiritual center)
├─ Features: Religious building, meditation space, blessing services
├─ Rest capacity: 12 people (indoor), 30+ (outdoor)
├─ Location: Central region, forest clearing

FACILITIES:
├─ Shrine: Sacred space for prayer/meditation
├─ Brother Aldwin: Monk, herbalist, healer
├─ Shelter: Basic rooms (6 people), outdoor camping space
├─ Spring: Pure water source (medicinal properties)
├─ Library: Small collection of texts

SERVICES:

BLESSING_CEREMONY:
├─ Cost: Donation-based (5-20 gp suggested, optional)
├─ Duration: 20-30 minutes
├─ Effect: +0.05 morale (spiritual comfort)
├─ Hazard zone effect: -5% hazard encounter chance (divine protection, 2-3 days)
├─ Faith bonus: +0.03 to faith-based characters

HEALING_SERVICE:
├─ Cost: 5-10 gp per treatment
├─ Effect: Cure minor wounds, illness support
├─ Brother Aldwin: Skilled healer, kind demeanor (0.75 relationship)
└─ Reputation: Renowned throughout region

HERBAL_SUPPLIES:
├─ Cost: 2-4 gp per unit (premium quality)
├─ Specialties: Medicinal herbs, rare plants
├─ Reputation: Best herb quality in region

CAMPING_COSTS:
├─ Donation (suggested): 5 gp minimum (respectful)
├─ Shelter (indoor): 5 gp per person/night
├─ Outdoor camp: Free (optional donation appreciated)
├─ Services: Per above pricing
└─ TYPICAL: 15-25 gp for night

CAMP_QUALITY:
├─ Comfort: Good (modest but clean facilities)
├─ Spiritual: Excellent (+0.08 morale for spiritual crew)
├─ Safety: Excellent (sacred ground, protected)
├─ Rest: Very good (peaceful environment)

MORALE_EFFECTS:
├─ Spiritual blessing: +0.05 morale (group)
├─ Healing service: +0.05 morale (health restoration)
├─ Meditation time: +0.03 morale (spiritual peace)
├─ Generous donation: +0.08 morale (goodwill satisfaction)
└─ Dismissive attitude: -0.10 morale (spiritual offense)

RELATIONSHIPS:
├─ Brother Aldwin: Friendly with respectful travelers (0.75 base)
├─ Reputation: Word spreads about kind treatment/generous donations
├─ Future benefit: Brother Aldwin may provide aid in emergencies (established good will)
└─ Religious faction: +0.05 reputation with faithful

SPECIAL_NOTE:
- Brother Aldwin also available at other locations (mobile preacher)
- Always offers first assistance to those in genuine need (free if truly poor)
- Excellent source of regional information and wisdom
```

---

**REST STOP SYSTEM COMPLETE**

This framework provides:
✅ Complete settlement infrastructure
✅ Service pricing and availability
✅ NPC keeper details and relationships
✅ Morale effects per location
✅ Economic integration (supply costs, taxes)
✅ Special services and opportunities
✅ Camp area facilities
✅ Arrival/departure procedures
✅ Long-term visit consequences
✅ Reputation development possibilities