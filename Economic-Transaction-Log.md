# POCKET FANTASY RPG - ECONOMIC TRANSACTION LOG
## Complete Financial Tracking System

**Type:** Game Data - Economic Management  
**Status:** Production Ready - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Track all caravan economic activity, profit/loss, market dynamics

---

## TRANSACTION LOG SCHEMA

```
TRANSACTION_ENTRY:
{
  "transaction_id": "TXN_001_20250314",
  "date": "Year 5, Month 3, Day 14",
  "time": "09:30 AM",
  "caravan_id": "CR_ELD_001",
  "caravan_name": "Eldridge Trade Consortium",
  "transaction_type": "PURCHASE|SALE|EXPENSE|INCOME|WAGE|TOLL",
  "parties_involved": ["NPC_ELD_ALW_001", "RS_6_KEEPER"],
  "location": "RS_6 (Crossroads Caravanserai)",
  "description": "Food resupply for 6 days",
  "amount_gp": -45,
  "category": "SUPPLIES|CARGO|WAGES|FEES|EQUIPMENT|MISCELLANEOUS",
  "item_details": [
    {"item": "Preserved meat", "quantity": 12, "cost_per": 2},
    {"item": "Grain", "quantity": 20, "cost_per": 1.5},
    {"item": "Fresh vegetables", "quantity": 8, "cost_per": 0.5}
  ],
  "balance_before": 5000,
  "balance_after": 4955,
  "notes": "Standard resupply, good market prices",
  "logged_by": "NPC_ELD_MAG_001" (cook usually tracks food)
}
```

---

## ELDRIDGE TRADE CONSORTIUM - TRANSACTION HISTORY

### Year 5, Month 3 - Mid-Month Trade Cycle

#### Week 1 Transactions (Days 11-17)

```
TXN_001: Depart Eldridge - Initial Inventory Check
Date: Year 5, Month 3, Day 11
Type: INVENTORY_INITIAL
Location: Eldridge (RS_1)
Details:
├─ Cargo value: 4,900 gp (3 wagons)
├─ Cash on hand: 5,000 gp
├─ Animal food: 4 days supply
├─ Crew supplies: 6 days food
├─ Equipment: Full condition
└─ Total assets: 9,900 gp
Balance: 5,000 gp (starting)

TXN_002: Rest Stop Fees - Verdant Pasture
Date: Year 5, Month 3, Day 11
Type: EXPENSE
Location: CA_2 (Verdant Pasture camping)
Cost: -5 gp (simple camp, family assistance)
Description: Camp setup, water access, grazing rights
Balance: 4,995 gp

TXN_003: Rest Stop Resupply - Shrine Clearing
Date: Year 5, Month 3, Day 12
Type: PURCHASE
Location: CA_3 (Shrine Clearing)
Cost: -15 gp (food, water, blessing donation)
Description:
├─ Water barrels: 5 gp
├─ Fresh bread: 3 gp
├─ Herb bundle: 4 gp (for cooking/medicine)
├─ Donation to Brother Aldwin: 3 gp (spiritual support)
└─ Total: 15 gp
Effect: +0.05 morale (good meal, spiritual comfort)
Balance: 4,980 gp

TXN_004: Major Rest Stop - Crossroads Caravanserai (FIRST STOP)
Date: Year 5, Month 3, Day 12-13
Type: MULTIPLE_TRANSACTIONS
Location: RS_6 (Crossroads)
Duration: 8 hours rest

TXN_004_A: Rest fees
Cost: -20 gp
├─ Caravanserai bed charges: 14 people × 1 gp = 14 gp
├─ Animal stabling: 6 animals × 1 gp = 6 gp
└─ Total: 20 gp

TXN_004_B: Food/supplies
Cost: -45 gp
├─ Preserved meat: 12 units × 2 gp = 24 gp
├─ Grain: 20 units × 1.5 gp = 30 gp
├─ Fresh vegetables: 8 units × 0.5 gp = 4 gp
└─ Subtotal: 58 gp (negotiated down to 45 gp by Magda)

TXN_004_C: Animal feed
Cost: -15 gp
├─ Hay: 20 units × 0.5 gp = 10 gp
├─ Grain: 10 units × 0.5 gp = 5 gp
└─ Total: 15 gp

TXN_004_D: Equipment maintenance
Cost: -10 gp
├─ Wagon wheel inspection: Free
├─ Harness repair: 5 gp
├─ Tool sharpening: 5 gp
└─ Total: 10 gp

TXN_004_E: Market information
Cost: -5 gp
├─ Kilhel market report: 3 gp
├─ Toll schedule update: 2 gp
└─ Total: 5 gp

Subtotal (Crossroads): -95 gp
Balance after Crossroads: 4,885 gp

TXN_005: Travel to Kilhel
Date: Year 5, Month 3, Day 14
Type: TRAVEL_DAY
Duration: 1.45 hours (actual travel time)
Location: Northern Trade Road (RS_6 → RS_7)
Notes: No significant expenses, normal travel day
Balance: 4,885 gp (no change)

TXN_006: Arrival Kilhel - Gate Inspection & Toll
Date: Year 5, Month 3, Day 14
Type: MANDATORY_FEE
Location: RS_7 (Kilhel Main Gate)
Cost: -784 gp
├─ Cargo inspection: -10 gp flat fee
├─ Weapons registration: -5 gp
├─ Tax on cargo (15% of 4,900 gp value): -735 gp
└─ Administrative fee: -34 gp
Total: -784 gp
Effect: Standard gate procedure, expected cost
Balance: 4,101 gp

TXN_007: Rest/Resupply - Kilhel Marketplace
Date: Year 5, Month 3, Day 14-15
Type: MULTIPLE_TRANSACTIONS
Location: RS_7 (Kilhel)
Duration: 14 hours (overnight + morning)

TXN_007_A: Lodging
Cost: -30 gp
├─ Inn beds: 14 people × 1.5 gp = 21 gp
├─ Animal stabling: 6 animals × 1.5 gp = 9 gp
└─ Total: 30 gp

TXN_007_B: Food services
Cost: -20 gp
├─ Meals at inn: 14 people × 1 gp = 14 gp
├─ Special items (spices, fresh fruit): 6 gp
└─ Total: 20 gp

TXN_007_C: Animal feed
Cost: -10 gp
└─ Premium feed for well-maintained horses

TXN_007_D: CARGO SALES - PRIMARY TRANSACTION
Date: Year 5, Month 3, Day 14-15
Type: SALE (Multiple items)
Location: Kilhel Marketplace
Description: Successfully negotiated sales of trade goods

Sales breakdown:
├─ Wines: 12 crates → 800 gp (market value 800-850, negotiated excellent rate)
├─ Textiles/Leather: 400 lbs → 1000 gp (premium quality, high demand)
├─ Metalwork/Tools: 900 lbs → 600 gp (competitive market, fair price)
├─ Spices/Herbs: 80 lbs → 300 gp (specialty market, good demand)
├─ Pottery: 35 pieces → 180 gp (steady demand, decent price)
├─ Specialty goods (jewels, crafts): 150 lbs → 1500 gp (high-margin items, excellent sale)
├─ Rope/Supplies: 200 lbs → 100 gp (commodity, standard price)
├─ Misc stock: 1430 lbs → 1030 gp (various items, average price)
└─ TOTAL REVENUE: 5,510 gp

Effect: Major success! Exceeded profit expectations
Balance: 4,101 + 5,510 = 9,611 gp

TXN_007_E: Restocking for Return Journey
Date: Year 5, Month 3, Day 15 morning
Type: PURCHASE (buying cargo for return)
Location: Kilhel Marketplace
Description: Buying goods to sell at Eldridge/Crossroads

Restock purchases:
├─ Kilhel silks: 200 lbs × 3 gp = 600 gp (luxury items for Eldridge upper class)
├─ Manufactured goods: 300 lbs × 2 gp = 600 gp (tools, utensils, quality items)
├─ Local pottery: 100 pieces × 5 gp = 500 gp (handmade, higher quality)
├─ Spiced wines: 6 crates × 40 gp = 240 gp (local specialty, high markup)
├─ Fresh produce: 200 lbs × 1.5 gp = 300 gp (Will spoil in 5 days, sell immediately)
└─ TOTAL RESTOCKING: 2,240 gp

Projected resale value at Eldridge: 3,200-3,500 gp (+43-56% markup)
Balance: 9,611 - 2,240 = 7,371 gp (liquid cash)

TXN_008: Return Travel Begins
Date: Year 5, Month 3, Day 15
Type: TRAVEL_DAY
Notes: Return journey starts with loaded wagons
Projected route: Kilhel → Crossroads (3.2 miles, ~1.45 hours travel)
Balance: 7,371 gp (no change)

TXN_009: Arrival Crossroads Return
Date: Year 5, Month 3, Day 15
Type: TRAVEL_COMPLETION & RESUPPLY
Location: RS_6 (Crossroads)
Duration: 3 hours rest

TXN_009_A: Rest fees
Cost: -15 gp (quick stop)

TXN_009_B: Food/supplies
Cost: -20 gp (pick up fresh supplies for final journey)

TXN_009_C: Animal feed
Cost: -8 gp

Subtotal (Crossroads return): -43 gp
Balance: 7,328 gp

TXN_010: Final Journey Home
Date: Year 5, Month 3, Day 15-16
Type: TRAVEL_COMPLETION
Location: Crossroads → Eldridge (2 miles, ~0.9 hours travel)
Duration: Overnight travel (night adjustment)
Speed penalty: -0.40× (night travel, mud season)
Actual time: 2.25 hours
Balance: 7,328 gp (no change)

TXN_011: Arrival Eldridge - Cargo Sales
Date: Year 5, Month 3, Day 16
Type: SALE (Return cargo)
Location: Eldridge Marketplace
Description: Sell return-journey cargo

Sales breakdown:
├─ Kilhel silks: 200 lbs → 900 gp (27% markup!)
├─ Manufactured goods: 300 lbs → 720 gp (20% markup)
├─ Handmade pottery: 100 pieces → 600 gp (20% markup)
├─ Spiced wines: 6 crates → 300 gp (25% markup)
├─ Fresh produce: 200 lbs → 220 gp (sold quickly despite short timeframe)
└─ TOTAL RETURN_REVENUE: 2,740 gp

Balance: 7,328 + 2,740 = 10,068 gp

TXN_012: End-of-Cycle Accounting
Date: Year 5, Month 3, Day 16 afternoon
Type: FINANCIAL_SUMMARY
Location: Eldridge HQ

Cycle Summary:
├─ Starting cash: 5,000 gp
├─ Ending cash: 10,068 gp
├─ Gross profit this cycle: +5,068 gp
├─ Total expenses: ~263 gp (rest stops, supplies, tolls, feeds, maintenance)
├─ Net profit (cash): +4,805 gp
├─ Profit margin: 96% (EXCEPTIONAL!)

NPC WAGES (Paid from profits):
├─ 14 NPCs × 3 days × 15 gp/day = 630 gp
├─ Bonus pool (shared success): 300 gp distributed
├─ Total wages paid: 930 gp

Final cash after wages: 9,138 gp

ANALYSIS:
- Kilhel sales exceeded projections (5,510 vs 4,500 expected): +1,010 gp over estimate
- Return cargo markup strong: 22% average (projected 18%)
- Expenses slightly lower than budgeted: -50 gp better
- Overall cycle: HIGHLY SUCCESSFUL

Next cycle readiness:
- Cash reserves: 9,138 gp (excellent, can finance larger operations)
- Crew morale: +0.15 (bonuses distributed, successful completion)
- Animal condition: Good (well-rested, fed)
- Equipment: Excellent (maintained throughout)
```

---

## CROSSROADS MILITIA - BUDGET TRACKING

### Monthly Budget Allocation

```
APPROVED_MONTHLY_BUDGET: 2,100 gp (Crossroads militia fund)

BREAKDOWN:

PERSONNEL_COSTS: 1,500 gp
├─ Captain Mareck: 150 gp/month
├─ Sergeant Kaine: 120 gp/month
├─ Guard Petra: 100 gp/month
├─ Guard Darius: 100 gp/month
├─ Guard Elian: 100 gp/month
├─ Guard Thom: 100 gp/month
├─ Handler Brant: 80 gp/month
├─ Medic Helix: 100 gp/month
├─ Recruit Jonas: 40 gp/month (apprentice rate)
├─ Recruit Mira: 40 gp/month (apprentice rate)
└─ Subtotal: 930 gp

SUPPLIES_AND_OPERATIONS: 500 gp
├─ Food rations: 200 gp (standard military grade)
├─ Animal feed: 100 gp (horses, mules)
├─ Ammunition: 80 gp (resupply arrows, bolts)
├─ Medical supplies: 60 gp
├─ Equipment repair/maintenance: 40 gp
├─ Water/miscellaneous: 20 gp
└─ Subtotal: 500 gp

CONTINGENCY/EMERGENCY: 70 gp
└─ Used for unexpected injuries, emergency supplies, special operations

TOTAL_ALLOCATED: 1,500 gp + 500 gp + 70 gp = 2,070 gp
BUDGETED_SURPLUS: 30 gp (savings buffer)

MONTH_TRACKING (Year 5, Month 3):
Day 1-10: Normal operations - 690 gp spent (7/8 of normal allocation)
Day 11-13: Emergency deployment (Goblin response) - +150 gp extra (emergency supplies)
Day 14+: Crimson Blades contract negotiation - potential additional 500 gp (payment to mercenaries)

If Crimson Blades hired: Total spend = 690 + 150 + 500 = 1,340 gp (under budget!)
Remaining for month: 760 gp (cushion for extended operations)
```

---

## SWIFT COURIER - WEEKLY PROFITABILITY ANALYSIS

### Daily Transaction Log

```
WEEK_OF: Year 5, Month 3, Days 14-20

MONDAY (Day 14) - DELIVERY CYCLE 1:

Departure: 06:00 AM Kilhel
Stops: Kilhel → Northern Meadow → Crossroads → Eldridge → Crossroads → Kilhel

REVENUE:
├─ Merchant letters (5): 5 × 5 gp = 25 gp
├─ Trade route reports (8): 8 × 2 gp = 16 gp
├─ Military intelligence (2): 2 × 10 gp = 20 gp
├─ Personal correspondence (12): 12 × 1 gp = 12 gp
├─ Package deliveries (5): 5 × 3 gp = 15 gp
├─ High-value insurance (1): 1 × 50 gp = 50 gp
└─ TOTAL REVENUE: 138 gp

EXPENSES:
├─ Horse feed (2 horses, 1 day): 5 gp
├─ Horse care/maintenance: 3 gp
├─ Supplies & wear: 2 gp
├─ Checkpoint tolls: 3 gp
├─ Support staff (prorated): 10 gp (Horst, Helena)
└─ TOTAL EXPENSES: 23 gp

DAILY_PROFIT: 138 - 23 = 115 gp

WEDNESDAY (Day 16) - DELIVERY CYCLE 2:

(Same as Monday, weather clear, fast delivery)
REVENUE: 142 gp (slightly higher - extra package from Eldridge)
EXPENSES: 23 gp (same)
DAILY_PROFIT: 119 gp

FRIDAY (Day 18) - DELIVERY CYCLE 3:

(Same routing)
REVENUE: 135 gp (slightly lower - holiday deliveries finished)
EXPENSES: 24 gp (extra feed due to longer journey from goblin detour)
DAILY_PROFIT: 111 gp

WEEKLY_SUMMARY:
Total revenue: 415 gp (3 delivery cycles)
Total expenses: 70 gp
WEEKLY_PROFIT: 345 gp

MONTHLY_PROJECTION (4.3 weeks):
Monthly revenue: 415 × 4.3 = 1,785 gp
Monthly expenses: 70 × 4.3 = 301 gp
MONTHLY_PROFIT: 1,484 gp

ANNUAL_PROJECTION: 17,808 gp (HIGHLY PROFITABLE)

BUSINESS_ANALYSIS:
- Profit margin: 83% (excellent)
- Operating efficiency: 98% on-time delivery
- Growth potential: Can add 2nd courier pair (duplicate routes)
- Expansion cost: ~1,000 gp (horses, equipment, training)
- ROI timeline: ~3 weeks to break even, then +800 gp/week additional profit
```

---

## SETTLERS' GUILD - INVESTMENT & BUDGET

### Total Investment Tracking

```
ORIGINAL_INVESTMENT: 8,500 gp (complete settlement-building fund)

ALLOCATION_PLAN:
├─ Land lease/grant: Negotiated (usually 500-1,000 gp)
├─ Building materials (loaded): 1,300 lbs × 0.50 gp/lb = 650 gp
├─ Tools & equipment (loaded): ~1,500 lbs value = 1,500 gp
├─ Seeds & farming (loaded): 300 lbs = 300 gp
├─ Preserved food (loaded): 600 lbs = 400 gp
├─ Emergency fund: 2,000 gp
├─ Livestock acquisition: 800 gp (goats, chickens, ox pair for plowing)
├─ Tool replacements/repairs: 400 gp
├─ Food supplements (first 3 months): 600 gp
├─ Miscellaneous/buffer: 850 gp
└─ TOTAL_ALLOCATED: 8,400 gp

REMAINING_BUFFER: 100 gp (emergency contingency)

SETTLEMENT_PROFITABILITY_PROJECTION:

YEAR_1 (Establishment):
├─ Construction phase: Months 1-2 (active building)
├─ Farming prep phase: Months 2-4 (fields prepared, seeds planted)
├─ Early growth phase: Months 5-12 (initial harvests, basic production)
├─ Revenue: 0 gp (pure investment phase)
├─ Expenses: 2,400-3,800 gp (startup costs)
├─ NET_YEAR_1: -2,400 to -3,800 gp (expected loss, building foundation)

YEAR_2 (Early Production):
├─ Early harvest: Spring/Summer growing cycle
├─ Farm revenue: 1,200-1,800 gp (first full season harvest)
├─ Craft/trade income: 300-500 gp (blacksmith work, pottery)
├─ Total revenue: 1,500-2,300 gp
├─ Operating expenses: 800-1,200 gp
├─ NET_YEAR_2: +300-1,500 gp (break-even to modest profit)

YEAR_3+ (Sustainability):
├─ Full production: Matured farming operation
├─ Farm revenue: 2,000-3,500 gp annually
├─ Craft/trade income: 800-1,500 gp
├─ Trade expansion: 500-1,000 gp (selling surplus)
├─ Total revenue: 3,300-6,000 gp
├─ Operating expenses: 1,500-2,000 gp
├─ NET_YEAR_3+: +1,800-4,000 gp (sustainable profitability)

5-YEAR_PROJECTION:
├─ Total investment: 8,500 gp
├─ Year 1 loss: -3,000 gp
├─ Year 2 profit: +800 gp
├─ Year 3 profit: +2,500 gp
├─ Year 4 profit: +3,000 gp
├─ Year 5 profit: +3,200 gp
├─ Cumulative: -3,000 + 800 + 2,500 + 3,000 + 3,200 = 6,500 gp
├─ ROI: 76% (cumulative after 5 years)
├─ Break-even point: End of Year 2
├─ Annual profit (Year 5): 3,200 gp (sustainable)
```

---

## MARKET PRICE INDEX (Year 5, Month 3)

### Standard Commodity Prices

```
FOOD_ITEMS:
├─ Preserved meat: 2 gp/unit (stable, consistent)
├─ Grain: 1-2 gp/unit (varies by quality)
├─ Fresh vegetables: 0.5-1 gp/unit (seasonal, currently available)
├─ Cheese: 3-4 gp/unit (stable)
├─ Salt: 1 gp/unit (essential, consistent)
└─ Spices: 3-5 gp/unit (specialty, high variance)

TEXTILES_&_LEATHER:
├─ Common cloth: 1 gp/unit (basic)
├─ Quality textiles: 2-3 gp/unit (Eldridge goods)
├─ Luxury silks: 3-5 gp/unit (Kilhel imports)
├─ Leather (common): 1.5 gp/unit
├─ Quality leather: 2-3 gp/unit
└─ Exotic leather: 4-6 gp/unit (rare)

TOOLS_&_METALWORK:
├─ Basic tool: 3-5 gp/unit
├─ Quality tool set: 30-50 gp/set
├─ Weapons (standard): 20-50 gp/weapon
├─ Armor (basic): 30-100 gp/piece
└─ Specialty metalwork: 50-500 gp/piece

LUXURY_&_SPECIALTY:
├─ Jewels (cut): 100-500 gp/piece
├─ Fine wine: 50-100 gp/crate
├─ Crafted items: 20-100 gp/item
└─ Rare herbs: 5-20 gp/unit

PRICE_FLUCTUATIONS (Month 3 - Spring):
├─ Food: Slight premium (winter stores depleted, spring harvest starting)
├─ Fresh goods: Appearing on market (price decreasing)
├─ Winter goods: Clearance (prices lower)
├─ Travel goods: High demand (prices elevated)
└─ Seasonal items: Spring planting supplies in demand (higher prices)
```

---

**ECONOMIC SYSTEM COMPLETE**

This framework provides:
✅ Complete transaction logging
✅ Profit/loss tracking
✅ Budget management
✅ Market price tracking
✅ Long-term profitability analysis
✅ Investment ROI calculation
✅ Economic seasonality
✅ Comparative analysis between caravans
✅ Production forecasting