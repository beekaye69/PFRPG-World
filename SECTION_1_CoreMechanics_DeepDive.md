# PFRPG SECTION 1: CORE MECHANICS & TASK SYSTEM
## Deep Section-Level Analysis

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Section 1: Core Mechanics & Task System (Section-Level Deep Dive)

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Section-Level Analysis & Reference

**Purpose:** Complete deep-dive into the foundational d6 system, task resolution mechanics, difficulty tiers, core abilities, Heroic Reroll system, and exploding die mechanics. This section provides comprehensive detail on the mechanical foundation that all other PFRPG systems build upon.

**Related Documents:**
- PFRPG-CoreMechanics-Primer.md (Macro-level introduction to core mechanics)
- PFRPG-MechanicalInteractions.md (How core mechanics interact with other systems)
- PFRPG-SemanticRelationships.md (Conceptual relationships)
- PFRPG-Analysis-Updated.md (Complete rulebook reference)
- STEP2_SECTION_BREAKDOWN_ANALYSIS.md (Section planning)

**Dependencies:** None (foundational section)

**Enables:** Sections 2-12 all depend on Core Mechanics

**Format:** Detailed Analysis + Examples + Decision Trees

**Last Updated:** December 16, 2025

---

## PART 1: THE d6 SYSTEM FOUNDATION

### What is the d6 System?

The d6 system (six-sided die) is the mechanical heart of PFRPG. Every action that has meaningful uncertainty is resolved by rolling one or more d6 dice and comparing the result to a **difficulty threshold**.

### Core Principle: Simplicity

**The Golden Rule:** Every check follows the same pattern:
```
Roll d6 → Compare to Difficulty → Success or Failure
```

There are **no bonuses** in PFRPG. There are no "+2 to attack" modifiers. There are no armor class calculations. Instead, PFRPG uses **difficulty adjustment** and **rerolls** as its primary mechanical knobs.

---

## PART 2: TASK RESOLUTION FRAMEWORK

### The Universal Task Resolution Process

**Every task in PFRPG follows this 5-step process:**

**Step 1: Identify the Ability**
- Determine which of 5 core abilities applies (Strength, Agility, Intelligence, Wisdom, Charisma)
- Sometimes multiple abilities could apply → PM picks one

**Step 2: Determine Base Die**
- Standard base: d6 (roll 1d6, get result 1-6)
- Class/ability modifiers apply: d6-1, d6-2, d6+1 (very rare)
- Some tasks: multiple rolls

**Step 3: Set Difficulty Threshold**
- Determine which difficulty tier applies (Laughable 2+, Simple 3+, Average 4+, Tough 5+, Very Difficult 6)
- PM makes this determination based on task description
- Players can argue for lower difficulty if creative approach used

**Step 4: Execute the Roll**
- Roll the die (or dice)
- Immediately check for natural 6 (earn potential Heroic Reroll)
- Apply modifiers if any (Full Defense reroll, Heroic Reroll, item bonuses)

**Step 5: Compare and Resolve**
- Roll result ≥ Difficulty → SUCCESS
- Roll result < Difficulty → FAILURE
- Declare outcome and narrate results

### Example: Climbing a Rope

**Scenario:** Character needs to climb 20 feet of rope to reach a platform.

**Step 1:** Ability = Strength (climbing uses muscle power)

**Step 2:** Base die = d6 (standard physical task)

**Step 3:** Difficulty = Average (4+) [scaling: Easy = Simple (3+), Hard = Tough (5+)]

**Step 4:** Roll d6 = 4 (meets or exceeds 4, and not a 6)

**Step 5:** SUCCESS! Character climbs rope safely.

### Example: Climbing Same Rope But It's Icy

**Scenario:** Same rope, but covered in ice.

**Step 1:** Ability = Strength + Agility (PM picks one: Agility for balance)

**Step 2:** Base die = d6-1 (harder conditions reduce die)

**Step 3:** Difficulty = Tough (5+) [PM raised from Average because of ice]

**Step 4:** Roll d6-1 = 3 (doesn't meet 5)

**Step 5:** FAILURE! Character slips, falls, takes damage.

---

## PART 3: THE FIVE DIFFICULTY TIERS

### Difficulty Framework

Difficulty is the **threshold** the die roll must meet or exceed. There are exactly 5 difficulty tiers in PFRPG:

| Difficulty | Threshold | Success % | When to Use | Example |
|-----------|-----------|-----------|------------|---------|
| **Laughable** | 2+ | 83% | Trivial tasks, near-guaranteed success | Tying shoes, picking up item |
| **Simple** | 3+ | 67% | Basic competency, likely success | Climbing stairs, basic jump |
| **Average** | 4+ | 50% | Moderate challenge, coin-flip odds | Climbing rope, swimming across river |
| **Tough** | 5+ | 33% | Significant challenge, likely failure | Scaling castle wall, precision task |
| **Very Difficult** | 6 | 17% | Against-the-odds moment, heroic attempt | Impossible jump, complex puzzle, near-death save |

### Success Percentages Explained

These percentages assume a **standard d6 (1-6 result)**:
- Laughable (2+): 2,3,4,5,6 = 5 outcomes = 83%
- Simple (3+): 3,4,5,6 = 4 outcomes = 67%
- Average (4+): 4,5,6 = 3 outcomes = 50%
- Tough (5+): 5,6 = 2 outcomes = 33%
- Very Difficult (6): 6 = 1 outcome = 17%

### Difficulty Modification Rules

Difficulty can be **adjusted by PM based on circumstances**:

**Lower Difficulty (Make Task Easier):**
- Creative approach that cleverly solves problem
- Using appropriate tool
- Optimal positioning or preparation
- Environmental advantage
- Favorable conditions

**Raise Difficulty (Make Task Harder):**
- Disadvantageous conditions (icy rope, darkness, rushing)
- Hostile opposition (trying to hide while enemies watching)
- Time pressure
- Resource constraints
- Multiple competing factors

### How Much Can Difficulty Move?

**Standard rule:** Move by 1 tier at a time
- Average → Simple (easier)
- Average → Tough (harder)
- Do not jump multiple tiers (Average → Very Difficult in one step is rare)

**PM Judgment:** Extreme situations might move 2 tiers, but document this and be consistent

### Example: Difficulty Modification in Action

**Base Task:** Cross icy bridge (Tough 5+)

**Scenario A:** Character has rope and ally holding it
- Environmental advantage: Lower from Tough to Average
- Result: Average (4+) difficulty

**Scenario B:** Bridge is collapsing and enemies chasing
- Time pressure + complications: Raise from Tough to Very Difficult
- Result: Very Difficult (6) difficulty

**Scenario C:** Character studies bridge for 10 minutes before crossing
- Preparation + analysis: Lower from Tough to Average
- Result: Average (4+) difficulty

---

## PART 4: THE FIVE CORE ABILITIES

### What Are Core Abilities?

Core abilities represent what a character is naturally good at. Every task in PFRPG is resolved using one of 5 core abilities:

1. **Strength** - Physical power, muscle, force
2. **Agility** - Speed, balance, reflexes, precision
3. **Intelligence** - Logic, problem-solving, knowledge
4. **Wisdom** - Perception, insight, intuition
5. **Charisma** - Social influence, persuasion, charm

### Core Ability Stats (Numbers)

Each character has a **stat for each ability**, ranging from 1-3:
- Stat 1: Weak at this ability
- Stat 2: Average at this ability
- Stat 3: Excellent at this ability

These stats affect **ability rerolls** (not raw modifiers):
- Strength 1 character: Can reroll Strength tasks (if applicable ability reroll exists)
- Strength 3 character: Same reroll availability (stats don't give bonuses)

### Important: Stats Don't Give Bonuses

**Key Principle:** A character's stat of 3 doesn't mean "+3 to rolls." PFRPG has no bonuses.
- High stat = Better at using associated ability reroll
- Low stat = Still roll d6 normally, but fewer reroll options
- Difference is small and mechanical, not narrative

### Core Ability Application Chart

| Ability | Typical Use Cases | Example Tasks | Class Synergies |
|---------|------------------|----------------|-----------------|
| **Strength** | Physical power, forcing things, heavy lifting | Climbing, breaking doors, arm wrestling, swimming | Fighter (Muscle ability), Cleric |
| **Agility** | Speed, balance, precision, reflexes | Lockpicking, balancing, sneaking, dodging | Thief (Nimble ability), Ranger (Alert ability) |
| **Intelligence** | Logic, problem-solving, analysis, knowledge | Solving puzzles, understanding languages, research | Wizard (Brains ability), Bard (Loremaster ability) |
| **Wisdom** | Perception, insight, reading people, noticing details | Spotting hidden objects, reading emotions, tracking | Cleric (Righteous Insight ability), Ranger (Survivalist) |
| **Charisma** | Social influence, persuasion, charm, leadership | Persuading NPCs, intimidating, seduction, trading | Bard (Charming ability), Fighter (Challenge ability) |

### Ability Rerolls

Some **class abilities provide rerolls on specific core abilities**:

**Examples:**
- **Fighter's Muscle:** Reroll on Strength tasks
- **Thief's Nimble:** Reroll on Agility tasks (includes lockpicking)
- **Wizard's Brains:** Reroll on Intelligence tasks
- **Bard's Charming:** Reroll on Charisma tasks
- **Cleric's Righteous Insight:** Reroll on Wisdom tasks
- **Ranger's Survivalist:** Reroll on Wisdom tasks (wilderness)

**How ability rerolls work:**
1. Make a Strength task, fail (roll 2, needed 4+)
2. Have Muscle ability → can reroll
3. Reroll: Roll d6 again, take this new result
4. New roll: 5 (succeeds!)

**Key rule:** You can use ability reroll OR Heroic Reroll, not both on same roll

---

## PART 5: HEROIC REROLL SYSTEM

### What is a Heroic Reroll?

A **Heroic Reroll** is a one-time-per-session resource that lets you reroll any die roll and take the better result.

### Heroic Reroll Allocation

**Default:** 1 Heroic Reroll per session

**Increases:**
- Human racial trait: +1 (total: 2 per session)
- Amulet of Legends (item): +2 (total: 3 per session)
- Nether Band (item): +1 (total: 2 per session)
- Combined max: 4 per session (Human + Amulet + Nether Band)

### Using a Heroic Reroll

**When you can use it:**
- On any die roll (task, combat, spell)
- Before or after you see the result (PM discretion, typically after)
- Only once per roll

**Process:**
1. You roll something and don't like result
2. Say "I use Heroic Reroll"
3. Spend 1 from your pool
4. Roll again
5. Take the new result (even if worse)

### Earning Heroic Rerolls Back

You can **replenish Heroic Rerolls during a session** through natural 6 checks:

**Process:**
1. Roll a **natural 6** on any roll
2. PM says "check for Heroic Reroll"
3. Roll d6 again
4. If you roll **6 again** → Earn 1 Heroic Reroll
5. If you roll anything else (1-5) → No reward

**Probability:** 1 in 36 chance (17% × 17% = 2.8%)

### Example: Heroic Reroll Earning

**Combat scenario:**
- Fighter attacks, rolls natural 6 (coincidentally hits well)
- PM says "natural 6, roll for Heroic Reroll"
- Fighter rolls d6 = 6 (lucky!)
- Fighter earns 1 Heroic Reroll back (replenishes pool)

**Later same session:**
- Wizard makes a crucial task, rolls badly
- Wizard uses newly-earned Heroic Reroll
- Wizard rerolls and succeeds

### Strategic Heroic Reroll Usage

**Good times to use:**
- Boss fight, crucial moment where reroll determines victory
- Critical death save (reaches 0 HP)
- Important story moment where failure has major consequences
- Low on resources, confident a reroll will change outcome

**Bad times to use:**
- Early exploration with no stakes
- On tasks that don't matter much
- When likely to succeed anyway
- When might earn one back soon (hold in reserve)

### Important Rules

**Cannot reroll a Heroic Reroll:**
- You roll your Heroic Reroll die and get unlucky? That's it. Can't reroll the reroll.
- This is intentional (limits unlimited rerolls)

**Heroic Reroll + Ability Reroll:**
- Can use one OR the other, not both on same roll
- If you have both available, choose which one
- Typically use ability reroll first (save Heroic for critical moments)

**Stacking Sources:**
- If you have multiple sources of rerolls (item + ability), they're separate resources
- Use one, then other, then other (sequential, not combined)

---

## PART 6: THE EXPLODING DIE MECHANIC

### What is Exploding Die?

**Exploding die** means when you roll a **natural 6**, you get to **roll additional d6s** and add them together.

### How Exploding Works

**Standard roll:** Roll d6, get result 1-6
- Result 1: 1 damage
- Result 2: 2 damage
- Result 3: 3 damage
- Result 4: 4 damage
- Result 5: 5 damage
- Result 6: Explodes! Roll again.

**When you roll 6:**
1. You rolled 6 (count this)
2. Roll another d6
3. If you roll 1-5: Add it and stop (e.g., 6 + 3 = 9 total)
4. If you roll 6 again: Add it and roll again (e.g., 6 + 6 + ? = ?)
5. Continue until you roll 1-5

### Exploding Chain Example

**Combat scenario - Fighter using Combat Master ability:**

**Attack Roll 1:**
- Roll d6 = 6 (explode!)
- Roll second d6 = 3 (stops)
- Total: 6 + 3 = 9 damage

**Attack Roll 2:**
- Roll d6 = 6 (explode!)
- Roll second d6 = 6 (explode again!)
- Roll third d6 = 4 (stops)
- Total: 6 + 6 + 4 = 16 damage

**Attack Roll 3:**
- Roll d6 = 6 (explode!)
- Roll second d6 = 6 (explode again!)
- Roll third d6 = 6 (explode again!)
- Roll fourth d6 = 1 (stops)
- Total: 6 + 6 + 6 + 1 = 19 damage (very lucky!)

### When Exploding Applies

**Exploding occurs on:**
- Combat Skill rolls (attack damage)
- Spell damage rolls
- Other d6 damage rolls
- Specific ability triggers (Combat Master, etc.)

**Exploding does NOT occur on:**
- Task difficulty checks (you either succeed or fail, no explosion)
- Defense rolls (no explosion for blocking)
- Heroic Reroll checks (no explosion on the reroll die itself)

---

## PART 7: NATURAL 6 CHECKS

### What is a Natural 6?

A **natural 6** is when you roll exactly **6** on any d6 roll.

### Natural 6 Mechanics

Whenever you roll a natural 6:

**Step 1: Immediate Effect**
- If damage roll: Get to explode (roll additional d6)
- If task: Potential Heroic Reroll earning opportunity
- Narrative: Something special happened

**Step 2: Heroic Reroll Check**
- PM says "Roll for Heroic Reroll"
- Roll d6 again
- If 6: Earn 1 Heroic Reroll
- If 1-5: No reward

**Step 3: Continue**
- Effect applies (damage includes explosions, task check continues)
- Reroll either earned or not
- Move on

### Natural 6 in Different Contexts

**In Combat (Attack):**
- Roll attack damage: 6 (natural 6)
- Damage: 6 (minimum)
- Explosion check: Roll d6, add result
- Heroic Reroll check: Roll d6, if 6 earn 1 reroll

**In Tasks (Skill Check):**
- Roll task: 6 (natural 6)
- Effect: Task succeeds (6 always meets any difficulty)
- Heroic Reroll check: Roll d6, if 6 earn 1 reroll
- No additional effect (task doesn't "chain" like damage)

**In Spells (Spell Damage):**
- Roll spell damage: 6 (natural 6)
- Damage: 6 minimum
- Explosion: Roll d6, add result
- Heroic Reroll check: Roll d6, if 6 earn 1 reroll

---

## PART 8: CORE MECHANICS BY SCENARIO TYPE

### Scenario Type 1: Simple Task (No Opposition)

**Example:** Climbing a rope in safe conditions

**Process:**
1. PM: "That's Average difficulty (4+)"
2. Player: "I roll" → Rolls d6 = 5
3. Result: SUCCESS (5 ≥ 4)
4. Narration: "You climb the rope easily"

**Possible complications:**
- Roll was 6? Check for Heroic Reroll (but task already succeeds)
- Want to use Heroic Reroll? Can't, already succeeded
- Want to use Heroic Reroll to fail intentionally? Unusual but PM could allow

### Scenario Type 2: Opposed Task (Opposition Present)

**Example:** Trying to hide while enemies search

**Process:**
1. Hider rolls Agility task: Average (4+) difficulty = 5 (succeeds)
2. Searcher rolls Wisdom task: Average (4+) difficulty = 3 (fails)
3. Result: Hider remains hidden (hider success > searcher failure)

**Key difference from simple task:**
- Both sides roll
- Compare results
- Better result wins
- If tied, PM decides or they cancel out

### Scenario Type 3: Coordinated Task (Group Effort)

**Example:** Party tries to lift heavy object

**Process:**
1. All roll Strength task: Average (4+) difficulty
2. Results: Fighter 5 (succeeds), Wizard 2 (fails), Cleric 4 (succeeds)
3. Result: 2 successes, 1 failure → Partial success (lift it but strain, damage risk)

**General rule:** 
- All succeed = Full success
- Some succeed = Partial success or complication
- All fail = Full failure

### Scenario Type 4: Combat (Opposed with Damage)

**Example:** Fighter vs. Goblin fight

**Process:**
1. Fighter rolls attack CS d6 = 5
2. Goblin rolls defense CS d6-3 = 1
3. Damage = 5 - 1 = 4 hp to Goblin
4. Check for natural 6? No (rolled 5)
5. Apply damage and continue

**Key differences:**
- Attack roll - Defense roll = Damage dealt
- Both roll (unlike simple task where only one rolls)
- Damage is applied, not just success/failure

---

## PART 9: CORE MECHANICS DECISION MATRICES

### When to Use Each Difficulty

| Situation | Difficulty | Why | Example |
|-----------|-----------|-----|---------|
| Trivial, no challenge | Laughable (2+) | PC almost certain to succeed | Picking up item from floor |
| Routine, low challenge | Simple (3+) | PC likely to succeed | Climbing short ladder |
| Moderate, 50/50 | Average (4+) | Genuine uncertainty | Jumping across gap |
| High challenge | Tough (5+) | PC likely to fail | Scaling castle wall |
| Heroic moment | Very Difficult (6) | Only possible with luck or reroll | Last-second save from death |

### When to Modify Difficulty

| Factor | Direction | Amount | Example |
|--------|-----------|--------|---------|
| Creative approach | Lower | -1 tier | Using oil to make rope less icy |
| Using right tool | Lower | -1 tier | Using grappling hook for climbing |
| Preparation | Lower | -1 tier | Studying the puzzle before attempting |
| Time pressure | Raise | +1 tier | Enemies approaching, must hurry |
| Poor conditions | Raise | +1 tier | Rain, darkness, exhaustion |
| Hostile opposition | Raise | +1 tier | Enemy actively trying to stop you |

### When to Use Each Core Ability

| Ability | Ask Yourself | Use When | Example |
|---------|-------------|----------|---------|
| Strength | "Does this need muscle?" | Physical power, force, heavy lifting | Breaking doors, climbing |
| Agility | "Does this need speed/precision?" | Movement, balance, reflexes | Lockpicking, dodging |
| Intelligence | "Does this need logic/knowledge?" | Problem-solving, analysis | Solving puzzles, research |
| Wisdom | "Does this need perception/insight?" | Noticing, reading people | Spotting traps, reading NPCs |
| Charisma | "Does this need social influence?" | Persuasion, charm, intimidation | Persuading NPCs, trading |

---

## PART 10: CORE MECHANICS FAQs

### FAQ 1: Can I Modify Difficulty Arbitrarily?

**Q:** Can I just lower difficulty whenever I want?

**A:** No. PM sets difficulty based on task description. However, players can argue for lower difficulty if:
- Their approach is creative and actually helps
- They're using appropriate tools or abilities
- Environmental factors genuinely make it easier

PM has final say. Difficulty should feel fair and consistent.

---

### FAQ 2: What If I Don't Know Which Ability to Use?

**Q:** The task could use multiple abilities. What do I do?

**A:** PM picks one core ability. Examples:
- Climbing icy rope: Could be Strength or Agility → PM picks one (probably Agility for balance)
- Persuading hostile NPC: Could be Charisma or Intelligence → PM picks one (probably Charisma)
- Tracking animal: Could be Wisdom or Intelligence → PM picks one (probably Wisdom)

If player argues for different ability, PM can adjust, but doesn't have to.

---

### FAQ 3: What Happens on Exactly the Difficulty Number?

**Q:** If difficulty is 4+ and I roll exactly 4, do I succeed?

**A:** Yes! The threshold is "4 or higher" so exactly 4 succeeds.
- Difficulty "4+" = 4, 5, 6 = success
- Difficulty "5+" = 5, 6 = success
- Difficulty "6" = 6 only = success

---

### FAQ 4: Can I Use Heroic Reroll on Something Already Succeeded?

**Q:** I succeeded on a task but want to succeed better. Can I Heroic Reroll to get higher?

**A:** No. Heroic Reroll is for rerolling unfavorable results. If you succeeded, you succeeded. No need to reroll.

---

### FAQ 5: Can Multiple Explosions Happen?

**Q:** Can my damage chain explode like 6→6→6→6?

**A:** Yes! Each 6 you roll lets you roll again. Theoretically could chain infinitely (though probability gets lower each time).

Example: 6 + 6 + 6 + 4 = 16 damage (3 explosions, stopped on 4)

---

### FAQ 6: What If Die Modifier Takes Me Below 1?

**Q:** If I have d6-2 and modify it further, can I get d6-4?

**A:** Rarely. Most modified dice have a minimum:
- d6-1: Can roll 1-5 (minimum result 1)
- d6-2: Can roll 1-4 (minimum result 1)
- d6-3: Can roll 1-3 (minimum result 1)

Don't go below 1 (can't have d6-999). If rule says d6-3 and you modify it, minimum result is 1.

---

### FAQ 7: Do Statistics Actually Matter?

**Q:** My Strength is 3 but my friend's is 1. Are we different in a fight?

**A:** Yes, but subtly. Stats affect:
- Who has ability rerolls available (Strength 3 → better access than Strength 1)
- Some ability-specific reroll rules
- Narrative flavor

Stats don't give bonuses. Combat Skill (d6, d6-1, d6-2) is determined by class, not stat.

---

## PART 11: CORE MECHANICS INTERACTION WITH OTHER SYSTEMS

### How Core Mechanics Enable Combat (Section 2)

Combat uses **Core Mechanics foundation**:
- Task resolution → Combat Skill rolls
- Difficulty tiers → Combat challenges
- Exploding die → Combat Master ability
- Natural 6 checks → Heroic Reroll earning in combat
- Core abilities → Combat ability rerolls (Muscle, Nimble, etc.)

### How Core Mechanics Enable Magic (Section 5)

Magic uses **Core Mechanics foundation**:
- Task resolution → Spell rolls
- Difficulty tiers → Free Form Magic difficulty
- Exploding die → Spell damage explosions
- Heroic Reroll → Spell casting safety

### How Core Mechanics Enable Classes (Section 3)

Classes use **Core Mechanics foundation**:
- Ability rerolls tied to core abilities
- Combat Skill derived from d6 system
- HP tied to class role

### How Core Mechanics Enable Encounters (Section 7)

Encounters use **Core Mechanics foundation**:
- Monster CS tied to d6 system
- Difficulty assessment tied to difficulty tiers
- Monster abilities use task resolution

---

## PART 12: QUICK REFERENCE TABLES FOR SECTION 1

### Core Mechanics Quick Lookup

| Concept | Definition | Reference |
|---------|-----------|-----------|
| **d6 System** | All rolls use 1d6, compare to difficulty | Foundation |
| **Difficulty** | Threshold (2-6) that roll must meet | Average = 4+ |
| **No Bonuses** | PFRPG has no "+2 to rolls" | Roll = Roll, always |
| **Core Ability** | One of 5 (Str, Agi, Int, Wis, Cha) | Context determines |
| **Heroic Reroll** | 1/session resource, take better roll | Can earn back via 6→6 |
| **Exploding Die** | Roll 6 on damage, roll again and add | Can chain (6+6+...) |
| **Natural 6** | Rolling exactly 6 on d6 | Triggers explosion + reroll check |

### Difficulty Tier Reference

| Tier | Threshold | % Success | Use Case | Example |
|------|-----------|-----------|----------|---------|
| Laughable | 2+ | 83% | Trivial | Picking up item |
| Simple | 3+ | 67% | Routine | Climbing stairs |
| Average | 4+ | 50% | Moderate | Average jump |
| Tough | 5+ | 33% | Challenging | Castle wall |
| Very Difficult | 6 | 17% | Heroic | Impossible feat |

### Core Ability Cheat Sheet

| Ability | Good For | Stat Benefit | Class Reroll |
|---------|----------|-------------|-------------|
| Strength | Force, lifting, physical power | Muscle tasks | Fighter (Muscle) |
| Agility | Speed, precision, balance | Movement tasks | Thief (Nimble) |
| Intelligence | Logic, analysis, knowledge | Mental tasks | Wizard (Brains) |
| Wisdom | Perception, intuition, insight | Noticing tasks | Cleric (Righteous Insight) |
| Charisma | Social influence, persuasion | Social tasks | Bard (Charming) |

---

## SECTION 1 SUMMARY

### Key Takeaways

1. **d6 is everything** - Every roll uses the d6 system
2. **No bonuses** - PFRPG uses difficulty modification + rerolls instead
3. **Five difficulties** - Laughable to Very Difficult, from 83% to 17% success
4. **Five abilities** - Str, Agi, Int, Wis, Cha determine which tasks use which rerolls
5. **Heroic Rerolls** - 1 per session resource that can be earned back through natural 6 chains
6. **Exploding dice** - Natural 6 on damage causes additional rolls to chain
7. **Natural 6s** - Always check for Heroic Reroll earning opportunity
8. **Consistency** - Same system applies everywhere (combat, magic, tasks)

### How Section 1 Enables Everything Else

Core Mechanics is the **foundation** that all other sections build on:
- Combat (Section 2) uses these task resolution rules
- Classes (Section 3) have abilities that trigger on these mechanics
- Magic (Section 5) uses exploding die and natural 6 checks
- Everything depends on understanding difficulty tiers and d6 basics

---

**End of Section 1: Core Mechanics & Task System (Section-Level Deep Dive)**

*For macro-level introduction, see PFRPG-CoreMechanics-Primer.md. For specific applications, see relevant section documents (Combat, Classes, Magic, etc.).*