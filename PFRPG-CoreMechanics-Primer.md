# PFRPG CORE MECHANICS PRIMER
## Simplified Foundation Guide for RAG Understanding

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Core Mechanics Primer

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Foundational Concept Primer

**Purpose:** Simplified, focused explanation of the d6 task resolution system. Provides conceptual foundation that helps LLM understand why PFRPG mechanics work the way they do, preventing inference errors in downstream queries.

**Related Documents:**
- PFRPG-Analysis-Updated.md#core-mechanics-overview (Full technical details)
- PFRPG-Glossary.md (Terminology reference)
- PFRPG-TableOfContents.md#section-1 (Navigation)
- PFRPG-MechanicalInteractions.md (Complex interactions - future)

**Intended Use:** LLM conceptual grounding before querying specific mechanics

**Last Updated:** December 16, 2025

---

## THE CORE CONCEPT: ONE DIE, INFINITE CHALLENGES

PFRPG is built on a single elegant principle:

**Every action** (from picking a lock to casting a spell to dodging a boulder) resolves with **one d6 roll** against a **difficulty threshold**.

This simplicity is intentional. It enables:
- Fast resolution (no lookup tables, no modifiers to calculate)
- Ease of learning (new players grasp it in minutes)
- PM flexibility (PM can adjudicate any situation using the same mechanic)
- Clear player agency (hero rerolls, ability synergies make success feel earned)

---

## THE TASK RESOLUTION FRAMEWORK

### The Basic Resolution Pattern

**Step 1: PM Sets Difficulty**
The Pocket Master evaluates the task difficulty and assigns a threshold (laughable through very difficult).

**Step 2: Player Rolls d6**
The player rolls one six-sided die.

**Step 3: Compare to Threshold**
- Roll meets or exceeds threshold = success
- Roll below threshold = failure

**Step 4: Apply Consequences**
Success = intended action happens. Failure = consequences determined by PM.

### Why This Works

Because the only variable is **the difficulty threshold**, the PM can adjudicate any situation:
- Easy task? Threshold = 2
- Hard task? Threshold = 5
- Impossible? Threshold = 6 (only natural success counts)

No bonuses. No modifiers. Just one die against one number.

---

## THE FIVE DIFFICULTY TIERS

Understanding these tiers is foundational to understanding all PFRPG mechanics.

### Laughable (Threshold: 2+)
- Trivial tasks nearly impossible to fail
- Example: Climbing stairs, remembering basic facts, simple walking
- Failure rate: 1 in 6 (only 1 fails)
- **Purpose:** Minimal challenge, confirms competence

### Simple (Threshold: 3+)
- Basic competency required; most people succeed
- Example: Climbing a rope, recalling training, basic crafting
- Success rate: 4 in 6 (66%)
- **Purpose:** Light difficulty, feels achievable

### Average (Threshold: 4+)
- Standard difficulty; requires attention and skill
- Example: Jumping a modest gap, picking a standard lock, negotiating with merchants
- Success rate: 3 in 6 (50%)
- **Purpose:** Default baseline, balanced challenge

### Tough (Threshold: 5+)
- Challenging; most untrained people would fail
- Example: Jumping a wide chasm, picking a complex lock, persuading a hostile enemy
- Success rate: 2 in 6 (33%)
- **Purpose:** Significant challenge, feel of accomplishment on success

### Very Difficult (Threshold: 6)
- Nearly impossible; only natural 6 succeeds
- Example: Jumping impossibly far, picking an ancient magical lock, impossible persuasion
- Success rate: 1 in 6 (17%)
- **Purpose:** "Against the odds" moments, heroic reroll territory

---

## THE FIVE CORE ABILITIES

Every character in PFRPG has innate aptitude in five areas. When a task relates to one of these areas, characters may have mechanical advantages (re-rolls, task simplification, etc.).

### Strength
**Mechanical Application:** Physical force and endurance

**Task Examples:**
- Lifting heavy objects
- Breaking down doors
- Pushing/dragging obstacles
- Climbing with heavy loads
- Sustained physical effort

**Character Class Primary:** Fighter (via Muscle ability)

**Special Rules:**
- Pendant of the Titan converts all strength tasks to laughable (2+)

### Agility
**Mechanical Application:** Dexterity, balance, reflexes

**Task Examples:**
- Balancing on narrow surfaces
- Dodging falling objects
- Moving silently
- Hiding in shadows
- Quick reflexive actions
- Disarming traps (Thief specialty)
- Picking locks (Thief specialty)

**Character Class Primary:** Thief (via Nimble ability)

**Special Rules:**
- Initiative rolls use agility
- Surprise checks use agility for avoidance
- Thief gets reroll on ALL agility tasks

### Intelligence
**Mechanical Application:** Knowledge, reasoning, problem-solving

**Task Examples:**
- Recalling training or education
- Reading ancient texts
- Understanding mathematics
- Speaking foreign languages
- Solving puzzles
- Researching topics

**Character Class Primary:** Wizard (via Brains ability)

**Special Rules:**
- Some ability proficiency scales by intelligence context
- Free Form Magic often requires intelligence-based complexity assessment

### Wisdom
**Mechanical Application:** Perception, insight, willpower

**Task Examples:**
- Noticing hidden details
- Sensing someone's motivations
- Resisting fear or mental effects
- Reading situations
- Intuitive judgments
- Spotting traps/hidden things

**Character Class Primary:** Cleric (via Righteous Insight ability)

**Special Rules:**
- Directly opposed to Charisma in social situations (PM discretion)
- Hidden trap/secret door detection uses wisdom

### Charisma
**Mechanical Application:** Force of personality, social influence

**Task Examples:**
- Haggling with merchants
- Calming hostile situations
- Leading troops into battle
- Persuading NPCs
- Intimidating enemies
- Social manipulation

**Character Class Primary:** Bard (via Charming ability)

**Special Rules:**
- Task difficulty based on PM assessment of roleplay quality
- NOT a pure mechanic—roleplay matters more than roll
- Opposed to Wisdom in some scenarios

---

## MECHANICAL MODIFIERS TO TASK DIFFICULTY

The PM can adjust task difficulty **upward or downward** from baseline based on circumstances. This is the primary way PFRPG handles tactical complexity without becoming rules-heavy.

### Examples of Difficulty Adjustment

**Scenario: Climbing a rope over a chasm**

**Baseline:** Average task (4+)

**Adjustments:**
- "Fighter has exceptional strength" → PM reduces to Simple (3+)
- "Character is carrying heavy gear" → PM increases to Tough (5+)
- "Ally provides good rope and coaching" → PM reduces to Simple (3+)
- "Rope is slippery and chasm has high wind" → PM increases to Very Difficult (6)

**Key Principle:** The same action can have different difficulties per character based on their circumstances, equipment, and abilities. This is feature, not bug—it enables tactical decision-making without complex rules.

---

## HOW HEROIC REROLLS WORK

Heroic Rerolls are the mechanical expression of "player characters are heroes." They represent destiny, luck, and narrative importance.

### Base Allocation
**1 Heroic Reroll per session** - Every player character gets one "hero moment" per session to reroll any single d6 roll and take the best result.

### How Rerolls Manifest
- **Human racial bonus:** Start with 2 instead of 1
- **Class abilities:** Some classes grant ability-specific rerolls
- **Heroic actions:** PM awards rerolls for exceptional roleplay or selfless acts
- **Rolling natural 6:** If you roll 6, then roll again and get 6, you earn a Heroic Reroll
- **Magic items:** Some items grant reroll resources

### Reroll Stacking (Critical for Interactions)
Heroic Rerolls can be spent on top of ability-granted rerolls:

**Example:**
- Thief has Nimble (reroll all agility tasks)
- Thief expends Heroic Reroll on an agility task
- Thief now gets 3 total rolls (base 1 + Nimble 1 + Heroic 1) and takes the best
- This is intentionally powerful—represents hero spending their "luck" on crucial moment

### Strategic Implication
Reroll economy becomes meaningful decision-making: "Do I use my hero reroll now, or save it?"

---

## HOW EXPLODING DICE WORK

Exploding dice represent exceptional success spiraling into greater success. When you roll a natural 6 on certain rolls, the die "explodes" and you roll again, adding the results.

### When Dice Explode

**Automatic Explosion Triggers:**
- Combat Master ability (Fighter) - Melee attack/defense rolls
- Focus weapons - Attack damage (if natural 6)
- Some spells - Specific abilities mention explosion
- Natural 6 checks (see below)

**Manual Explosion Triggers:**
- Certain monster abilities
- Specific magical items
- Designated scenario abilities

### Explosion Mechanics

**Step-by-step:**
1. Roll die and get natural 6
2. Roll that same die again
3. Add both results together
4. If second roll is also 6, roll again (can chain multiple times)

**Example:**
- Fighter uses Combat Master on melee attack
- Rolls d6 = 6 (explodes!)
- Rolls d6 again = 4
- Result = 10 damage (6 + 4)

**Another Example:**
- Focus weapon (6 damage when used)
- Fighter uses it and also triggers Combat Master
- Fighter uses Focus for 6 damage
- Fighter rolls additional d6 for Combat Master = 3
- Result = 9 damage (6 + 3)

### Why This Exists

Explosions represent:
- Moments of extraordinary success
- Natural reward for lucky rolls
- Mechanical payoff for builds optimizing around natural 6s
- Risk/reward for abilities that trigger them

Explosions are **bounded** (limited by ability usage) so they don't break game balance.

---

## HOW ROLLING A NATURAL 6 WORKS

This is distinct from task resolution. Rolling any natural 6 (in any context) triggers a secondary check for "exceptional performance."

### The Natural 6 Sequence

**You roll a d6 for any reason and get 6:**

1. **Complete the action normally.** The 6 counts as full success (or applies its normal effect).

2. **Immediately roll another d6** to check for "exceptional performance."

3. **If second roll is also 6:** Earn 1 Heroic Reroll as reward.

4. **If second roll is not 6:** The first 6's normal effect stands, but no reward.

### Examples

**Task Roll:**
- Climbing wall (Average task = 4+), player rolls 6
- Climbing succeeds
- Player rolls d6 again for exceptional check
- Gets 3 → No extra reward
- Gets 6 → Earns Heroic Reroll AND climbs exceptionally well

**Combat Roll:**
- Fighter attacks, rolls CS d6 = 6
- Attack deals 6 damage
- Fighter rolls d6 again for exceptional check
- Gets 2 → No extra reward, normal 6 damage stands
- Gets 6 → Earns Heroic Reroll AND (if Combat Master enabled) explosion triggers

**Spell Casting:**
- Wizard casts Dark Bolt, rolls d6 = 6
- Spell deals 6 damage
- Wizard rolls d6 again for exceptional check
- Gets 5 → No extra reward, normal 6 damage stands
- Gets 6 → Earns Heroic Reroll

### Why This Exists

Natural 6s already feel special (only 1 in 6 chance). The secondary roll:
- Gives meaningful reward for luck (Heroic Reroll)
- Emphasizes narrative of heroic destiny
- Creates moment of tension: "What if I roll another 6?"
- Ties Heroic Rerolls to mechanical luck, not just PM discretion

### Critical Understanding

A natural 6 is **never bad**—you always get the benefit of the 6. The secondary roll is only a chance for **bonus reward**, not a risk.

---

## RELATIONSHIP MAP: HOW THESE CONCEPTS INTERACT

### Foundation Layer
**d6 → Difficulty Thresholds → Task Resolution**

All tasks use this basic pattern. It's the substrate.

### Probability Layer
**Task Difficulty determines success probability:**
- Laughable: 83% success
- Simple: 66% success
- Average: 50% success
- Tough: 33% success
- Very Difficult: 17% success

Players understand these odds intuitively. This enables tactical decision-making: "Average task? I can make this. Very Difficult? I should get help or use a reroll."

### Agency Layer
**Heroic Rerolls + Natural 6 rewards + Ability rerolls**

Players have multiple levers to influence fate:
- Spend hero reroll
- Hope for natural 6 (which rewards the roll + grants resources)
- Use class abilities for targeted rerolls
- Work with party for difficulty reduction

### Complexity Layer
**These mechanics combine without addition:**

A Fighter with Combat Master attacking with a Focus weapon while rolling natural 6 involving Heroic Reroll:
- Base: 6 damage from Focus
- Combat Master: +d6 roll (may explode)
- Natural 6: May trigger Heroic Reroll
- Heroic Reroll: Could be spent on the additional d6 for potential re-roll

But it's still **one core mechanic applied multiple times**, not stacking bonuses.

---

## CRITICAL DISTINCTION: TASK SYSTEM VS. COMBAT SYSTEM

This is important for LLM understanding and preventing conflation.

### Task Resolution System
**When:** Non-combat or preparation
- Climbing walls, picking locks, persuading NPCs, researching, sneaking
- Triggered whenever PM says "roll a task"

**Mechanic:** Roll d6 vs. difficulty threshold

**Who Rolls:** Character attempting the task

**Modifiers:** Difficulty adjustment (up/down), ability-granted rerolls, Heroic Reroll

### Combat Resolution System
**When:** Active combat only
- Initiative, attacks, defense, special combat actions

**Mechanic:** Roll Combat Skill die (usually modified) vs. opponent action

**Who Rolls:** Both parties (attacker AND defender)

**Modifiers:** Combat Skill value, ability explosions, magical bonuses, Heroic Reroll

### The Overlap
**Charisma tasks in combat** blur the line (PM may require charisma check to persuade enemy to stop fighting). This is where PM discretion applies.

---

## OPTIONAL HOUSE RULES MENTIONED IN CORE MECHANICS

### Optional Specialty Tasks
Each character may choose one "specialty" task they excel at (e.g., lock picking, climbing, negotiation).

**Effect:** Character gets reroll on that task (take best).

**Purpose:** Gives characters mechanical identity outside their class.

**When Available:** Per PM discretion (often at character creation).

### Optional Leveling System
After adventures, surviving characters may:
- Add 1 hp to maximum hp, OR
- Choose a "specialty" task and gain reroll on it

**Effect:** Simple character progression without complex advancement.

**Frequency:** After each session or dungeon (PM discretion).

---

## WHY THIS SYSTEM WORKS FOR PLAY

### Speed
One die. One threshold. Roll vs. compare. Immediate resolution.

### Clarity
Players understand 1-in-6 odds. They intuitively grasp that a 6-only task is hard.

### Flexibility
PM can adjudicate any situation using the same mechanic, enabling spur-of-the-moment play.

### Agency
Rerolls, explosions, and ability synergies give players meaningful choices and moments of control.

### Scalability
Same core mechanic handles lvl-1 characters and late-game parties without modification.

### Fun
Natural 6s feel special. Heroic Rerolls create "last hope" moments. Explosions reward good builds.

---

## SUMMARY: THE FOUNDATION FOR ALL OTHER MECHANICS

Everything in PFRPG builds on the task resolution framework:

- **Combat** is organized task resolution with simultaneous actions
- **Magic** uses task resolution to determine spell success
- **Healing** uses task resolution to determine recovery
- **Encounters** use task resolution to generate difficulty
- **Character abilities** modify task resolution for their specialty

If an LLM understands:
1. One die + one threshold = success/failure
2. Difficulty can be adjusted per circumstances
3. Rerolls and explosions add player agency
4. Natural 6 rewards both mechanics and narrative moments

...then the LLM can correctly infer most other mechanics by applying these principles.

---

## QUICK REFERENCE: TASK DIFFICULTY BY DESCRIPTION

Use this when you need to quickly assign difficulty to an unfamiliar task:

| Descriptive | Difficulty | Threshold | Example |
|-------------|-----------|-----------|---------|
| "That's trivial" | Laughable | 2+ | Tying shoelaces |
| "That's easy" | Simple | 3+ | Climbing stairs |
| "That's moderate" | Average | 4+ | Jumping a stream |
| "That's hard" | Tough | 5+ | Jumping a chasm |
| "That's nearly impossible" | Very Difficult | 6 | Jumping across a ravine during an earthquake |

---

**End of PFRPG Core Mechanics Primer**

*This document provides conceptual foundation. For detailed mechanics rules, see PFRPG-Analysis-Updated.md#core-mechanics-overview. For specific ability interactions, see PFRPG-MechanicalInteractions.md (future document).*