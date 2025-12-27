# PFRPG SECTION 2.1: INITIATIVE SYSTEM
## Atomic Sub-Section Deep Dive

---

## DOCUMENT METADATA

**Title:** PFRPG Section 2.1: Initiative System (Atomic Sub-Section)

**Version:** 1.0

**Document Type:** Atomic Rule Reference + Examples

**Scope:** Initiative rolling, order determination, tie resolution, special cases

**Related Documents:**
- PFRPG-CombatPrimer.md (Macro: combat walkthrough with initiative examples)
- SECTION_1_CoreMechanics_DeepDive.md (Foundation: d6 system, Agility ability, task resolution)
- SECTION_2_CombatSystem_DeepDive.md (Section: full combat overview)
- SECTION_2.2_SurpriseMechanics.md (Related: surprise affects initiative)
- SECTION_2.3_CombatStructure.md (Related: initiative determines round order)

**Dependencies:** Section 1 (Core Mechanics foundation)

**Enables:** Section 2.2 (Surprise Mechanics), Section 2.3 (Combat Structure)

**Format:** Rule + Examples + PM Reasoning + FAQ + Decision Tree

**Last Updated:** December 16, 2025

---

## PART 1: RULE SUMMARY

**Initiative determines the order in which all combatants act during combat.**

**Process:**
1. All combatants make an **Agility task (d6 roll)**
2. Compare each roll to **Average difficulty (4+)**
3. Roll results ≥ 4 continue to ordering step
4. Rank from **highest to lowest roll**
5. In each round, act in this order (no re-roll between rounds)

**Key Principle:** Initiative is set at combat start and remains fixed for the duration of that combat encounter. Order does not change between rounds unless a special ability modifies it.

---

## PART 2: DETAILED MECHANICS

### Initiative Roll Process

**Step 1: PM calls for Initiative**
- PM says "Roll initiative"
- All combatants roll d6 simultaneously (or state rolls quickly)
- Record each roll

**Step 2: Determine Baseline Order**
- Sort all rolls from highest to lowest
- Highest roll acts first each round
- Continuing through all combatants

**Step 3: Resolve Ties**

**Scenario A: Two characters roll identical result**
- Example: Fighter rolls 4, Thief rolls 4

**Tiebreaker Method 1 (Compare Agility Stat):**
- Fighter Agility stat: 2
- Thief Agility stat: 3
- Thief has higher Agility stat → acts first

**Tiebreaker Method 2 (If stats also tied):**
- Both roll d6 again
- Highest new roll acts first
- Keep rerolling until tie broken

**Scenario B: Multiple tied rolls**
- Example: Fighter 4, Orc 4, Goblin 4, Cleric 3
- Compare Agility stats (highest first)
- If all tied on stats, each reroll until ordered

### Initiative Example: Four-Participant Combat

**Setup:**
- Fighter (Agility 2)
- Thief (Agility 3)
- Orc Enemy (assumed standard)
- Goblin Enemy (assumed standard)

**Rolls:**
- Fighter: d6 = 3
- Thief: d6 = 5
- Orc: d6 = 4
- Goblin: d6 = 2

**Baseline Order:** Thief (5) → Orc (4) → Fighter (3) → Goblin (2)

**No ties, so final order established:**

| Initiative Rank | Combatant | Roll | Agility |
|---|---|---|---|
| 1st | Thief | 5 | 3 |
| 2nd | Orc | 4 | — |
| 3rd | Fighter | 3 | 2 |
| 4th | Goblin | 2 | — |

**Round 1 execution:** Thief acts → Orc acts → Fighter acts → Goblin acts → Round ends

**Round 2 execution:** Same order (no re-roll)

**Round 3 execution:** Same order (no re-roll)

---

## PART 3: COMPLEX INITIATIVE SCENARIOS

### Scenario 1: Initiative with Surprise

**Setup:** Party encounters ambush

**Rule Link:** See SECTION_2.2_SurpriseMechanics.md

**Interaction:**
- Surprised combatants still roll initiative normally
- But may have disadvantage (lower roll threshold or penalty)
- After first round, surprise ends and normal combat continues

**Example:**
- Party walks into ambush
- Party makes Wisdom check to spot goblins (failed)
- Party is surprised
- Initiative still rolled, but party acts after goblins
- Round 2, surprise ends, order from initial roll continues

### Scenario 2: Initiative with Spell/Ability Effects

**Setup:** Character uses ability that affects initiative

**Examples of abilities that modify initiative:**
- **Ranger Alert ability:** Initiative advantage (higher baseline)
- **Ring of Speed (item):** Initiative advantage (reroll and take better)

**How these interact:**
- Apply ability/item modifier to base roll
- Then compare for ordering

**Example:**
- Ranger rolls 3 on initiative
- Ranger has Alert ability (initiative advantage)
- Effect: Reroll, take better
- Reroll: 5
- Final: 5 (use better roll)
- Rank: 1st or 2nd depending on others

---

## PART 4: PM REASONING & ADJUDICATION

### PM Decision Point 1: When to Call Initiative

**Situation:** Combat is about to start

**Question:** Should I call initiative now or later?

**Answer:** Call immediately when:
- First hostile action occurs (attack declared)
- First spell cast (in hostile context)
- First combat ability used
- All parties have had chance to respond

**Don't call initiative if:**
- NPCs are still talking (negotiations ongoing)
- Surprise is still being determined
- Combat might be avoided

**PM Example 1:**
- Party walks into tavern
- NPC draws sword and says "Get out"
- Party reaches for weapons
- **Call initiative now** (hostile action imminent)

**PM Example 2:**
- Party negotiates with merchant
- Merchant becomes upset
- Merchant threatens party
- Party might talk down or fight
- **Don't call initiative yet** (outcome uncertain)

### PM Decision Point 2: Handling Surprise and Initiative Together

**Situation:** Ambush scenario, some party members surprised, others not

**Question:** How does this affect initiative order?

**Answer:** Initiative still determines order, but surprise may:
- Lower surprised character's effective roll
- Make surprised character act last (even if they rolled higher)
- Give enemies advantage in first round

**PM Example 3:**
- Thief notices ambush (not surprised, rolled 5)
- Fighter doesn't notice (surprised, rolled 4)
- Normal order: Thief (5) → Fighter (4)
- With surprise: Ambushers → Thief (5) → Fighter (4)
- **After round 1, surprise ends, normal order resumes**

### PM Decision Point 3: Tied Initiative Adjudication

**Situation:** Multiple combatants roll exactly the same number

**Question:** Which one acts first?

**Answer:** Use Agility stat as tiebreaker (character concept reason: who's faster naturally)

**If stats also tied:** Reroll

**PM Example 4:**
- Fighter and Thief both roll 4
- Fighter Agility 2, Thief Agility 3
- Thief acts first (higher Agility stat)
- **Reasoning: Thief is naturally quicker**

---

## PART 5: GAMEPLAY EXAMPLES

### Gameplay Example 1: Standard Initiative (Simple)

**Setting:** Fighter, Wizard, and 3 Goblins

**Context:** Party enters goblin cave, goblins spot party immediately (no surprise)

**The Action:**
- PM: "You round the corner and see three goblins. They see you too. Roll initiative."
- Fighter: "I roll... 4"
- Wizard: "I roll... 2"
- Goblin 1: PM rolls 5
- Goblin 2: PM rolls 3
- Goblin 3: PM rolls 1

**Initiative Order:**
| Rank | Combatant | Roll |
|---|---|---|
| 1st | Goblin 1 | 5 |
| 2nd | Fighter | 4 |
| 3rd | Goblin 2 | 3 |
| 4th | Wizard | 2 |
| 5th | Goblin 3 | 1 |

**Round 1 Execution:**
- Goblin 1 acts (attacks Fighter)
- Fighter acts (attacks Goblin 1)
- Goblin 2 acts (attacks Wizard)
- Wizard acts (casts Dark Bolt at Goblin 1)
- Goblin 3 acts (attacks Fighter)

**Result:** Initiative order established and locked for remainder of encounter

---

### Gameplay Example 2: Initiative with Ties (Complex)

**Setting:** Fighter, Thief, Ranger, vs. Orc and 2 Goblin Archers

**Context:** Ambush scenario (party surprised!)

**The Rolls:**
- Fighter (Agility 2): d6 = 4
- Thief (Agility 3): d6 = 4 ← **Tied with Fighter**
- Ranger (Agility 3): d6 = 3
- Orc: d6 = 5
- Goblin Archer 1: d6 = 4 ← **Also tied with Fighter and Thief**
- Goblin Archer 2: d6 = 2

**Tiebreaker Process:**
- 4-way tie: Fighter (roll 4), Thief (roll 4), Goblin Archer 1 (roll 4)
- Compare Agility stats:
  - Fighter: Agility 2
  - Thief: Agility 3 → Highest, acts first among the three
  - Goblin Archer 1: Agility unknown (assume standard 2)
  - So order of tied characters: Thief (Agi 3) → Fighter (Agi 2) → Goblin Archer 1 (Agi 2)
  - Fighter vs. Goblin Archer 1 both have Agi 2 → Both reroll d6
    - Fighter reroll: 3
    - Goblin Archer 1 reroll: 1
    - Fighter acts before Goblin Archer 1

**Final Initiative Order:**
| Rank | Combatant | Original Roll | Tiebreaker |
|---|---|---|---|
| 1st | Orc | 5 | — |
| 2nd | Thief | 4 | Agility 3 |
| 3rd | Fighter | 4 | Agility 2 |
| 4th | Goblin Archer 1 | 4 | Reroll: 1 |
| 5th | Ranger | 3 | — |
| 6th | Goblin Archer 2 | 2 | — |

**However: Party is SURPRISED**
- Party members (Fighter, Thief, Ranger) failed surprise check
- Orc and Goblin Archers act first in Round 1
- After Round 1, normal order from above continues

**Round 1 with Surprise:**
- Orc acts (attacks)
- Goblin Archer 1 acts (attacks)
- Goblin Archer 2 acts (attacks)
- Thief acts (now combat has started, they act in normal order)
- Fighter acts
- Ranger acts

**Round 2 onwards:**
- Back to standard order: Orc → Thief → Fighter → Goblin Archer 1 → Ranger → Goblin Archer 2

---

## PART 6: PM REASONING EXAMPLES

### PM Reasoning Example 1: "The ambush surprised everyone, but one player rolled a natural 6 before I could declare surprise. Do they still get initiative bonus?"

**Situation:**
- Thieves hiding, party enters
- PM hasn't called for surprise check yet
- Fighter rolls d6 out of habit, gets 6
- Fighter wants to use the 6 for initiative advantage

**PM Reasoning:**
- Initiative roll hasn't been called yet → That 6 doesn't count
- Have players roll initiative normally for combat
- However: Honor the spirit of the moment
  - If the Fighter rolled voluntarily and it shows great awareness, consider:
    - Giving them +1 to their actual initiative roll (instead of reusing the 6)
    - Or letting them use their surprise-check roll to partially negate surprise
  - This is discretionary PM judgment

**Ruling:**
- Call for official initiative rolls
- Fighter (and party) roll standard
- If Fighter was attentive enough to roll early, they might notice ambush before it starts (Wisdom check to avoid surprise)

---

### PM Reasoning Example 2: "Two combatants tied on Agility stat, and they rerolled but tied again. Now what?"

**Situation:**
- Fighter (Agility 2) vs. Goblin Archer (Agility 2) both rolled 4 initially
- Both reroll d6: both roll 3 again

**PM Reasoning:**
- Tiebreakers should resolve quickly; re-rerolling can stall
- At this point, pick one:
  - **Method A:** PM picks (narrative reason: "You're equally fast, so the Goblin reacts first because they expected you")
  - **Method B:** Each one rolls one more time, highest wins (if they tie, keep that order)
  - **Method C:** Simultaneous action (extremely rare; only use if truly identical)

**Ruling (Recommended):**
- One more reroll, take the result
- If they tie a third time, PM decides narratively (no further delays)

---

### PM Reasoning Example 3: "Combat started, and now the party wants to use an item that modifies initiative. Can they apply it retroactively?"

**Situation:**
- Initiative was called, Fighter rolled 3
- Fighter says "Wait, I have Ring of Speed, can I reroll?"
- Initiative hasn't been announced yet

**PM Reasoning:**
- Initiative roll is immediate; can't modify after the fact
- However: If initiative hasn't been announced/locked:
  - Allow the item use (rules as written)
  - "Okay, use your Ring of Speed to reroll"
  - Fighter rerolls
  - Then all other rolls are locked

**Ruling:**
- Allow if called immediately after rolling
- Disallow if round has already started

---

## PART 7: MINI FAQ

**Q: Do I roll initiative every round?**  
A: No. Initiative order is determined at combat start and remains the same for all subsequent rounds.

**Q: What if someone joins combat mid-encounter?**  
A: New combatant rolls initiative using the current state (may act late in the current round or next round depending on roll).

**Q: Can I use Heroic Reroll on initiative?**  
A: Yes. Initiative is a task roll using d6, so Heroic Reroll can be used if desired.

**Q: Does the Ranger's "Alert" ability give initiative advantage?**  
A: Yes. Alert provides initiative advantage (reroll and take better), applied to their d6 roll.

**Q: What if a tie can't be broken (both characters have identical Agility and reroll lands the same)?**  
A: PM decides narratively or uses a tiebreaker system (coin flip, PM picks, etc.). Keep it quick.

---

## PART 8: DECISION MATRIX

### When to Roll Initiative

| Situation | Roll Initiative? | Reason |
|-----------|---|---|
| First attack declared | **YES** | Hostile action confirmed |
| First spell cast (combat context) | **YES** | Hostile action confirmed |
| Surprise check completed | **YES** | Now move to combat turn order |
| NPCs still negotiating | **NO** | Combat not confirmed |
| Party drawing weapons, but talking | **MAYBE** | PM discretion on imminence |
| Chase scene starts | **YES** | Action sequence begins |

### How to Resolve Ties

| Situation | Tiebreaker | Fallback |
|-----------|---|---|
| Two combatants tied rolls | Compare Agility stats | Reroll d6 |
| Stats also tied | Reroll d6 | PM decides narratively |
| Tied rerolls | Reroll again | PM decides on next tie |

---

## PART 9: CROSS-LINKS & REFERENCES

### Upward Cross-Links (To Macro & Section Level)
- **SECTION_2_CombatSystem_DeepDive.md** (parent section-level doc)
- **PFRPG-CombatPrimer.md** (macro-level combat walkthrough)
- **SECTION_1_CoreMechanics_DeepDive.md** (foundational d6 and Agility ability)

### Sideways Cross-Links (To Related Atomics)
- **SECTION_2.2_SurpriseMechanics.md** (how surprise interacts with initiative)
- **SECTION_2.3_CombatStructure.md** (how initiative determines round order)
- **SECTION_2.4_Movement.md** (movement happens each turn in initiative order)

### Downward Cross-Links (To Items/Classes/etc.)
- **SECTION_3_CharacterClasses.md** (Ranger Alert ability → initiative)
- **SECTION_6_MagicalItems_DeepDive.md** (Ring of Speed → initiative advantage)

---

## PART 10: SCENARIO PACK (Optional Advanced)

### Initiative in a 6v6 Combat

**Setup:** Full party (6 PCs) vs. Dungeon encounter (6 enemies)

**Rolls:**
- PC Fighter: 5
- PC Thief: 3
- PC Ranger: 4
- PC Wizard: 2
- PC Cleric: 6
- PC Bard: 1
- Enemy Orc Captain: 5
- Enemy Orc 1: 3
- Enemy Orc 2: 2
- Enemy Archer 1: 4
- Enemy Archer 2: 6
- Enemy Mage: 1

**Order (with ties):**
1. PC Cleric (6)
2. Enemy Archer 2 (6) ← **Tied with Cleric, both reroll or use Agility stat**
3. PC Fighter (5)
4. Enemy Orc Captain (5) ← **Tied, tiebreak**
5. PC Ranger (4)
6. Enemy Archer 1 (4) ← **Tied, tiebreak**
7. PC Thief (3)
8. Enemy Orc 1 (3) ← **Tied, tiebreak**
9. PC Wizard (2)
10. Enemy Orc 2 (2) ← **Tied, tiebreak**
11. PC Bard (1)
12. Enemy Mage (1) ← **Tied, tiebreak**

**Resolution:** Tiebreaker comparisons determine exact order within each tied pair

---

**End of SECTION 2.1: Initiative System**

*Next: SECTION_2.2_SurpriseMechanics.md*