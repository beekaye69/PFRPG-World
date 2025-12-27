# PFRPG SEMANTIC RELATIONSHIPS MAP
## Concept Hierarchy & LLM Navigation Architecture

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Semantic Relationships & Concept Hierarchy

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Semantic Architecture & Concept Map

**Purpose:** Explicit mapping of how PFRPG concepts relate, hierarchy, and categorize. Optimized for AnythingLLM and vector database semantic retrieval. Helps LLM understand the conceptual "shape" of PFRPG without requiring traversal of raw rules.

**Related Documents:**
- PFRPG-TableOfContents.md (Navigation scaffolding)
- PFRPG-Analysis-Updated.md (Full rules)
- PFRPG-CoreMechanics-Primer.md (Foundational concepts)
- PFRPG-Glossary.md (Terminology)

**Intended Use:** Vector DB semantic search, LLM concept grounding, query disambiguation

**Last Updated:** December 16, 2025

---

## HOW TO USE THIS DOCUMENT

### For Vector Database Operators
This document provides explicit semantic clustering. Use concept categories to optimize chunking and embedding.

### For LLM Context
This map shows concept relationships that help LLM understand "where" information lives and how systems relate.

### For Query Disambiguation
When query could match multiple concepts, this hierarchy clarifies likely intent.

---

## LAYER 1: THE CORE FOUNDATION

**Foundation Concept: d6 (The Single Die)**

Everything in PFRPG flows from one core principle: one six-sided die resolves all actions.

```
THE d6 (Foundation)
    ├── Task Resolution (non-combat)
    ├── Combat Resolution (combat)
    ├── Loot Generation
    ├── Monster Generation
    └── Encounter Generation
```

### Why This Matters for LLM
When LLM encounters any PFRPG rule, it ultimately traces back to d6 + difficulty comparison. Understanding this prevents false assumptions about "bonus stacking" or "modifier tables" (which don't exist in PFRPG).

---

## LAYER 2: THE MECHANICAL SYSTEMS (The "Engine")

PFRPG has 5 interrelated mechanical systems. Each system is independent but can interact.

```
MECHANICAL SYSTEMS
    ├── Task Resolution System
    │   ├── Task Difficulty (5 tiers)
    │   ├── Core Abilities (5 domains)
    │   ├── Heroic Rerolls (player agency)
    │   └── Natural 6 Checks (special success)
    │
    ├── Combat System
    │   ├── Initiative
    │   ├── Movement & Positioning
    │   ├── Combat Skill (per-class variation)
    │   ├── Attack Actions (melee/ranged)
    │   ├── Defense Actions (reactive)
    │   ├── Full Defense (tactical choice)
    │   └── Special Combat Abilities (class-specific)
    │
    ├── Magic System
    │   ├── Combat Magic (2 per encounter)
    │   └── Free Form Magic (2 per session, out-of-combat)
    │
    ├── Loot System
    │   ├── Gold Distribution (by challenge)
    │   ├── Item Acquisition (by loot rolls)
    │   ├── Arcane Gem Collection (crafting resource)
    │   └── Item Value Framework
    │
    └── Health & Recovery System
        ├── HP (character health)
        ├── Damage (from combat/traps)
        ├── Healing (post-encounter, extended rest, magic)
        ├── Unconsciousness (0 HP state)
        ├── Stabilization (helping downed allies)
        └── Death (permanent HP depletion)
```

### Hierarchy Principle: Systems are Modular
- Combat System doesn't require Magic System to function
- Task Resolution applies even without Combat
- Loot System is independent of all others
- Systems CAN interact (e.g., spell affecting combat), but don't require interaction

**For LLM:** When resolving rules, identify which system applies first. A query like "What happens if I cast Confusion on an undead?" involves:
1. Magic System (spell framework)
2. Combat System (undead classification)
3. Special interaction rules (Confusion immunity for undead)

---

## LAYER 3: CHARACTER ELEMENTS (The "Who")

Characters are built from combination of Race + Class + Abilities + Equipment.

```
CHARACTER CONSTRUCTION FRAMEWORK
├── Race Selection (4 options)
│   ├── Dwarf
│   │   ├── Dark Vision (60 ft)
│   │   ├── Underground Expertise (construction detection)
│   │   └── Poison Resistance
│   ├── Elf
│   │   ├── Dark Vision (60 ft)
│   │   ├── Secret Door Sense
│   │   ├── Paralysis Immunity
│   │   └── Surprise Resistance
│   ├── Halfling
│   │   ├── Large Monster Defense
│   │   ├── Forest Hiding (camouflage)
│   │   └── Hidden State
│   └── Human
│       └── Heroic Reroll Bonus (+1/session)
│
├── Class Selection (6 options)
│   ├── Cleric (HP:8, CS:d6-1)
│   │   ├── Righteous Insight (wisdom reroll)
│   │   ├── Bind Wounds (healing specialization)
│   │   ├── Holy Light (combat healing spell)
│   │   └── Holy Smite (anti-undead spell)
│   │
│   ├── Fighter (HP:10, CS:d6)
│   │   ├── Muscle (strength reroll)
│   │   ├── Challenge (force attention)
│   │   └── Combat Master (explosion on melee rolls)
│   │
│   ├── Thief (HP:6, CS:d6-1)
│   │   ├── Nimble (agility reroll + expertise)
│   │   ├── Flank (dual attack rolls)
│   │   └── Backstab (double damage vs. unaware)
│   │
│   ├── Bard (HP:6, CS:d6-2)
│   │   ├── Charming (charisma reroll)
│   │   ├── Loremaster (knowledge reroll)
│   │   └── Bardic Music (7 spell-like songs)
│   │
│   ├── Ranger (HP:10, CS:d6-1)
│   │   ├── Survivalist (environmental reroll)
│   │   ├── Alert (surprise/initiative advantage)
│   │   └── Ranged Mastery (flexible ranged attacks)
│   │
│   └── Wizard (HP:4, CS:d6-2)
│       ├── Brains (intelligence reroll)
│       ├── Combat Magic (2 spells/encounter)
│       └── Free Form Magic (2 spells/session)
│
└── Equipment Selection
    ├── Weapons (provide Focus magical benefit)
    ├── Armor (provide Deflect magical benefit)
    ├── Jewelry (rings + necklace with special abilities)
    ├── Potions (consumables with special effects)
    └── Special Equipment (shields, cloaks, unique items)
```

### Character Power Sources (How do characters get better?)
1. **Ability Usage** (class abilities always available)
2. **Resource Spending** (Heroic Rerolls, spells per session)
3. **Equipment** (magical items provide Focus/Deflect access)
4. **Item Combination** (synergistic gear effects)

### For LLM
Query like "What makes a character powerful?" should map to this hierarchy. A powerful character:
- Uses abilities synergistically (Fighter + Combat Master + Focus)
- Makes smart resource decisions (Heroic Reroll spending)
- Equips gear that synergizes (Combat Master Fighter needs Focus weapons to shine)

---

## LAYER 4: ENCOUNTER & ADVENTURE GENERATION (The "Where")

How do Pocket Masters create adventures?

```
ADVENTURE GENERATION FRAMEWORK
├── Plot Generation (Adventure Plot Generator)
│   ├── Situation (6 seed types)
│   ├── Antagonist (6 Big Bad types)
│   └── Location (6 location types)
│
├── Dungeon Generation (Dungeon Generator)
│   ├── Monster Placement (d6 roll determines)
│   ├── Monster Classification (4 types: Humanoid, Undead, Beast, Boss)
│   ├── Monster Quantity (d6 roll formula)
│   ├── Monster Combat Skill (threat-level based)
│   ├── Monster Abilities (25+ special abilities available)
│   ├── Room Features (d6x2 table for environment)
│   ├── Doors & Locks (d6 roll for locked)
│   ├── Traps (d6 roll trigger, d6+ damage formula)
│   ├── Boss Encounters (one per dungeon level)
│   └── Loot Distribution (based on challenge difficulty)
│
└── Encounter Difficulty Assessment
    ├── Easy Challenge (1 party vs. many weak)
    ├── Moderate Challenge (balanced match)
    └── Difficult Challenge (party significantly pressured)
```

### Monster Ability Hierarchy
```
MONSTER ABILITIES (25+ options)
├── Defensive Abilities
│   ├── Aquatic (water combat only)
│   ├── Armored (better defense)
│   ├── Bones (skeleton immunity to certain damage)
│   ├── Flight (ranged distance)
│   ├── Large (size defense boost)
│   ├── Mundane Immunity (magical resistance)
│   ├── Regenerate (healing per round, negated by fire)
│   └── [others...]
│
├── Offensive Abilities
│   ├── Breath Attack (area damage)
│   ├── Constrict (crushing grapple)
│   ├── Dark Magic (spell casting)
│   ├── Hulking (increased damage)
│   ├── Strong (improved damage)
│   └── [others...]
│
└── Control/Debuff Abilities
    ├── Disease (permanent stat reduction)
    ├── Energy Drain (CS reduction per hit)
    ├── Paralysis (immobilization)
    ├── Petrify (stone transformation)
    ├── Poison (persistent damage)
    └── [others...]
```

### For LLM
Query "What monster is appropriate for party of 4?" should map to:
1. Party assessment (size, classes, expected damage)
2. Encounter difficulty selection
3. Monster type + quantity selection
4. Ability combination that creates appropriate challenge

---

## LAYER 5: MAGICAL ITEMS (The "Equipment Hierarchy")

Items are categorized by benefit type, not rarity.

```
MAGICAL ITEM FRAMEWORK
├── FOCUS WEAPONS (Provide melee offense boost)
│   ├── Steelbender (armor pen)
│   ├── Blackout (undead bonus)
│   ├── Ember Death (fire damage)
│   ├── Beast Bane (vs. beasts)
│   ├── Execution (humanoid instant kill on 6)
│   └── [12+ more options]
│
├── DEFLECT ARMOR (Provide defense boost)
│   ├── Vigilant Shield (reroll + encounter reward)
│   ├── Fate Shield (immunities + retaliation)
│   ├── Defiance (negate 3 attacks/session)
│   ├── Helm of Protection (ability immunity)
│   └── [12+ more options]
│
├── JEWELRY (Special effects, limited slots)
│   ├── Rings (max 2 active)
│   │   ├── Ring of Protection (damage reduction)
│   │   ├── Ring of Night (dark vision, darkness)
│   │   ├── Ring of Senses (perception, detection)
│   │   └── [6 ring types total]
│   │
│   └── Necklaces (max 1 active)
│       ├── Amulet of Legends (+2 Heroic Rerolls/session)
│       ├── Amulet of the Sun God (auto-healing)
│       ├── Necklace of the Damned (summon shadow)
│       └── [7 necklace types total]
│
├── POTIONS (Consumables, single use)
│   ├── Potion of Heroes (extra rerolls)
│   ├── Potion of Ultimate Healing (full restore)
│   ├── Potion of Blinding Speed (2 actions/round)
│   ├── Black Lotus Poison (weapon application)
│   └── [8 potion types total]
│
└── CRAFTING RESOURCES
    └── Arcane Gems (3 required to craft Focus x1 or Deflect x1)
```

### Item Power Sources
```
ITEM BENEFIT CATEGORIES
├── Direct Damage (Focus weapons)
├── Defense/Damage Reduction (Deflect armor)
├── Resource Generation (Heroic Reroll items)
├── Special Abilities (jewelry, equipment)
├── Consumable Effects (potions)
└── Attribute Modification (rings providing perception)
```

### For LLM
Query "What gear should my character have?" maps to:
1. Character class (what synergizes with their abilities?)
2. Expected challenge level (what level of power boost needed?)
3. Playstyle (offense-focused, defense-focused, utility?)

---

## LAYER 6: RULES & SPECIAL SYSTEMS (The "How")

Foundational rules that don't fit other categories.

```
SPECIAL RULES & SYSTEMS
├── Heroic Reroll System
│   ├── Base allocation (1 per session)
│   ├── Source variations (class, items, racial)
│   ├── Spending decision (when to use hero luck?)
│   └── Reroll stacking (can combine with ability rerolls)
│
├── Exploding Dice System
│   ├── Trigger conditions (Combat Master, Focus, natural 6s)
│   ├── Explosion mechanics (roll again, add together)
│   ├── Chaining potential (6 → explodes again → etc.)
│   └── Damage impact (can deal 10+ on single roll)
│
├── Natural 6 System
│   ├── Primary effect (always counts as 6)
│   ├── Secondary check (roll again for bonus)
│   ├── Bonus reward (Heroic Reroll if 6 again)
│   └── Probability (1-in-36 to earn reward)
│
├── Full Defense Action
│   ├── Duration (1 round)
│   ├── Effect (reroll all defense)
│   └── Tactical use (when to commit to defense)
│
├── Surprise Mechanics
│   ├── Trigger conditions (unaware parties)
│   ├── Advantage (surprised party acts at disadvantage)
│   ├── Initiative impact (affects turn order)
│   └── Character immunities (Elf race resistance)
│
├── Healing & Recovery
│   ├── Post-encounter (1 hp, Cleric 2 hp)
│   ├── Extended rest (3 hp after 8 hours)
│   ├── Magical healing (spells)
│   └── Item healing (potions, equipment)
│
└── Death & Unconsciousness
    ├── 0 HP state (unconscious, no actions)
    ├── Death saves (laughable task each round)
    ├── Stabilization (average task to save)
    └── Permanent death (failed saves)
```

### For LLM
These are "system mastery" rules. LLM should understand:
- When Heroic Reroll is most valuable
- When exploding dice are possible
- When Full Defense is tactical optimal play
- When character is in danger of death

---

## LAYER 7: GAME FLOW & PACING

How does actual play flow?

```
SESSION FLOW
├── Pre-Session
│   ├── Character Creation
│   ├── Equipment Selection
│   └── Party Formation
│
├── In-Session
│   ├── Adventure Hook Introduction
│   │
│   ├── Exploration Phase
│   │   ├── Task Rolls (non-combat challenges)
│   │   ├── Discovery of encounters
│   │   └── Resource consumption
│   │
│   ├── Encounter Phase (per encounter)
│   │   ├── Initiative (who acts first)
│   │   ├── Combat Rounds (attack, defend, special)
│   │   ├── Monster Actions
│   │   ├── Party Actions
│   │   └── Loot Distribution (after victory)
│   │
│   └── Post-Session
│       ├── Character Advancement (optional)
│       ├── Heroic Reroll Refresh (1 new per session)
│       └── Resources Depletion (spells, potions used)
│
└── Between-Session (Campaign)
    ├── Story Continuity
    ├── Character Rest (extended healing)
    ├── Downtime (training, crafting)
    └── Preparation for next adventure
```

### For LLM
This flow helps LLM understand "when do I ask for X?"
- "How do I create a character?" → Pre-Session flow
- "What do I do when I find treasure?" → Encounter aftermath
- "Can I prepare for next session?" → Between-session flow

---

## CONCEPT RELATIONSHIP BRIDGES

### Bridge 1: How Does Character Power Progression Work?

```
CHARACTER POWER
    ├── At Creation
    │   ├── Class (defines abilities + stats)
    │   ├── Race (defines traits)
    │   └── Starting Equipment (basic Focus + Deflect)
    │
    ├── During Play
    │   ├── Equipment Acquisition (loot drops)
    │   ├── Item Combination (synergies discovered)
    │   ├── Ability Mastery (learning optimal use)
    │   └── Resource Management (Heroic Reroll timing)
    │
    └── Between Sessions (Optional)
        ├── Specialty Task Selection (focus area bonus)
        └── HP Increase (max HP growth)
```

### Bridge 2: How Does Combat Work (Macro View)?

```
COMBAT SEQUENCE
    ├── Initiative (determine order)
    ├── Round Structure (each character acts)
    ├── Player Actions
    │   ├── Attack (roll CS, target defends)
    │   ├── Defend (reactive, roll defense)
    │   ├── Special Action (ability usage)
    │   └── Move (repositioning)
    ├── Enemy Actions (same options)
    ├── Damage Resolution
    │   ├── Attack roll vs. defense roll
    │   ├── Best vs. best comparison
    │   └── Difference = damage dealt
    └── Victory Condition (enemy defeat or retreat)
```

### Bridge 3: How Does Magic Integrate?

```
MAGIC INTEGRATION
    ├── Combat Magic (Wizard ability)
    │   ├── Limited to 2 per encounter
    │   ├── Takes 1 action to cast
    │   ├── Counts as action (can't also attack)
    │   └── Damage/effect varies by spell
    │
    ├── Free Form Magic (Wizard ability)
    │   ├── Limited to 2 per session
    │   ├── Out of combat only
    │   ├── PM determines difficulty
    │   └── Creative problem-solving tool
    │
    ├── Bardic Magic (Bard ability)
    │   ├── Song casting (different from wizard spells)
    │   ├── Duration-based (3+ rounds typical)
    │   ├── Buff effects (not damage)
    │   └── Can be combined with other actions
    │
    └── Item Magic (Magical items)
        ├── Passive (always active, jewelry/armor)
        ├── Activated (used once per encounter/session)
        └── Spell-granting (Crown, wands, etc.)
```

### Bridge 4: How Do Abilities Synergize?

```
SYNERGY PATTERNS
├── Class Ability + Weapon Match
│   ├── Combat Master (Fighter) + Focus Weapon
│   ├── Backstab (Thief) + Dagger
│   └── Holy Light (Cleric) + Clarity Mace
│
├── Positioning + Ability
│   ├── Flanking (Thief) requires engagement
│   ├── Backstab (Thief) requires surprise
│   └── Challenge (Fighter) requires line of sight
│
├── Stat + Reroll Match
│   ├── Muscle (Strength) for strength tasks
│   ├── Nimble (Agility) for agility/lock tasks
│   └── Brains (Intelligence) for knowledge
│
└── Item + Ability Match
    ├── Ring of Night (darkness) for stealthy Thief
    ├── Amulet of Legends (rerolls) for any class
    └── Focus weapons (any melee) with Combat Master
```

---

## SEMANTIC DENSITY PATTERNS

### High-Density Concepts (appear everywhere)
- **d6** - Appears in all systems
- **Reroll** - Appears in task, combat, spells, items
- **Damage** - Appears in combat, traps, special abilities
- **Heroic Action** - Appears in character agency systems

**For LLM:** These concepts are "hubs" that connect to many other concepts.

### Mid-Density Concepts (appear in 2-3 systems)
- **Combat Skill** - Appears in combat, monsters, comparisons
- **Natural 6** - Appears in any roll system (tasks, combat, spells)
- **Magical Item** - Appears in combat, exploration, equipment

### Low-Density Concepts (isolated to specific area)
- **Secret Door** - Specific to exploration/Elf trait
- **Paralysis** - Specific monster ability affecting combat
- **Free Form Magic** - Unique to Wizard out-of-combat

---

## QUERY DISAMBIGUATION MAP

Common queries and which semantic concept they map to:

| User Query | Primary Concept | Secondary Concepts | Resolution Path |
|------------|-----------------|-------------------|-----------------|
| "How do I attack?" | Combat System | Attack Actions | Task 2.6 |
| "What's the best class?" | Character Class | Synergies, Playstyle | Task 3.1 |
| "How do abilities stack?" | Mechanical Interactions | Reroll Stacking | Interactions Doc |
| "Can I cast a spell while defending?" | Magic System + Combat | Action Economy | Interactions Doc |
| "What treasure do I get?" | Loot System | Challenge Difficulty | Task 8.3 |
| "How is damage calculated?" | Combat System | CS Stacking | Combat primer |
| "What rerolls can I use?" | Reroll System | Heroic Rerolls | Task 1.2 |
| "How does my character improve?" | Character Progression | Optional Advancement | Task 10.2 |
| "What monster should I face?" | Encounter Generation | Monster Abilities | Task 8.2 |

---

## INVERSE MAPPING: CONCEPT TO USAGE

### Heroic Reroll (Concept)
Appears in:
- Task Resolution (can be used on any task)
- Combat (can be used on attack/defense)
- Spells (can be used on casting/defense vs. spell)
- Natural 6 system (earned by rolling 6 twice)
- Items (awarded by certain magical items)

**LLM Understanding:** Heroic Reroll is a universal resource usable in many contexts. Once per session. Spending decision is strategic.

### Combat Skill (Concept)
Appears in:
- Character definition (per class)
- Attack rolls (used to determine damage)
- Defense rolls (used to block damage)
- Monsters (determines threat level)
- Modification systems (spells, items can change CS)

**LLM Understanding:** Combat Skill is THE key combat stat. Modified by class, conditions, and items. Lower CS = harder to deal/block damage.

---

## PRACTICAL APPLICATION: QUERY RESOLUTION

### Example Query: "My Thief failed a crucial lock-picking roll. Can I reroll?"

**Semantic Navigation:**
1. Identify system: Task Resolution (lock-picking is non-combat task)
2. Identify concept: Reroll availability
3. Check sources:
   - Ability reroll? Thief Nimble applies to agility (lock-picking IS agility)
   - Heroic Reroll? Available if not spent this session
   - Natural 6 check? Wasn't triggered (didn't roll 6)
4. Resolution: Yes, Thief can reroll. Either via Nimble (already applied) or Heroic Reroll (if available)

**For LLM:** This query requires understanding:
- Thief Nimble ability scope
- Task system reroll mechanics
- Heroic Reroll usage rules

All of which are documented in semantic hierarchy.

---

**End of PFRPG Semantic Relationships Map**

*This document is reference material for LLM semantic understanding and vector database optimization. For specific mechanical rules, consult the detailed documents. For quick lookups, use the Glossary.*