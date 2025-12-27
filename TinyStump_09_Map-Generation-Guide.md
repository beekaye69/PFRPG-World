# TINY STUMP SETTLEMENT - VISUAL MAP GENERATION GUIDE
## For Creating Your Own Cartography & AI-Assisted Mapping

**Purpose:** Specifications for map creation, location naming, scale reference  
**Output:** Creates foundation for digital/hand-drawn settlement maps  
**Integration:** Works with grid-based and narrative map systems  

---

## 1. CORE SETTLEMENT LAYOUT SPECIFICATIONS

### Grid Coordinates System (60ft grid squares)

**Settlement Bounds:** 300ft × 360ft (5 × 6 grid squares)
**Total Area:** ~18,000 sq ft (0.41 acres)
**Density:** ~2.5 persons per 1,000 sq ft

### Master Coordinate Map
```
     0    1    2    3    4
0   +----+----+----+----+
    | NW | C  | N  |    |
1   +----+----+----+----+
    | W  | MH | E  | NE |
2   +----+----+----+----+
    | SW | S  | SE |    |
3   +----+----+----+----+
    |    | S2 |    |    |
4   +----+----+----+----+
    |    | SF | AF |    |
5   +----+----+----+----+

Key: NW=Northwest, C=Center, N=North, etc.
     MH=Market Hall, SF=South Field, AF=Agriculture
```

### Quadrant Breakdown

**NORTHWEST (0,0-1,1):**
- Primary Storage Barn (0,0)
- Woodworking Shop (0.5,0.5)
- Miller's House & Mill (0,1)

**NORTH/CENTER (1,0-3,1):**
- Market Hall (main plaza) (2,0.5)
- Shrine (1.5,0.5)
- Water Well (2.5,0.75)

**NORTHEAST (3,0-4,1):**
- Blacksmith's Shop (3.5,0.5)
- Tannery/Leatherworks (4,0.75)

**WEST (0,1-1,2):**
- Settlement House 1 (0.25,1.5)
- Settlement House 2 (0.75,1.5)

**CENTER (1,1-3,2):**
- Community Hall (2,1.5)
- Livestock Pen (2.5,2)

**EAST (3,1-4,2):**
- Settlement House 3 (3.5,1.5)
- Settlement House 4 (4,1.75)

**SOUTH (1,2-3,3):**
- Settlement House 5 (1.5,2.5)
- Settlement House 6 (2.5,2.5)
- Herbalist's Cottage (2,3)

**SOUTHEAST (3,2-4,3):**
- Settlement House 7 (3.5,2.75)

**FIELDS (1-3, 4-5):**
- Spring Field (1,4-2,5)
- Summer Field (2,4-3,5)
- Fallow/Rotation Field (1-2,5)

---

## 2. BUILDING SPECIFICATIONS FOR MAPPING

### Standard Dimensions
```
Small Building (House):     40ft × 30ft (1,200 sq ft)
Medium Building (Hall):     50ft × 40ft (2,000 sq ft)
Large Building (Barn):      60ft × 50ft (3,000 sq ft)
Specialized (Mill):         40ft × 50ft (2,000 sq ft)
Open Area (Market):         60ft × 60ft (3,600 sq ft)
Field Area:                 300ft × 150ft (45,000 sq ft)
```

### Building Footprints (on 60ft grid)

**1. COMMUNITY HALL (Center of settlement)**
- Dimensions: 50ft × 40ft
- Location: Grid (2, 1.5)
- Anchor: Central plaza focus point
- Description: Wooden structure, peaked roof, large front porch
- Details: 2 main doors, 6 windows, bell tower visible

**2. MARKET HALL (Main marketplace)**
- Dimensions: 60ft × 60ft (open air, covered)
- Location: Grid (2, 0.5)
- Anchor: North settlement focus
- Description: Open-sided pavilion with wooden posts/beams
- Details: Multiple vendor stalls, merchant areas, bulletin board

**3. PRIMARY STORAGE BARN**
- Dimensions: 60ft × 50ft
- Location: Grid (0, 0.5)
- Anchor: Western storage
- Description: Large wooden barn, double doors
- Details: Grain storage, community supplies, emergency rations

**4. BLACKSMITH'S SHOP**
- Dimensions: 40ft × 35ft
- Location: Grid (3.5, 0.5)
- Anchor: Northeastern craft area
- Description: Stone/wood construction, chimney visible
- Details: Forge furnace, work anvils, tool storage, ventilation

**5. WOODWORKING SHOP**
- Dimensions: 45ft × 40ft
- Location: Grid (0.5, 0.5)
- Anchor: Northwestern craft area
- Description: Wooden structure, open work areas
- Details: Tool racks, wood stacks, sawdust grounds, bench areas

**6. MILLER'S HOUSE & MILL BUILDING**
- Dimensions: 50ft × 45ft (combined structure)
- Location: Grid (0, 1)
- Anchor: Western water-access building
- Description: Two-part structure, mill wheel visible
- Details: Water channel access, grain processing equipment, living space

**7. COMMUNITY SHRINE**
- Dimensions: 35ft × 25ft
- Location: Grid (1.5, 0.5)
- Anchor: Spiritual center
- Description: Stone/wood construction, distinctive roof marker
- Details: Altar area, prayer space, supply room, bell

**8. HERBALIST'S COTTAGE**
- Dimensions: 30ft × 25ft
- Location: Grid (2, 3)
- Anchor: Southern medical area
- Description: Cozy cottage, garden area nearby
- Details: Herb drying racks, potion bottles, medical supplies, garden plots

**9. SETTLEMENT HOUSES (7 total)**
- Type 1: Farmhouse (40ft × 35ft) - Aldric's home
- Type 2: Simple House (35ft × 30ft) - Multiple residents
- Type 3: Cottage (30ft × 25ft) - Single/couple homes
- Scattered across settlement per location list

**10. LIVESTOCK PEN & GRAZING**
- Dimensions: 60ft × 40ft (fenced area)
- Location: Grid (2.5, 2)
- Anchor: Animal husbandry area
- Description: Fenced enclosure, shelter structures
- Details: Animal shelters, water trough, feeding areas

**11. WATER WELL/SPRING**
- Dimensions: 15ft radius area
- Location: Grid (2.5, 0.75)
- Anchor: Central water source
- Description: Well structure with bucket/pulley system
- Details: Gathering place, covered well-head, water trough

**12. TANNERY/LEATHERWORKS**
- Dimensions: 45ft × 35ft
- Location: Grid (4, 0.75)
- Anchor: Eastern craft area
- Description: Functional structure, distinctive smell (map note)
- Details: Leather racks, dye vats, tool area, waste channel

---

## 3. DISTANCE & TRAVEL TIME REFERENCE

### Within Settlement (Walking)
- Market Hall to Community Hall: 90 ft (1-2 min)
- Center to any house: 120-180 ft (2-3 min)
- North area to South field: 300+ ft (5-7 min)
- Farthest points: ~400 ft (6-8 min)

### Immediate Area (Outside settlement)
- To forest edge: 100-200 ft (2-4 min)
- To tribal village: 0.5 miles (10-15 min)
- To goblin territory: 0.75-1 mile (15-20 min)
- To Crossroads Road: 0.25 miles (5 min)

### Road Travel (to other settlements)
- Tiny Stump ↔ Crossroads: 8 miles (1.5 hours on foot)
- Tiny Stump ↔ Kilhel: 12 miles (2.5 hours on foot)
- Tiny Stump ↔ Eldridge: 16 miles (3+ hours on foot)

---

## 4. TERRAIN & GEOGRAPHY FEATURES

### Natural Features Around Settlement

**FOREST:**
- Type: Mixed deciduous/conifer
- Density: Medium (penetrable)
- Depth: 1-2 miles in all directions
- Hazards: Uneven ground, fallen logs, thick undergrowth
- Resources: Firewood, herbs, game

**WATER FEATURES:**
- Small stream (north of settlement)
- Spring/well system (center of settlement)
- Bog/wetland (east of settlement)
- Direction flow: South toward larger river

**HILLS/ELEVATION:**
- Low hills to northeast (goblin territory)
- Elevated ridge to west (views of settlement)
- Valley setting (settlement protected from north wind)
- Views: 1+ miles in most directions from high points

**CLEARING:**
- Settlement in natural clearing (~0.5 mile radius)
- Fields take up southern portion
- Forest reclaims north/east/west edges
- Defensible position (limited approaches)

---

## 5. MAP CREATION ASSETS

### For Digital Map Creation (AI Image Generation)

**Recommended Prompt Template:**
```
"Top-down fantasy settlement map in [art style], 
showing Tiny Stump: 
- Central market hall with vendor stalls
- Wooden community hall with porch
- Blacksmith shop with visible furnace/chimney
- Miller's house with water mill wheel visible
- Woodworking shop with tool storage visible
- 7 scattered residential houses
- Livestock pen with fenced area
- Central water well
- Herbalist's cottage with garden
- Large barn on western side
- Shrine with spiritual markers
- Surrounding forest (north/east/west)
- Agricultural fields to south
- Grid overlay (60ft squares)
- Dirt roads connecting buildings
- Natural water features
- Style: [fantasy cartography/tactical map/D&D style]
- Lighting: [daylight/neutral/shadow]"
```

### Map Features to Include
- Grid lines (60ft squares for scale)
- Building labels (text identification)
- Compass rose (north indicator)
- Scale indicator (1 grid = 60 ft)
- Legend (building key)
- Terrain shading (forest, fields, water)
- Road/path indicators
- Altitude/slope notation if relevant

### Color Coding (if color map)
- Buildings: Tan/brown
- Roofs: Red/dark brown
- Forest: Dark green
- Fields: Light green/yellow
- Water: Light blue
- Roads: Light tan/gray
- Palisade wall: Dark wood color

---

## 6. SCALE VERIFICATION CHECKLIST

**When creating map, verify:**
- [ ] Grid squares appear consistent (60ft each)
- [ ] Building proportions realistic (houses ~40ft wide)
- [ ] Settlement feels compact but not cramped (1-2 minute walks)
- [ ] Forest clearly surrounding settlement
- [ ] Fields visible and mappable (3 distinct areas)
- [ ] Water features appropriately placed (well central, stream visible)
- [ ] All 12 major locations present
- [ ] Livestock pen identifiable
- [ ] Roads/paths logical and connected
- [ ] Defensive wall placement logical (if planning fortifications)

---

## 7. DEFENSIVE WALL LAYOUT (OPTIONAL FORTIFICATION)

### Proposed Palisade Wall
- Perimeter: ~920 linear feet
- Location: Surrounding entire settlement (60ft from outer buildings)
- Height: 15-20 feet
- Gates: 2 major (north/south) + 2 minor (east/west)
- Watch towers: 4 corner positions
- Construction cost: 200-300 gp materials
- Labor: 3-4 months (20+ settlers)

### Wall Placement (Estimated)
```
     Gate
      |
    TW1--TW2
    |  Settlement  |
    |   (mapped)   |
    |              |
    TW3--TW4
      |
     Gate

TW = Tower position
```

---

## 8. REFERENCE SCALE COMPARISON

**Real-world Equivalent:**
- Settlement area: ~0.4 acres
- Like: Large medieval village or small townlet
- Population density: Similar to frontier settlements
- Walk-across time: 6-8 minutes
- Visible from: 1-2 miles away

**Fantasy Equivalent:**
- Comparable to: Starter town in fantasy games
- Regional role: Supply hub, outpost, refuge
- Population tier: Small but viable community
- Significance: Local importance, growing regional role

---

## 9. SEASONAL MAP VARIATIONS

### Spring Version
- Fields show new plantings (lighter green)
- Forest shows budding (lighter color)
- Stream slightly swollen (more visible water)
- Paths show mud/wet areas
- Snow patches (if northern climate)

### Summer Version
- Fields show full crops (dark green)
- Forest full and dense
- Stream normal flow
- Dust clouds possible (dry roads)
- Settlement appears bustling

### Autumn Version
- Fields show harvest (golden color)
- Forest shows color changes (red/yellow)
- Stream normal flow
- Harvest goods visible (stacks, drying)
- Preparation for winter evident

### Winter Version
- Fields show dormancy (brown/white)
- Forest shows bare trees (if deciduous)
- Possible snow coverage
- Smoke from chimneys visible
- Settlement looks consolidated

---

## 10. ENCOUNTER LOCATION HOTSPOTS

**Mark these on your map with symbols:**
- ⚔ Combat likely (goblin territory, wildlife)
- 💬 NPC interaction (all buildings)
- 📍 Quest objective (varies by quest)
- ⚠ Hazard (stream, forest depth)
- 💰 Economic (market, shops)
- 🙏 Spiritual (shrine, sacred areas)

---

## 11. SAMPLE REFERENCE MAP DESCRIPTION

**For DM Reference/Player Description:**

"Tiny Stump huddles in a natural clearing surrounded by dense forest. The settlement consists of roughly a dozen buildings arranged somewhat haphazardly around a central marketplace and community hall. To the north stands the market pavilion and shrine, with the blacksmith visible to the northeast. To the west, the large storage barn and miller's mill are prominent structures. Scattered throughout are residential houses, ranging from simple cottages to larger family farmhouses. The livestock pen is visible in the center-right area. To the south, three distinct agricultural fields stretch out in neat rows. A network of dirt paths connects all major buildings, and a well near the center plaza serves as the main water source. Dense forest presses in from three sides, while the fields open toward the south. The whole settlement spans roughly 300 feet across."

---

## 12. CREATING YOUR OWN MAP VARIATIONS

### Alternative Layout 1: Linear/Road-Based
- Single main road running north-south
- Buildings flanking road
- More efficient travel
- Less defensible

### Alternative Layout 2: Radial/Hub-Centered
- All buildings radiating from central hall
- Central plaza as focus
- Natural gathering point
- More compact defensive perimeter

### Alternative Layout 3: Clustered/Village-Style
- Groups of related buildings
- Craft area cluster (blacksmith, tannery, carpentry)
- Residential cluster
- Agricultural area separated
- More defined zones

---

**END MAP GENERATION GUIDE**

Use these specifications as foundation for creating your own Tiny Stump settlement maps via hand-drawing, digital tools, or AI image generation. All coordinates and dimensions are internally consistent and ready for tactical gameplay.