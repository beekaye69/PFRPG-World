# PFRPG SECTION 1.1: d6 SYSTEM FOUNDATION
## Atomic Sub-Section Deep Dive

---

## DOCUMENT METADATA

**Title:** PFRPG Section 1.1: d6 System Foundation (Atomic Sub-Section)

**Version:** 1.0

**Document Type:** Atomic Rule Reference + Examples + Reasoning

**Scope:** Die mechanics, roll outcomes, probability, "no bonuses" principle, core philosophy

**Related Documents:**
- PFRPG-CoreMechanics-Primer.md (Macro: d6 system introduction)
- SECTION_1_CoreMechanics_DeepDive.md (Section: complete core mechanics)
- SECTION_1.2_TaskResolution.md (Related: uses d6)
- PFRPG-QuickReference.md (Quick lookup)

**Dependencies:** None (foundational)

**Enables:** Sections 1.2-1.7, all other sections

**Format:** Rule + Mechanics + Examples + PM Reasoning + FAQ + Decision Tree

**Last Updated:** December 16, 2025

---

## PART 1: RULE SUMMARY

**The d6 system is the foundational mechanical heart of PFRPG. Every roll uses a six-sided die. The core principle is simple:**

```
Roll d6 → Compare to Difficulty → Success or Failure
```

**Key Philosophy:** PFRPG has **no bonuses**. There are no "+2 to attack" modifiers. No armor class calculations. Instead, PFRPG uses **difficulty adjustment** (easier/harder tasks) and **rerolls** (extra chances) as its primary mechanical knobs.

**Outcome Range:** Any d6 roll produces a result from 1 to 6. These outcomes are compared to difficulty thresholds to determine success.

---

## PART 2: DETAILED MECHANICS

### The d6 Die

**What it is:**
- Standard six-sided die
- Outcomes: 1, 2, 3, 4, 5, 6
- Each outcome equally likely (16.7% per outcome)
- Used for all uncertainty resolution

**How it's rolled:**
- Physical die roll (preferred)
- Virtual die roll (if online/digital)
- One die (d6), sometimes multiple dice (rare)
- Result is immediate and binding

### Roll Outcomes & Meaning

**Outcome 1:**
- Meaning: Lowest possible roll
- Effect: Almost always fails
- Narrative: Bad luck, catastrophe, failure
- Probability: 17% chance per roll

**Outcome 2-5:**
- Meaning: Mid-range rolls
- Effect: Depends on difficulty threshold
- Narrative: Variable (success or failure based on context)
- Probability: 33% (each individual outcome)

**Outcome 6:**
- Meaning: Highest possible roll
- Effect: Almost always succeeds; triggers special mechanics
- Narrative: Great luck, success, heroic moment
- Probability: 17% chance per roll
- **Special:** Natural 6 triggers explosion/reroll check (see Section 1.6)

### The "No Bonuses" Philosophy

**What it means:**
- Characters never get "+2 to rolls" or "+1 modifier"
- Rolls are always d6 (or occasionally d6-1, d6-2, d6-3)
- No stacking bonuses (no d6+2+1)

**Why this design:**
- Simplicity (everyone rolls same die)
- Predictability (outcomes always 1-6)
- Fairness (no obscure modifier math)
- Rerollability (harder/easier adjusted via difficulty, not modifiers)

**How difficulty scales instead:**
- **Easier task:** Lower difficulty threshold (3+ instead of 4+)
- **Harder task:** Higher difficulty threshold (5+ instead of 4+)
- **Extreme difficulty:** Reduced die (d6-1 instead of d6)
- **Advantage:** Reroll allowed (Heroic Reroll, ability reroll)

### Die Modifications (Rare)

**Standard:** d6 (roll 1-6, any outcome equally likely)

**Reduced Difficulty:** d6-1 (roll 1-5, minimum 1)
- Example: Poor conditions, injury, disadvantage
- Probability: Each outcome 20% (still equally distributed)

**Reduced Difficulty:** d6-2 (roll 1-4, minimum 1)
- Example: Severe disadvantage, extreme difficulty
- Probability: Each outcome 25%

**Reduced Difficulty:** d6-3 (roll 1-3, minimum 1)
- Example: Nearly impossible without magic/help
- Probability: Each outcome 33%

**Note:** Never go below 1 (minimum result always 1)

---

## PART 3: PROBABILITY FOUNDATION

### Basic Probability (d6)

| Outcome | Probability | Meaning |
|---|---|---|
| 1 | 17% (1/6) | Lowest |
| 2 | 17% | Low |
| 3 | 17% | Low-Mid |
| 4 | 17% | Mid |
| 5 | 17% | Mid-High |
| 6 | 17% | Highest (triggers special) |
| Average | 3.5 | Expected value |

### Success Percentage by Difficulty (d6)

| Difficulty | Threshold | Success % | Outcomes |
|---|---|---|---|
| Laughable | 2+ | 83% | 2,3,4,5,6 (5 outcomes) |
| Simple | 3+ | 67% | 3,4,5,6 (4 outcomes) |
| Average | 4+ | 50% | 4,5,6 (3 outcomes) |
| Tough | 5+ | 33% | 5,6 (2 outcomes) |
| Very Difficult | 6 | 17% | 6 (1 outcome) |

**Key insight:** Difficulty thresholds are the PRIMARY mechanical lever in PFRPG, not character bonuses.

---

## PART 4: GAMEPLAY EXAMPLES

### Gameplay Example 1: Simple Success (Happy Path)

**Scenario:** Fighter attempting to climb rope in safe conditions

**Setup:**
- Task: Climb 20 feet of rope
- Ability: Strength
- Difficulty: Average (4+)
- Fighter has no special modifiers

**The Roll:**
- Fighter rolls d6
- Result: 5
- Comparison: 5 ≥ 4? YES
- Outcome: **SUCCESS!**

**Narration:** "You grab the rope firmly and begin climbing. It's a steady climb, and within a minute you reach the top safely."

**Key Points:**
- No bonuses needed
- Die roll simple and clean
- Difficulty was the balance point (not character strength)

---

### Gameplay Example 2: Complex Roll with Reduced Die (Challenging)

**Scenario:** Wizard attempting to climb same rope, but rope is icy and Wizard is exhausted

**Setup:**
- Task: Climb rope (icy conditions + exhaustion)
- Ability: Agility (balance > pure strength)
- Base difficulty: Average (4+)
- Condition modifier: Icy rope makes it harder
- **PM adjusts:** Difficulty raised from Average (4+) to Tough (5+)
- **PM decision:** Wizard's exhaustion reduces die effectiveness
- **Applied mechanic:** d6-1 instead of d6 (reduced die due to exhaustion)

**The Roll:**
- Wizard rolls d6-1
- Result: 3 (rolls 1-5 range, gets 3)
- Comparison: 3 ≥ 5? NO
- Outcome: **FAILURE**

**Narration:** "You grab the rope, but your exhausted arms slip on the icy surface. After struggling for a few seconds, you lose your grip and fall. You take 2 damage from the 10-foot drop."

**Key Points:**
- Difficulty raised due to conditions (not character weakness)
- Die reduced due to circumstance (exhaustion)
- Combined effect makes task very hard
- No complex modifier math (just reduced die)

---

## PART 5: PM REASONING EXAMPLES

### PM Reasoning Example 1: "Should I use difficulty or die reduction?"

**Situation:**
- Fighter attempting difficult task (scaling castle wall)
- PM unsure: Raise difficulty to Tough (5+) or use d6-1?

**PM Reasoning:**
- **Difficulty change:** For tasks that are inherently harder
- **Die reduction:** For circumstances that hamper the character

**Distinction:**
- Scaling castle wall (task difficulty): Raise difficulty to Tough (5+)
- Scaling while wounded (character limitation): Use d6-1

**Ruling:**
- Task is scaling wall → **Raise difficulty to Tough (5+)**
- If Fighter was also wounded → **Use d6-1 and Tough (5+) together**

---

### PM Reasoning Example 2: "Can I stack multiple die reductions?"

**Situation:**
- Wizard is exhausted (normally d6-1)
- Wizard is also poisoned (another d6-1 penalty?)
- PM unsure if both apply

**PM Reasoning:**
- Die reductions stack, but minimum result is 1
- Example:
  - Exhausted (d6-1) alone: roll 1-5
  - Exhausted + Poisoned (d6-2) combined: roll 1-4
  - Exhausted + Poisoned + Blinded (d6-3) combined: roll 1-3
  - Can't go below minimum 1

**Ruling:**
- **Stack the penalties:** d6-1 (exhaustion) + d6-1 (poison) = d6-2
- Result range: 1-4 (minimum result always 1)
- This represents extreme disadvantage

---

### PM Reasoning Example 3: "Can a player argue the die type should change?"

**Situation:**
- Fighter rolling to push open stuck door
- Rolls d6 but argues should be d6+1 due to "Muscle" ability strength

**PM Reasoning:**
- PFRPG has no bonus modifiers to die rolls
- Muscle ability provides reroll, NOT die bonus
- Player can argue for difficulty reduction instead
- Creative approach might reduce difficulty tier

**Ruling:**
- **No die bonus:** Maintain d6
- **Offer alternative:** If Player has creative solution (using leverage, oil), reduce difficulty from Tough (5+) to Average (4+)
- **Stay consistent:** PFRPG design intentionally avoids die bonuses

---

## PART 6: MINI FAQ

**Q: What if I don't have a physical die?**  
A: Use virtual die roll, random number generator 1-6, or digital platform. Result is the same.

**Q: Can I roll multiple d6 and take best?**  
A: Only if you have a specific reroll source (Heroic Reroll, ability reroll). Standard roll is 1d6 only.

**Q: Why no bonuses like "+2"?**  
A: PFRPG keeps rolls simple (all 1-6), adjusts via difficulty instead. This avoids modifier math and makes the system cleaner.

**Q: If I roll a 6, what happens?**  
A: The 6 often succeeds, but more importantly: check for Natural 6 mechanics (explosion + reroll earning). See Section 1.7.

**Q: Is rolling a 1 always bad?**  
A: On Laughable difficulty (2+), rolling a 1 fails. But the roll itself isn't inherently cursed—it just fails that specific threshold.

---

## PART 7: DECISION MATRIX

### When to Use Each Die Type

| Die Type | When to Use | Effect | Example |
|---|---|---|---|
| d6 | Default, normal task | Roll 1-6 | Climbing rope in good conditions |
| d6-1 | Disadvantage present | Roll 1-5 (min 1) | Climbing while exhausted |
| d6-2 | Severe disadvantage | Roll 1-4 (min 1) | Climbing while wounded + exhausted |
| d6-3 | Extreme disadvantage | Roll 1-3 (min 1) | Nearly impossible without help |

### When to Adjust Die vs. Difficulty

| Situation | Adjust Die? | Adjust Difficulty? | Both? |
|---|---|---|---|
| Dangerous conditions | NO | YES | Possibly |
| Character injury/fatigue | YES | NO | Possibly |
| Task inherent difficulty | NO | YES | Common |
| Character + conditions both bad | YES | YES | YES |

---

## PART 8: CROSS-LINKS & REFERENCES

### Upward Cross-Links (To Macro & Section Level)
- **SECTION_1_CoreMechanics_DeepDive.md** (parent section-level doc)
- **PFRPG-CoreMechanics-Primer.md** (macro-level introduction)
- **PFRPG-QuickReference.md** (quick one-line lookup)

### Sideways Cross-Links (To Related Atomics)
- **SECTION_1.2_TaskResolution.md** (uses d6 system)
- **SECTION_1.3_DifficultyTiers.md** (thresholds for d6)
- **SECTION_1.5_HeroicReroll.md** (rerolls alternative to bonuses)
- **SECTION_1.6_ExplodingDie.md** (natural 6 triggers)

### Downward Cross-Links (To Items/Classes/etc.)
- **SECTION_2_Combat.md** (uses d6 for all combat rolls)
- **SECTION_3_Classes.md** (no bonuses, uses CS not +X modifiers)
- **SECTION_5_Magic.md** (spell rolls use d6)

---

## PART 9: SCENARIO PACK

### Scenario 1: Comparing d6 vs. d6-1 vs. d6-2 in Same Task

**Setup:** Three Wizards attempting to cast a spell (same Average 4+ difficulty)

**Wizard A (d6, normal):**
- Rolls 4
- Success rate baseline: 50%

**Wizard B (d6-1, exhausted):**
- Rolls 3 (from 1-5 range)
- Success rate reduced: 40% (only 2,3,4,5 succeed; can't roll 6)

**Wizard C (d6-2, exhausted + poisoned):**
- Rolls 2 (from 1-4 range)
- Success rate reduced: 25% (only 3,4 succeed; can't roll 5 or 6)

**Comparison:** Same threshold (4+), but different die effectiveness shows how disadvantage stacks without complex math

---

## PART 10: INTEGRATION WITH COMPLETE SYSTEM

**The d6 system is foundational to EVERYTHING in PFRPG:**

- **Task Resolution (1.2)** uses d6 compared to difficulty
- **Difficulty Tiers (1.3)** are d6 thresholds (2+, 3+, 4+, 5+, 6)
- **Core Abilities (1.4)** reroll d6 (not bonus d6)
- **Heroic Reroll (1.5)** rerolls d6 (not adds to d6)
- **Exploding Die (1.6)** happens when d6 rolls 6
- **Natural 6 (1.7)** checks happen on any d6 roll of 6
- **Combat (Section 2)** is d6 rolls throughout
- **Magic (Section 5)** is d6 rolls for spells
- **All other systems** use d6 as foundation

---

**End of SECTION 1.1: d6 System Foundation**

*Next: SECTION_1.2_TaskResolution.md*