# PFRPG QUERY EXAMPLES & EXPECTED RESPONSES
## Training Dataset for LLM Query Pattern Recognition

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Query Examples & Expected Responses

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Training Dataset & Reference Guide

**Purpose:** Provides 60+ example user queries with expected bot responses. Trains LLM on query patterns, response quality standards, and appropriate resource citation. Helps LLM understand what queries mean and how to respond appropriately.

**Related Documents:**
- All PFRPG macro-level documents (for citation examples)
- PFRPG-TableOfContents.md (for reference patterns)

**Format:** Q&A Training Pairs

**Last Updated:** December 16, 2025

**Note:** This document is training data for the LLM. Responses show expected quality, depth, and citation style.

---

## HOW TO USE THIS DOCUMENT

**For the LLM:** Study these examples to understand query patterns and expected response quality.

**For Users:** These examples show what kinds of questions the DM-bot can answer and what quality to expect.

---

## SECTION 1: CHARACTER CREATION QUERIES

### Query 1.1: Basic Class Comparison
**User:** "What class is best for beginners?"

**Expected Response:**
Fighter is the best class for beginners. It has the highest HP (10) and Combat Skill (d6), making it forgiving of mistakes. The Fighter's abilities (Muscle for strength rerolls, Challenge to force enemy focus, and Combat Master for explosive damage) are straightforward to understand and use effectively.

Additionally, Fighters can wear any equipment, giving new players flexibility in gear choices without overthinking synergies.

[PFRPG-ClassComparison-Matrix.md | PFRPG-CoreMechanics-Primer.md]

---

### Query 1.2: Specific Build Request
**User:** "I want to deal tons of damage. What class/race combo would you recommend?"

**Expected Response:**
The optimal damage-dealing combination is **Human Fighter with Focus x2 weapons**.

Here's why:
- Fighter: Highest base Combat Skill (d6), Combat Master ability enables explosion damage
- Human: +1 Heroic Reroll per session, allowing aggressive spending
- Focus x2 Weapons: Guaranteed 6 damage per weapon, Combat Master adds additional d6 roll (can explode)

Practical damage output: 12-18 damage per round when both Focus uses are available. With a natural 6 explosion, could spike to 15-25+ damage on lucky rounds.

Alternative strong builds:
- Thief with Backstab (7+ damage opener on unaware targets)
- Ranger with Bow of Ages (instant kill on high damage rolls)

[PFRPG-ClassComparison-Matrix.md | PFRPG-RaceComparison-Matrix.md | PFRPG-ItemComparison-Matrix.md]

---

### Query 1.3: Party Composition
**User:** "I have 4 players. What party composition do you recommend?"

**Expected Response:**
For 4 players, the **Balanced Party** composition is recommended:

**Suggested Lineup:**
1. **Cleric** - Healing support, undead specialist
2. **Fighter** - Tank/damage dealer
3. **Thief** - DPS specialist, scout
4. **Wizard** - Versatile magic, problem-solving

**Why this works:**
- Healing: Cleric covers group sustain
- Damage: Fighter and Thief provide consistent offense
- Versatility: Wizard handles unexpected problems
- Scouting: Thief can handle exploration challenges
- Coverage: All major roles covered without redundancy

**Alternative compositions:**
- Monster Hunters (Cleric/Fighter/Ranger/Bard) - Best vs. diverse threats
- Elite Damage Squad (Fighter/Thief/Ranger/Wizard) - Highest DPS, no healer (risky)
- Support Heavy (Cleric/Bard/Ranger/Wizard) - Emphasis on buffs over raw damage

[PFRPG-ClassComparison-Matrix.md | PFRPG-CharacterCreation-Guide.md]

---

### Query 1.4: Race Selection
**User:** "What's the best race for a Thief?"

**Expected Response:**
The best race for a Thief depends on campaign style, but **Halfling** offers the most thematic synergy.

**Why Halfling works:**
- Forest Hiding (laughable task in forest, average elsewhere) enables positioning
- Large Monster Defense (reroll vs. large) helps solo threat
- Hidden State (undetectable when hidden) enables surprise positioning for Backstab
- Overall: Maximizes Thief's evasion playstyle

**Other strong options:**
- Human: +1 Heroic Reroll/session gives resource cushion for risky plays
- Elf: Surprise Resistance prevents being surprised (good for positioning)
- Dwarf: Works but less optimal (Thief doesn't synergize with underground expertise)

**Synergy Rating:**
Halfling Thief: S-Tier | Human Thief: A-Tier | Elf Thief: A-Tier | Dwarf Thief: B-Tier

[PFRPG-RaceComparison-Matrix.md | PFRPG-ClassComparison-Matrix.md]

---

## SECTION 2: MECHANICS & RULES QUERIES

### Query 2.1: Ability Interaction
**User:** "Can I use Combat Master and Focus together? How does that work?"

**Expected Response:**
Yes, Combat Master and Focus work together synergistically and create one of the Fighter's strongest damage combinations.

**How it works:**
1. You attack with a Focus weapon (committed before rolling)
2. Focus guarantees 6 damage (automatic, no roll needed)
3. Combat Master applies: Roll additional d6 (may explode on natural 6)
4. If additional d6 = 3: Total damage = 6 + 3 = 9 damage
5. If additional d6 = 6: Explodes! Roll again → if 2: Total = 6 + 6 + 2 = 14 damage

**Maximum theoretical damage:** 18+ if chain explosions occur (6 + 6 + 6+...)

**Strategic note:** This is intentionally the Fighter's primary damage engine. It's reliable (always at least 6 + something) and has potential for high damage on lucky rolls.

[PFRPG-MechanicalInteractions.md | PFRPG-ClassComparison-Matrix.md]

---

### Query 2.2: Reroll Stacking
**User:** "Can I use Heroic Reroll on a Heroic Reroll?"

**Expected Response:**
No. You cannot use a Heroic Reroll to reroll a failed Heroic Reroll attempt.

**Why:** Heroic Rerolls are a limited resource (1 per session, or more if you earn them through natural 6 checks). Once you expend your Heroic Reroll, it's gone for the session. You can't retroactively reroll it.

**However:** You CAN earn Heroic Rerolls back during the session. If you roll a natural 6 → check → roll 6 again, you earn 1 Heroic Reroll back, replenishing your pool.

**Example:** You roll natural 6 on a task. You roll for the check and get a 4 (no reward). Later, in combat, you roll natural 6 on your attack. Check again, roll 6 again. You earn a Heroic Reroll! Now you have 1 Heroic Reroll available again.

[PFRPG-MechanicalInteractions.md | PFRPG-CoreMechanics-Primer.md]

---

### Query 2.3: Spell Mechanics
**User:** "Can I cast two spells in one combat round?"

**Expected Response:**
Yes, but with limitations.

**How it works:**
- Wizard has 2 Combat Magic spells per encounter (total allocation)
- Each spell takes 1 combat action to cast
- You normally have 1 combat action per round
- If you have 2 combat actions (rare ability), you can cast both spells in same round

**Normal case:** You cast 1 spell per round (using your action), leaving 2nd spell for future rounds.

**2-Action case:** Some items or abilities grant extra actions. Then you could cast both spells same round, but both actions gone (can't move or attack that round).

**Note:** This depletes your 2 per-encounter spells, leaving 0 available for rest of encounter.

[PFRPG-SpellComparison-Matrix.md | PFRPG-CoreMechanics-Primer.md]

---

### Query 2.4: Defense Mechanics
**User:** "I'm in Full Defense. Can I also use Deflect?"

**Expected Response:**
No, not in the way you might think. They conflict with each other.

**Here's why:**
- Full Defense: You reroll all defense rolls this round (take best)
- Deflect: You replace your defense roll with automatic 6 block

**If you commit to Deflect:** You skip the normal defense roll entirely, so Full Defense rerolls don't apply.

**If you use Full Defense:** You're expecting to roll defense, so committing to Deflect defeats the purpose.

**Practical:** Choose one or the other per defense. If you expect a hard-hitting attack, Deflect (guaranteed 6). If you're not sure, Full Defense with reroll might get you more.

**Optimal tactical:** Save Deflect for guaranteed big hits, use Full Defense when uncertain.

[PFRPG-MechanicalInteractions.md]

---

## SECTION 3: COMBAT QUERIES

### Query 3.1: Combat Sequence
**User:** "How does a combat round work? Step by step?"

**Expected Response:**
Here's the complete combat sequence:

**Step 1: Initiative**
- Everyone rolls Agility task (tied to Initiative)
- Highest roll acts first
- Resolve ties by highest Agility stat

**Step 2: Acting Order**
- Characters/enemies take turns in order
- Each gets 1 action (attack, defend, special ability)
- Resolve actions immediately

**Step 3: Attack Action Example**
- Attacker rolls Combat Skill (CS d6, d6-1, d6-2, etc. per class)
- Defender rolls defense CS
- Attacker roll minus Defender blocked = damage dealt
- Repeat if multiple enemies

**Step 4: Round Ends**
- All characters acted once
- Next round starts (new initiative typically not rolled each round)

**Example round:** Fighter acts (attacks), Goblin acts (attacks back), Thief acts (attacks), Goblin dies. Round 1 complete.

**Full combat walkthrough:** See PFRPG-Combat-Primer.md for detailed example

[PFRPG-CoreMechanics-Primer.md | PFRPG-Combat-Primer.md]

---

### Query 3.2: Damage Calculation
**User:** "How do I calculate damage from an attack?"

**Expected Response:**
Damage calculation is simple: Attacker's roll minus Defender's block = damage dealt.

**Example:**
- Fighter attacks with CS d6, rolls a 5
- Goblin defends with CS d6-3, rolls a 2
- Damage: 5 - 2 = 3 hp to Goblin

**With magical items:**
- Fighter uses Focus weapon (guaranteed 6) + Combat Master (rolls d6 = 4)
- Total attack: 6 + 4 = 10
- Goblin defends with CS d6-3, rolls 1
- Damage: 10 - 1 = 9 hp to Goblin

**Special case - Focus weapons:**
- Focus x1: 6 damage guaranteed (no roll needed)
- Used once per encounter
- Defender still gets defense roll

**Key principle:** There are no bonuses in PFRPG. Just roll vs. difficulty, or compare two rolls, take difference.

[PFRPG-CoreMechanics-Primer.md | PFRPG-MechanicalInteractions.md]

---

### Query 3.3: Surprise & Initiative
**User:** "How does surprise work? Do I get a free attack?"

**Expected Response:**
Surprise in PFRPG works on awareness, not free attacks.

**Surprise mechanics:**
- If one side is unaware of combat starting, they're "surprised"
- Surprised characters act at disadvantage (can have disadvantaged initiative)
- But they can still act normally once combat starts (no free attacks for attackers)

**Thief's Backstab vs. Surprise:**
- Backstab requires target unaware
- Backstab is special ability (grants 2 CS attacks combined for damage)
- NOT a free attack, but high-damage opener

**Surprise in practice:**
- Ambush: One group surprised, other acts first (initiative advantage)
- Free attacks? Rare. Usually just initiative advantage

**Elf racial trait:** Only surprised on roll of 1 (vs. normal 1-3), giving Elf advantage in ambush scenarios

[PFRPG-CoreMechanics-Primer.md | PFRPG-ClassComparison-Matrix.md]

---

## SECTION 4: MAGIC QUERIES

### Query 4.1: Spell Selection
**User:** "I'm playing Wizard. Which two spells should I pick for this encounter?"

**Expected Response:**
It depends on the encounter type. Here's guidance:

**Against many weak enemies:** Rain of Fire
- Single spell roll hits up to 4 enemies
- Efficient for clearing groups

**Against tough single enemy:** Dark Bolt + Confusion (or Arcane Armor)
- Dark Bolt for consistent ranged damage
- Confusion to control the threat

**Against low-defense party:** Arcane Armor
- Boosts entire party defense to universal d6
- Enables entire party to defend better

**Against unknown encounter:** Dark Bolt + Aid from Beyond
- Dark Bolt is your damage fallback
- Aid amplifies party resources

**General principle:** Pick 1 damage spell, 1 utility/support spell. Adapt to encounter.

**Spell rankings:**
- Best Damage: Dark Bolt or Rain of Fire (context-dependent)
- Best Support: Arcane Armor
- Best Control: Confusion
- Best Flexibility: Aid from Beyond (resource amplification)

[PFRPG-SpellComparison-Matrix.md]

---

### Query 4.2: Bardic Music
**User:** "Which Bard song should I sing?"

**Expected Response:**
It depends on your party needs and encounter type.

**Hymn of the Mighty (+1 damage/attack):**
- Best for: Damage-heavy party, extended encounters
- Use when: You have multiple high-damage dealers who'll benefit

**Lay of Deflection (+1 defense roll):**
- Best for: Low-defense party or defensive encounter
- Use when: Enemies are high-damage threats

**Ballad of Legends (Reroll on 3+):**
- Best for: Reroll-focused party or resource regeneration
- Use when: You want to farm Heroic Rerolls

**Song of Mending (1 hp/round healing):**
- Best for: Long encounters, attrition battles
- Use when: Party is slowly taking damage

**Chant of Renewal (Full heal, one-time):**
- Best for: Emergency recovery
- Use when: Party is desperate, near-death

**General recommendation:** Start with Hymn of the Mighty (most parties benefit from +1 damage). Swap to Lay of Deflection if defensive pressure is high.

[PFRPG-SpellComparison-Matrix.md]

---

## SECTION 5: LOOT & TREASURE QUERIES

### Query 5.1: Encounter Loot
**User:** "I just beat a boss with 4 players. What loot should I give?"

**Expected Response:**
For a boss encounter with 4 players:

**Gold:** d6 x100 (roll once for entire party), take best of 2 rolls
- Typical roll: 400-600 gp total (split or distributed per PM preference)

**Items:** Each player rolls d6 individually:
- 1-2: Nothing additional
- 3-4: Arcane Gem
- 5: Focus x1 weapon OR Deflect x1 armor (player choice)
- 6: Same as 5 OR Runic Forge (upgrade existing item)

**Example loot distribution:**
- Player 1 rolls 2: Nothing
- Player 2 rolls 4: Arcane Gem
- Player 3 rolls 5: Focus x1 sword chosen
- Player 4 rolls 6: Runic Forge (upgrade their existing dagger x1 → x2)

**Total encounter gives:** 500 gp + 1 Arcane Gem + 1 Focus weapon + 1 Runic Forge = Strong loot

[PFRPG-ItemComparison-Matrix.md]

---

### Query 5.2: Item Recommendations
**User:** "What item should I buy with my gold?"

**Expected Response:**
Recommendations depend on your class and playstyle:

**If you're a Fighter:** Focus x1 weapon (750 gp)
- Synergizes with Combat Master ability
- Reliable 6 damage + explosion potential

**If you're a Wizard:** Celestial Branch Staff (750 gp)
- Flexible Focus/Deflect slots
- Improves survivability

**If you're a Thief:** Edge of Night Dagger (750 gp)
- Stealth enhancement for positioning
- Supports Backstab playstyle

**If you're low on gold (<500 gp):** Wait for more
- Don't spend gold without purpose
- Collect Arcane Gems, then craft when you have 3

**General principle:** Class-specific synergies > generic items. Buy items that enhance your class abilities.

[PFRPG-ItemComparison-Matrix.md | PFRPG-ClassComparison-Matrix.md]

---

## SECTION 6: SCENARIO QUERIES

### Query 6.1: Tactical Situation
**User:** "I'm surrounded by 4 enemies. What should I do?"

**Expected Response:**
Your options depend on your class:

**Fighter:** Use Challenge ability to force enemies to attack you instead of allies. Use Full Defense next round to minimize damage while allies deal damage.

**Thief:** Position for Flank (get behind enemy while ally engages them). Deal double attack rolls for better damage.

**Wizard:** Cast Confusion on most dangerous enemy, then Dark Bolt another. Use distance to stay safe.

**Cleric:** Position defensively and use Holy Light to heal allies while they attack. Use Righteous Insight if making defensive checks.

**Bard:** Start Hymn of the Mighty to boost party damage, then position defensively.

**Ranger:** Stay at distance, use ranged attacks. Use Alert ability for initiative advantage next round.

**General principle:** Use your class abilities to control the fight (Flank, Challenge, Confusion). Avoid direct 1v4 fights when possible.

[PFRPG-ClassComparison-Matrix.md | PFRPG-Combat-Primer.md]

---

### Query 6.2: Resource Management
**User:** "Should I use my Heroic Reroll now or save it?"

**Expected Response:**
It depends on:

**Use it now if:**
- This roll determines encounter success (desperate situation)
- You're highly confident a reroll will change outcome
- It's late in session (more earned chances coming)

**Save it if:**
- You're doing okay with current resources
- Multiple important rolls coming up
- Early in session (might earn more through natural 6 checks)

**Strategic principle:** Heroic Rerolls are high-value resources. Use them on rolls that matter (boss fight's decisive turn, critical save, crucial damage). Don't waste on trivial checks.

**Earning back:** You can earn Heroic Rerolls by rolling natural 6 twice (6 → check → 6 again). So using your initial reroll opens possibility of earning it back.

[PFRPG-CoreMechanics-Primer.md | PFRPG-MechanicalInteractions.md]

---

## SECTION 7: PM/DUNGEON MASTER QUERIES

### Query 7.1: Encounter Design
**User:** "I have 4 players (Fighter, Thief, Wizard, Cleric). What encounter should I run?"

**Expected Response:**
For this balanced 4-player party, here's a recommended moderate encounter:

**Monster Selection:**
- 1 Boss (CS d6, 12 hp, Large ability)
- 3 Minions (CS d6-2, 3 hp each)

**Why this works:**
- Boss threatens high-damage classes (Fighter/Thief)
- Minions can overwhelm if left unchecked
- Cleric has healing to handle boss damage
- Wizard has crowd control (Confusion) for minions

**Difficulty assessment:** Moderate challenge
- Expected party damage: 12-18/round (can clear minions quickly)
- Boss damage: 5-8/round (acceptable with Cleric healing)
- Expected duration: 2-3 rounds

**Loot if party wins:** d6x10 gp (reroll best) + 1-2 magical items possible

[PFRPG-ItemComparison-Matrix.md | PFRPG-ClassComparison-Matrix.md]

---

### Query 7.2: Difficulty Adjustment
**User:** "The party is winning too easily. How do I make encounters harder?"

**Expected Response:**
Several options to increase difficulty:

**Increase monster CS:**
- Current: CS d6-1
- Harder: CS d6
- Hardest: CS d6+1 (experimental)

**Add more monsters:**
- Double the count (but watch for action economy explosion)

**Add special abilities:**
- Large ability (harder defense)
- Regenerate (requires damage stacking)
- Paralysis (crowd control threat)

**Tactical positioning:**
- Enemies hide behind cover
- Ranged enemies stay distant
- Groups work together (don't charge individually)

**Encounter structure:**
- Multiple rounds before main boss
- Resource attrition (multiple encounters before rest)
- Time pressure (defeat boss before X happens)

**Recommended:** Start with +1 monster count or +1 CS bump. Monitor feedback. Adjust as needed.

[PFRPG-TableOfContents.md#section-8]

---

## SECTION 8: EDGE CASE QUERIES

### Query 8.1: Unusual Interaction
**User:** "If I'm hidden and I attack, do I break hidden status?"

**Expected Response:**
Yes. Attacking breaks hidden state immediately.

**Here's why:** Hidden is a state where you cannot be seen or targeted. The moment you take an action (attack, cast spell), you become visible.

**Backstab interaction:** Backstab specifically REQUIRES the target to be unaware. Once you Backstab, you've revealed yourself and target is now in active combat (aware).

**Tactical note:** Use Backstab to begin combat from hidden, not as a sustained tactic. After Backstab hits, proceed to normal combat.

**Exception:** If you have special abilities that let you remain hidden while acting (rare items), check with PM for specific rules.

[PFRPG-ClassComparison-Matrix.md | PFRPG-MechanicalInteractions.md]

---

### Query 8.2: Multi-Round Scenario
**User:** "I used Focus on Round 1. Can I use it again on Round 2?"

**Expected Response:**
No. Focus x1 = 1 use per encounter (entire dungeon visit, not per round).

**How it works:**
- Focus x1 weapon: 1 use for entire encounter
- Focus x2 weapon: 2 uses for entire encounter
- After all uses depleted, Focus weapon is normal weapon until next encounter

**Example:**
- Round 1: Use Focus (guaranteed 6 damage)
- Round 2: Can't use Focus again (depleted for this encounter)
- Round 3-5: Normal attacks (roll CS normally)
- Next encounter: Focus resets (1 use again)

**Strategic:** Use Focus wisely. Save for crucial turns (boss health critical, need reliable damage).

[PFRPG-ItemComparison-Matrix.md | PFRPG-MechanicalInteractions.md]

---

## SECTION 9: COMPARISON QUERIES

### Query 9.1: Class vs. Class
**User:** "I can't decide between Fighter and Ranger. Which is better?"

**Expected Response:**
Both are excellent, but suit different playstyles:

**Fighter strengths:**
- Highest Combat Skill (d6)
- Combat Master explosions (damage spike potential)
- Works with any race
- Works with any equipment
- Best for frontline melee tanking

**Ranger strengths:**
- High HP (10, same as Fighter)
- Ranged Mastery (flexible ranged attacks)
- Alert (initiative + surprise advantage)
- Survivalist (environmental expertise)
- Best for ranged safety + scouting

**Choose Fighter if:** You want consistent damage, frontline presence, explosions.

**Choose Ranger if:** You want ranged safety, scouting capability, initiative advantage.

**Verdict:** For pure damage: Fighter. For versatility: Ranger. Both excellent, pick based on playstyle preference.

[PFRPG-ClassComparison-Matrix.md]

---

### Query 9.2: Item vs. Item
**User:** "Which is better - Ring of Protection or Ring of Senses?"

**Expected Response:**
Depends on your playstyle:

**Ring of Protection:**
- Effect: -1 damage taken per attack
- Best for: Tank builds, frontline combatants
- Cumulative benefit in multi-hit rounds

**Ring of Senses:**
- Effect: Perception reroll + life force detection
- Best for: Scout builds, exploration focus
- Useful for avoiding traps, finding secrets

**Choose Protection if:** You're in melee combat (more hits = more damage reduction value).

**Choose Senses if:** You're exploring (perception saves party).

**Optimal:** Different characters get different rings. Fighter gets Protection, Thief gets Senses.

[PFRPG-ItemComparison-Matrix.md]

---

## SECTION 10: HOW TO USE THESE EXAMPLES

### For Users:
These examples show:
- What kinds of questions the bot can answer
- Expected response quality and depth
- Citation style and where to find more details
- Tactical thinking and strategic reasoning

### For the LLM:
Study these patterns to understand:
- Query intent (comparison vs. mechanics vs. scenario)
- Expected response structure (explain, provide options, recommend)
- Citation style (reference documents in [brackets])
- Depth level (balance detail with clarity)

### For Iteration:
If actual queries don't match expected responses, use these as baseline to improve guidance.

---

## QUICK REFERENCE: QUERY CATEGORIES

| Query Type | Example | Where to Find | Citation Style |
|------------|---------|---------------|-----------------|
| **Class Comparison** | "What's best for beginners?" | ClassComparison.md | [ClassComparison.md \| CoreMechanics.md] |
| **Build Optimization** | "Best damage build?" | ClassComparison.md + ItemComparison.md | [ClassComparison.md \| ItemComparison.md] |
| **Rules Clarification** | "Can I stack rerolls?" | MechanicalInteractions.md | [MechanicalInteractions.md] |
| **Combat Mechanics** | "How does combat work?" | Combat-Primer.md | [Combat-Primer.md \| CoreMechanics.md] |
| **Spell Selection** | "Which spell should I cast?" | SpellComparison.md | [SpellComparison.md] |
| **Loot Assignment** | "What treasure for boss?" | ItemComparison.md | [ItemComparison.md] |
| **Tactical Advice** | "I'm surrounded, what do I do?" | ClassComparison.md + Combat-Primer.md | [ClassComparison.md \| Combat-Primer.md] |
| **PM Guidance** | "Design encounter for 4 players" | TableOfContents + ClassComparison | [TableOfContents.md \| ClassComparison.md] |

---

**End of PFRPG Query Examples & Expected Responses**

*Use this as reference for understanding DM-bot capabilities and training the LLM on PFRPG query patterns.*