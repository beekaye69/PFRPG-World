# PFRPG SECTION 2: COMBAT SYSTEM
## Deep Section-Level Analysis

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Section 2: Combat System (Section-Level Deep Dive)

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Section-Level Analysis & Reference

**Purpose:** Complete deep-dive into initiative resolution, attack/defense mechanics, movement, special combat actions, combat flow, and tactical scenarios. Provides comprehensive detail on structured combat encounters.

**Related Documents:**
- PFRPG-CombatPrimer.md (Macro-level combat walkthrough)
- SECTION_1_CoreMechanics_DeepDive.md (Foundation: d6 system, difficulty, core abilities)
- PFRPG-MechanicalInteractions.md (Combat interactions)
- STEP2_SECTION_BREAKDOWN_ANALYSIS.md (Section planning)

**Dependencies:** Section 1 (Core Mechanics)

**Enables:** Sections 7, 8, 9 (Encounters, Monsters, Loot)

**Format:** Detailed Analysis + Examples + Matrices

**Last Updated:** December 16, 2025

---

## PART 1: COMBAT OVERVIEW

Combat in PFRPG is turn-based, round-structured, and uses the d6 system from Section 1.

### Combat Structure
- **Initiative:** Determine action order
- **Rounds:** All combatants act once per round in initiative order
- **Actions:** Each turn, character chooses one action
- **Resolution:** Immediately apply effects
- **End Condition:** Combat ends when one side wins, loses, or flees

---

## PART 2: INITIATIVE SYSTEM

### Initiative Process

**Step 1: All combatants make Agility task (d6 roll)**
- Base: d6 standard roll
- Compare to Average (4+) difficulty
- Everyone rolls simultaneously

**Step 2: Determine order**
- Highest roll acts first
- Resolve ties by Agility stat (or reroll)
- Order continues for all rounds (no re-roll each round typically)

**Step 3: Execute round**
- Act in initiative order
- Each character takes one action
- Resolve effects immediately

### Initiative Example

**Participants:**
- Fighter (Agility 2): Rolls 3
- Thief (Agility 3): Rolls 5
- Orc Enemy (rolls): 4
- Goblin Enemy (rolls): 1

**Order:** Thief (5) → Orc (4) → Fighter (3) → Goblin (1)

**Round 1:** Thief acts → Orc acts → Fighter acts → Goblin acts → Round ends

---

## PART 3: SURPRISE MECHANICS

### When Does Surprise Occur?

Surprise happens when one side enters combat **unaware** of the other's hostile intent.

### Surprise Resolution

**Before combat starts:**
- Surprised side makes Wisdom task to notice ambush
- Difficulty varies by situation (Average 4+ typical)

**If surprised:**
- Surprised side gets disadvantage in initiative (acts after, or lower initiative threshold)
- Can still act normally once combat starts

**Special: Elf Racial Trait**
- Elves only get surprised on roll of 1 (vs. normal 1-3 range)
- Massive advantage in ambush scenarios

### Surprise Example

**Setup:** Party walking through corridor, goblins hidden behind corner

**Surprise Check:** Party makes Wisdom (4+) to notice
- Fighter: 3 (fail)
- Thief: 5 (success)
- Wizard: 2 (fail)
- Cleric: 4 (success)

**Result:** 2 successes, 2 failures = Mixed awareness
- Thief + Cleric notice goblins (not surprised)
- Fighter + Wizard surprised (act after)

**Combat Order:** (Based on initiative, but surprised characters might have -1 to init or similar)

---

## PART 4: COMBAT ACTIONS

### Available Actions (1 per turn)

| Action | Cost | Effect | Example |
|--------|------|--------|---------|
| Attack | 1 action | Roll attack, target defends, deal damage | Sword swing |
| Defend | Reactive | Ready to block, takes defensive roll | No action cost |
| Full Defense | 1 action | Defensive stance, reroll all defense | Brace for hits |
| Cast Spell | 1 action | Magic casting | Dark Bolt, Confusion |
| Special Ability | Per ability | Class/item ability | Combat Master, Flank |
| Move | Free | Reposition | No action cost |

### Movement Rules

**Free Movement:**
- Move anywhere in combat without action cost
- Can move + take action same turn

**Disengagement:**
- If leaving melee range, opponent gets free melee attack
- Can be used strategically to trigger counterattacks

**Range:**
- Melee: Engaged with enemy
- Ranged: Distance away
- Spell: Variable per spell

---

## PART 5: ATTACK RESOLUTION

### Attack vs. Defense Process

**Step 1: Attacker declares target and attack**
- "I attack the Orc with my sword"

**Step 2: Attacker rolls Combat Skill (CS)**
- CS varies by class (Fighter d6, Thief d6-1, etc.)
- Roll result is damage IF it hits

**Step 3: Defender reacts**
- Defender can defend normally (roll defense)
- Or use Full Defense (defense + reroll)
- Or use special ability (Deflect, etc.)

**Step 4: Defender rolls defense**
- Defense CS varies by class
- Compare to attack roll

**Step 5: Calculate damage**
- Damage = Attack Roll - Defense Roll
- Apply to target HP

**Step 6: Check for natural 6**
- If attacker rolled 6: Exploding damage + Heroic Reroll check
- If defender rolled 6: No explosion (only attack explodes)

### Damage Example

**Fighter attacks Goblin:**
- Fighter CS d6 = 5 damage
- Goblin defense CS d6-3 = 2 blocked
- Damage dealt: 5 - 2 = 3 hp
- Goblin takes 3 hp damage

---

## PART 6: SPECIAL COMBAT ACTIONS

### Action 1: Full Defense

**Use:** On your turn, declare "Full Defense"

**Effect:** All defense rolls this round get rerolled (take best result)

**Cost:** 1 action (can't attack or cast spell same turn)

**Duration:** Until start of next turn

**Benefit:** Mitigates unlucky defense rolls

**Example:**
- Enemy attacks: 5 damage vs. Full Defense character
- Character rolls defense: 1 (bad!)
- Full Defense reroll: 4 (better!)
- Damage taken: 5 - 4 = 1 (instead of 5 - 1 = 4)

### Action 2: Spell Casting

**Use:** On your turn (Wizard only)

**Effect:** Cast one combat spell with immediate effect

**Cost:** 1 action, counts against 2 spells per encounter

**Duration:** Varies by spell

**Benefit:** Flexible options (damage, control, support)

### Action 3: Special Abilities

**Use:** Various abilities usable in combat

**Examples:**
- **Combat Master (Fighter):** Additional d6 roll on attack
- **Flank (Thief):** Dual attack rolls
- **Challenge (Fighter):** Force enemy focus
- **Backstab (Thief):** Double damage from hiding

---

## PART 7: DEFENSE MECHANICS

### Standard Defense

**Process:**
- Enemy attacks
- You roll defense CS
- Compare: Attack - Defense = Damage
- Apply damage

### Full Defense

**Process:**
- Declare Full Defense at start of turn
- All defense rolls this round reroll (take best)
- Still takes attacks as normal, but rolls better

### Deflect (With Item)

**Process:**
- Use Deflect item commitment
- Automatic 6 block (no roll needed)
- Limited uses per encounter

### Dodge/Avoidance

**Process:**
- Move out of range
- Lose defense roll (can't defend against ranged)
- Often better than rolling low defense

---

## PART 8: COMBAT FLOW & TURN STRUCTURE

### Complete Combat Round Structure

```
Round N Begins
    ├─ Character 1 (highest initiative) takes turn
    │  ├─ Choose action (attack/spell/defend/ability)
    │  ├─ Resolve action immediately
    │  └─ Apply effects
    │
    ├─ Character 2 takes turn
    │  ├─ Choose action
    │  ├─ Resolve immediately
    │  └─ Apply effects
    │
    ├─ Enemy 1 takes turn
    ├─ Enemy 2 takes turn
    │
    └─ Round N ends
       └─ Check: Is combat over?
          ├─ No → Start Round N+1
          └─ Yes → Combat ends
```

### Multi-Round Combat Example

**Setup:** Fighter + Wizard vs. Orc + 3 Goblins

**Round 1:**
- Fighter attacks Orc (3 damage)
- Orc attacks Fighter (2 damage)
- Wizard casts Confusion on Orc
- Goblin 1 attacks Wizard (0 damage, blocked)

**Round 2:**
- Fighter attacks Orc (4 damage, Orc now very low)
- Orc attacks Fighter (4 damage)
- Wizard continues Confusion (Orc still confused)
- Goblin 1 attacks Wizard (1 damage)

**Round 3:**
- Fighter kills Orc (final attack)
- Goblins panic and flee
- Combat ends

---

## PART 9: TACTICAL SCENARIOS

### Scenario 1: Outnumbered Party

**Setup:** 4 players vs. 8 monsters

**Tactics:**
- Concentrate fire (all attack one enemy at a time)
- Use Flank for extra damage
- Use crowd control (Confusion spell)
- Use Full Defense for survival

**Advantage:** Monsters gain numerical advantage
**Counter:** Party must be smarter tactically

### Scenario 2: Boss + Minions

**Setup:** 1 Boss (tough) + 3 Minions (weak)

**Tactics:**
- Clear minions first, then focus boss
- OR focus boss while minions weak
- Use control magic on boss (Confusion)
- Use Flank when minions present

**Advantage:** Depends on party speed
**Counter:** Vary by party composition

### Scenario 3: Ranged vs. Melee

**Setup:** Party has ranged, enemies have melee

**Tactics:**
- Stay at distance
- Use ranged attacks
- Let enemies come to you
- Use terrain for cover

**Advantage:** Ranged party at distance
**Counter:** Enemies close distance

---

## PART 10: COMBAT MECHANICS INTERACTIONS

### Simultaneous Actions

**Issue:** What if two characters act at exact same time?

**Resolution:**
- Doesn't happen (initiative determines order)
- If ever ambiguous, PM decides

### Multiple Attacks

**Question:** Can I attack twice?

**Answer:** Only if you have 2 actions (rare ability)
- Default: 1 action per turn
- Some abilities grant extra actions
- Some items grant extra actions

### Spell During Combat

**Mechanics:**
- Cast spell = 1 action
- Counts against 2 spells per encounter
- No action left to move/attack same turn

### Movement + Attack

**Mechanics:**
- Movement = Free (no action)
- Attack = 1 action
- Can do both same turn (move then attack)

---

## PART 11: 0 HP & DEATH MECHANICS

### Reaching 0 HP

**Immediate Effect:** Character becomes unconscious

**Per-Round Death Save:**
- Make Laughable (2+) task each round
- Success: Stay alive
- Failure: Die permanently

### Stabilization

**Ally Action:** Adjacent ally spends 1 action
- Make Average (4+) task
- Success: Character stabilized (no more death saves)
- Stabilized character conscious but helpless

### Healing

**Options:**
- Holy Light spell: d6-1 hp restore
- Potion of Ultimate Healing: Full hp
- Post-encounter natural: 1 hp restore
- Extended rest: 3 hp restore

### Death Example

**Fighter reaches 0 HP:**
- Round 1: Death save, rolls 3 (succeeds, alive)
- Round 2: Death save, rolls 5 (succeeds, alive)
- Round 3: Death save, rolls 1 (fails, dies)
- Fighter is permanently dead

**Alternative with healing:**
- Round 1: Death save, succeeds
- Round 2: Cleric uses Holy Light, Fighter heals 3 hp
- Fighter back in combat with 3 hp

---

## PART 12: COMBAT QUICK REFERENCE

### Combat Decision Matrix

| Situation | Action | Why |
|-----------|--------|-----|
| Enemy high-damage | Full Defense | Mitigate damage spike |
| Multiple enemies | Concentrate fire | Defeat faster |
| Enemy controlling | Use crowd control | Confusion, Bind |
| Low on HP | Defend/Hide | Survive |
| High on resources | Aggressive | Push advantage |

### Combat Difficulty Assessment

| Factor | Difficulty | Party Survival |
|--------|-----------|-----------------|
| 1 easy enemy | Easy | Trivial win |
| 3 average enemies | Moderate | Resource drain |
| 1 tough + 3 weak | Difficult | Risky |
| 1 boss (powerful) | Very Difficult | Desperate |

---

## PART 13: COMBAT FAQ

**Q: Can I defend myself against multiple attacks same round?**
A: Yes. Roll defense once per attack (separate rolls).

**Q: What if I'm at 0 HP mid-round?**
A: Unconscious immediately. Next round, make death saves.

**Q: Can I move then attack then move again?**
A: No. Movement is free (any time), but only 1 action per turn.

**Q: Do I heal between rounds?**
A: No. Only post-encounter or via spells/potions.

---

## SECTION 2 SUMMARY

**Key Points:**
- Initiative determines order (highest Agility roll first)
- Combat is turn-based, round-structured
- Each turn = 1 action (attack, spell, defend, ability, or move free)
- Attack Roll - Defense Roll = Damage
- Natural 6 on attack triggers explosion + reroll check
- Special actions available (Full Defense, Spells, Abilities)
- Combat ends when one side wins/loses/flees

---

**End of Section 2: Combat System (Section-Level Deep Dive)**

*For macro-level walkthrough, see PFRPG-CombatPrimer.md. For core mechanics foundation, see SECTION_1_CoreMechanics_DeepDive.md.*