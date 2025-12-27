# PFRPG MECHANICAL INTERACTIONS MATRIX
## Complex Mechanic Combinations & Stacking Scenarios

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Mechanical Interactions Matrix

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Mechanical Reference & Interaction Map

**Purpose:** Explicit resolution of how mechanics stack and interact. Prevents LLM from making incorrect assumptions about ability combinations, reroll stacking, combat resolution scenarios, and edge cases.

**Related Documents:**
- PFRPG-Analysis-Updated.md (Full rulebook)
- PFRPG-CoreMechanics-Primer.md (Foundational concepts)
- PFRPG-Glossary.md (Terminology)
- PFRPG-MechanicalInteractions.md (This document)

**Scope:** All documented mechanical interactions in PFRPG v4.2

**Last Updated:** December 16, 2025

**Note:** This document resolves edge cases and clarifies ambiguities. Use when traditional rules don't clearly cover a scenario.

---

## INTERACTION CATEGORY 1: HEROIC REROLL STACKING

This is the most frequently misunderstood interaction. Clear rules provided here.

### Scenario 1.1: Single Reroll Source (Ability Reroll Only)

**Setup:** Thief making an agility task. No Heroic Reroll available.

**Mechanics:**
- Base roll: d6 vs. threshold
- Nimble ability reroll: +1 additional roll
- Total rolls: 2 (base + ability)
- Result: Take best of 2

**Outcome:** Standard ability reroll usage. No Heroic Reroll involved.

---

### Scenario 1.2: Single Reroll Source (Heroic Reroll Only)

**Setup:** Human Cleric making a wisdom task (non-wisdom-specific). Heroic Reroll available.

**Mechanics:**
- Base roll: d6 vs. threshold
- Heroic Reroll: Character chooses to expend
- Total rolls: 2 (base + Heroic)
- Result: Take best of 2

**Outcome:** Heroic Reroll spent on non-ability roll. Depletes hero resource but guarantees better chance.

---

### Scenario 1.3: Double Reroll Source (Ability + Heroic)

**Setup:** Human Thief making an agility task. Heroic Reroll available.

**Mechanics:**
- Base roll: d6 vs. threshold
- Nimble ability reroll: +1 additional roll (automatic)
- Heroic Reroll: Character chooses to expend (optional, spent in addition to ability)
- Total rolls: 3 (base + ability + Heroic)
- Result: Take best of 3

**Outcome:** Character gets 3 total rolls. This is intentionally powerful—represents hero using luck on crucial moment.

**Strategy Note:** Human racial bonus means Human Thief starts session with Heroic Reroll available—perfect for this type of scenario.

---

### Scenario 1.4: Triple Reroll Source (Race + Ability + Item)

**Setup:** Human Bard using Charming ability (charisma reroll) while wearing Amulet of Legends (2 Heroic Rerolls per session).

**Mechanics:**
- Base roll: d6 vs. threshold
- Charming ability reroll: +1 additional roll (automatic)
- Heroic Reroll from Amulet: +1 additional roll (optional)
- Human starting reroll: Can also be used in addition to Amulet rerolls (separate resource)
- Total possible rolls: 3-4 depending on which rerolls expended

**Outcome:** Multiple reroll sources are independent resources. Character can access multiple in same roll.

---

### Scenario 1.5: Reroll on Reroll (NOT ALLOWED)

**Setup:** Thief uses Nimble reroll. Gets a 6. Considers using Heroic Reroll on the first d6 roll again.

**Mechanics:**
- First roll: d6 = 2 (fails agility task)
- Nimble reroll: d6 = 6 (succeeds, also triggers Natural 6 check)
- Natural 6 check: d6 = 5 (no reward)
- Can character use Heroic Reroll to re-roll the first d6 from the beginning?

**RESOLUTION:** NO. Once Nimble reroll is used, the base roll is "locked." Heroic Reroll can be used on future rolls (next task, next combat action) but not retroactively on already-resolved rerolls.

**Why:** This prevents infinite reroll loops and maintains bounded randomness.

---

### Scenario 1.6: Reroll in Combat (Fighter)

**Setup:** Fighter makes Melee Attack Action. Combat Master ability grants explosion potential. Fighter has Heroic Reroll available.

**Mechanics:**

**Combat Roll Sequence:**
1. Fighter rolls CS d6 = 6 (attacks!). Triggers Natural 6 check.
2. Natural 6 check: d6 = 4 (no reward, but attack stands)
3. Combat Master applies: Fighter rolls additional d6 = 3
4. Total damage: 6 + 3 = 9

**Can Fighter use Heroic Reroll?**
- Option A: On the initial attack roll (before Combat Master triggers) - YES
- Option B: On the additional d6 from Combat Master - YES
- Option C: On both - NO, only one Heroic Reroll per session

**Resolution:** Fighter must choose which roll to expend Heroic Reroll on.

**Optimal Strategy:** If initial roll is 3+ likely, save Heroic for Combat Master's d6. If initial roll is 1-2, use on initial attack.

---

### Scenario 1.7: Reroll Stacking with Defense

**Setup:** Fighter using Full Defense (reroll all defense actions). Fighter has Deflect x1 armor. Heroic Reroll available.

**Mechanics:**

**Defense Action Sequence (enemy deals 5 damage):**
1. Fighter rolls CS d6 = 2 (normally blocks 2 damage)
2. Full Defense applies: Fighter rerolls d6 = 4 (blocks 4 damage)
3. Take best: 4 blocked
4. Net damage: 5 - 4 = 1 hp

**What if Fighter uses Deflect?**
- Deflect must be chosen BEFORE rolling
- If chosen: Deflect x1 auto-blocks 6 damage
- Full Defense reroll doesn't apply (already committed to Deflect's 6)
- Against 5 damage: Takes 0 (blocks all)

**Can Heroic Reroll be used?**
- YES, on Full Defense reroll: Gets 3 total rolls (base + Full Defense + Heroic), takes best

---

## INTERACTION CATEGORY 2: COMBAT SKILL STACKING & MODIFICATION

Combat Skill (CS) is the core combat statistic. Understanding how it's modified is critical.

### Scenario 2.1: Base Combat Skill by Class

**Setup:** Standard combat, no modifications.

| Class | Base CS | Combat Context |
|-------|---------|-----------------|
| Fighter | d6 | Highest—attack or defense |
| Cleric | d6-1 | Mid-level |
| Thief | d6-1 | Mid-level |
| Ranger | d6-1 | Mid-level |
| Bard | d6-2 | Lowest |
| Wizard | d6-2 | Lowest |

**Mechanics:** These are the baseline rolls used for all attack/defense in standard combat.

---

### Scenario 2.2: CS Modification via Spell (Arcane Armor)

**Setup:** Wizard casts Arcane Armor on Thief. Thief normally has CS d6-1.

**Mechanics:**
- Normal Defense: d6-1 = average 2.5 blocked damage
- With Arcane Armor: CS d6 = average 3.5 blocked damage
- Duration: Entire encounter
- Reroll: Yes, defense rolls rerolled (take best)

**Effect:** Thief gets +1.5 average blocking, universal across all defense actions until encounter ends.

**Stacking Question:** What if Thief also uses Full Defense?
- Arcane Armor provides: Universal d6 (not d6-1)
- Full Defense provides: Reroll all defense
- Combined: Reroll all defense at d6 (take best of rerolls)
- Result: More powerful than either alone, but not exponentially—Arcane Armor provides base boost, Full Defense provides reroll multiplier

---

### Scenario 2.3: CS Modification via Item (Equipment)

**Setup:** Fighter equips Oathkeeper chainmail (special armor).

**Mechanics:**
- Oathkeeper grants: "Roll CS for Defense Actions for a nearby target"
- Fighter can defend an ally as if they were being attacked
- Both Fighter and target can use Heroic Rerolls
- Fighter takes any unblocked damage

**CS Interaction:** No modification to Fighter's own CS d6. Instead, ability to "apply" CS to another character's defense. This is conditional ability, not permanent buff.

---

### Scenario 2.4: CS Modification via Monster Ability

**Setup:** Thief targeted by monster with Energy Drain ability. Monster uses Energy Drain.

**Mechanics:**
- Energy Drain doesn't deal damage; instead lowers CS
- Each touch: -1 to target's CS
- Thief's normal CS d6-1 becomes d6-2 after one hit
- After second hit: d6-3
- Minimum: d6-5 (below this, further drain = instant death)

**Consequence:** Each Energy Drain reduces combat effectiveness permanently (until encounter ends). Character can be entirely neutered if multiple hits land.

**Counterplay:** Get healing (Holy Light or magical) to restore 1 CS level per 1 hp healed.

---

## INTERACTION CATEGORY 3: ATTACK ACTIONS WITH MODIFIERS

How do various effects combine in combat?

### Scenario 3.1: Standard Attack (No Modifiers)

**Setup:** Fighter attacks Orc with longsword (no magical enhancements).

**Mechanics:**
- Fighter rolls CS d6 = 4 damage
- Orc rolls CS d6-2 = 3 blocked
- Net damage: 1 hp to Orc

---

### Scenario 3.2: Attack with Focus Weapon

**Setup:** Fighter attacks with Focus x1 weapon. Uses Focus this round.

**Mechanics:**
- Fighter chooses to use Focus (before rolling)
- Damage: Automatic 6 (no roll)
- Orc rolls defense: CS d6-2 = 4 blocked
- Net damage: 6 - 4 = 2 hp to Orc

**Comparison:** Compared to rolling d6 (average 3.5), Focus guarantees 6. This is reliable consistent damage.

---

### Scenario 3.3: Attack with Focus + Combat Master

**Setup:** Fighter with Combat Master ability uses Focus x1 weapon.

**Mechanics:**
- Fighter uses Focus: Damage = 6 (committed before roll)
- Combat Master applies: Roll additional d6 = 4
- Combined damage: 6 + 4 = 10
- Orc rolls defense: CS d6-2 = 5 blocked
- Net damage: 10 - 5 = 5 hp to Orc

**Why This Works:** Focus provides reliable 6. Combat Master's additional roll is a multiplier on top, not independent damage.

**Max Damage Scenario:** Fighter uses Focus (6) + Combat Master rolls d6 that explodes (6 → rolls again → 6 again) = 6 + 6 + 6 = 18 damage theoretical maximum.

---

### Scenario 3.4: Attack + Natural 6 + Heroic Reroll

**Setup:** Fighter attacks without Focus. Natural 6 on initial roll. Fighter has Heroic Reroll.

**Mechanics:**

**Round 1:**
1. Fighter rolls CS d6 = 6 (attack succeeds!)
2. Natural 6 check: d6 = 3 (no reward, attack stands as 6 damage)
3. Orc rolls defense: d6-2 = 1 blocked
4. Net damage: 6 - 1 = 5 hp to Orc

**Can Fighter use Heroic Reroll?**
YES, but to what end? On the initial attack roll, a Heroic Reroll would be used trying to beat already-achieved success (6 damage). This would be wasteful—only use if trying to maximize against subsequent defense rolls (but can't reroll after fact). Not tactically sound.

**Better Use:** Save Heroic Reroll for a failed attack roll in future round.

---

### Scenario 3.5: Multiple Attacks (Thief Flank)

**Setup:** Thief attacks Goblin engaged in melee with Fighter. Thief uses Flank ability.

**Mechanics:**
- Flank grants: Two Melee Attack rolls, take best
- Thief rolls attack 1: d6-1 = 2 damage
- Thief rolls attack 2: d6-1 = 5 damage
- Take best: 5 damage
- Goblin rolls defense: d6-3 = 1 blocked
- Net damage: 5 - 1 = 4 hp to Goblin

**Comparison:** Without Flank, Thief gets 1 attack roll. With Flank, 2 rolls → take best. Average improvement: ~0.8 more damage per attack.

---

### Scenario 3.6: Backstab Attack (Thief)

**Setup:** Thief makes Backstab (target unaware, not in combat yet).

**Mechanics:**
- Thief makes agility task to hit: Average (4+) assumed
- Success grants: 2 CS d6 Melee Attack rolls, combine both damages
- Thief rolls attack 1: d6-1 = 4 damage
- Thief rolls attack 2: d6-1 = 3 damage
- Combined: 4 + 3 = 7 damage (as single attack)
- Target rolls defense: d6 = 5 blocked
- Net damage: 7 - 5 = 2 hp

**Comparison:** This is approximately double damage compared to standard single attack. This is intentional—Backstab is meant to be high-damage opener.

**Natural 6 Interaction:** If either d6 attack roll is natural 6, does Natural 6 check apply?
- RESOLUTION: No. Natural 6 checks only apply to single rolls that determine success/failure. Backstab rolls are combined into single damage total; the combination itself isn't a "roll" that triggers Natural 6.

---

## INTERACTION CATEGORY 4: DEFENSE ACTIONS WITH MODIFIERS

How defensive mechanics interact with damage-prevention tools.

### Scenario 4.1: Standard Defense (No Modifiers)

**Setup:** Cleric targeted by Orc attack. Standard defense.

**Mechanics:**
- Orc rolls CS d6-2 = 4 damage
- Cleric rolls defense CS d6-1 = 2 blocked
- Net damage: 4 - 2 = 2 hp to Cleric

---

### Scenario 4.2: Defense with Full Defense Action

**Setup:** Cleric used Full Defense action this round. Now being attacked.

**Mechanics:**
- Orc rolls attack: CS d6-2 = 5 damage
- Cleric rolls defense (Full Defense): CS d6-1 = 1 blocked
- Full Defense applies: Cleric rerolls defense
- Cleric reroll: CS d6-1 = 4 blocked
- Take best: 4 blocked
- Net damage: 5 - 4 = 1 hp to Cleric

**Duration:** Full Defense lasts until start of next combat round. Only applies to defense actions, not attacks.

---

### Scenario 4.3: Defense with Deflect Armor

**Setup:** Cleric wearing Deflect x1 armor. Attacked for 7 damage.

**Mechanics:**
- Cleric chooses to use Deflect (declared before defense roll)
- Deflect blocks: 6 damage (automatic)
- Rolled defense not used (Deflect replaces it)
- Net damage: 7 - 6 = 1 hp to Cleric

**Comparison:** Standard defense might roll 2-3 (average). Deflect guarantees 6. Trade-off: One use per encounter.

---

### Scenario 4.4: Defense with Deflect + Full Defense

**Setup:** Cleric in Full Defense. Uses Deflect.

**Mechanics:**
- Enemy deals 8 damage
- Cleric chooses to use Deflect before deciding on Full Defense re-rolls
- Deflect blocks: 6 damage
- Can Cleric still reroll defense (Full Defense)?

**RESOLUTION:** NO. Once Deflect is committed, the defense action is resolved. Full Defense provides rerolls to standard defense rolls; Deflect replaces the standard roll entirely, so Full Defense re-rolls don't apply.

**Strategic Implication:** If using Deflect, commit fully to it. Don't combine with Full Defense rerolls.

---

### Scenario 4.5: Defense with Arcane Armor Spell

**Setup:** Wizard cast Arcane Armor on Fighter at start of encounter. Fighter now attacked.

**Mechanics:**
- Enemy deals 6 damage
- Fighter normally has defense CS d6
- With Arcane Armor: Defense CS d6 (universal, not class-modified)
- Arcane Armor grants: Reroll all defense (take best)
- Fighter rolls defense 1: d6 = 2 blocked
- Fighter rolls defense 2: d6 = 5 blocked
- Take best: 5 blocked
- Net damage: 6 - 5 = 1 hp to Fighter

**Effect:** Arcane Armor provides both universal d6 access AND reroll capability. Very strong defensive spell.

---

### Scenario 4.6: Defense Against Multiple Attacks (x2 Ability)

**Setup:** Monster with x2 Attack Actions uses both against Fighter.

**Mechanics:**

**Attack 1:**
- Monster rolls CS d6 = 4 damage
- Fighter rolls defense CS d6 = 3 blocked
- Net damage: 1 hp to Fighter

**Attack 2 (same round, different action):**
- Monster rolls CS d6 = 5 damage
- Fighter rolls defense CS d6 = 2 blocked
- Net damage: 3 hp to Fighter

**Total Round Damage:** 4 hp

**Can Fighter use Full Defense?** YES, but only once per round. Both attacks get Full Defense re-rolls.
- Attack 1 defense: d6 = 3, Full Defense reroll: d6 = 5 (take 5)
- Attack 2 defense: d6 = 2, Full Defense reroll: d6 = 4 (take 4)
- Attack 1 net: 4 - 5 = 0 hp
- Attack 2 net: 5 - 4 = 1 hp
- Total damage: 1 hp (vs. 4 hp without Full Defense)

---

## INTERACTION CATEGORY 5: SPELL CASTING WITH ABILITY STACKING

How spells interact with character abilities.

### Scenario 5.1: Combat Magic by Wizard

**Setup:** Wizard casts Dark Bolt spell (1 of 2 combat spells per encounter).

**Mechanics:**
- Takes combat action to cast
- Rolls CS d6-2 for damage (Wizard baseline)
- May explode on natural 6
- Target rolls defense
- Counts against 2 spells per encounter limit

**Interaction with Brains:** Wizard doesn't have task roll to reroll—this is combat action, not task. Brains doesn't apply here.

---

### Scenario 5.2: Free Form Magic Attempt

**Setup:** Out of combat. Wizard attempts Free Form Magic (1 of 2 per session).

**Mechanics:**
- Propose spell effect to PM
- PM determines difficulty (task roll)
- Wizard rolls against difficulty
- On success: Spell happens
- On failure: Spell attempt wasted

**Interaction with Brains:** Brains allows reroll on intelligence tasks. Is Free Form Magic an intelligence task?

**RESOLUTION:** 
- Base Free Form Magic: NOT automatically intelligence task (it's a spell, not a task)
- BUT: Wizard can argue that specific Free Form Magic (e.g., "decode ancient text") involves intelligence
- PM may grant Brains reroll on a case-by-case basis
- PM might alternatively say: "That's a Free Form Magic spell (can't use Brains), not an intelligence task"

**Practical:** Brains reroll is most reliably applied to non-magic intelligence tasks. Use Heroic Reroll for Free Form Magic that feels risky.

---

### Scenario 5.3: Bard Song + Spell Casting

**Setup:** Bard begins singing Hymn of the Mighty (duration: 3+ combat rounds).

**Mechanics:**
- Takes 1 combat action to start singing
- During singing: Bard can still attack/cast/act normally
- Bard performs other actions while singing continues
- Party gets +1 damage per attack

**Question:** Can Bard use spell-granting items (Crown of Dead Kings) while singing?

**RESOLUTION:** YES. Bard can:
- Sing song (no action cost after initial)
- Use combat action for Crown spell
- Use another combat action for regular attack
- All happen same round

**Stacking:** Song buff (+1 damage) applies to all party members. Bard using Crown spell gets its own effect. No conflict.

---

### Scenario 5.4: Multiple Spells in Single Encounter

**Setup:** Wizard has 2 combat magic spells per encounter.

**Question:** Can Wizard cast same spell twice?

**RESOLUTION:** YES. Wizard could cast Dark Bolt twice, or Arcane Armor twice, or mix.

**Each spell**: Takes 1 combat action, counts as 1 of 2 uses.

---

## INTERACTION CATEGORY 6: HEROIC REROLL ON SPELL CASTING

When can Heroic Rerolls be used with magic?

### Scenario 6.1: Combat Spell + Natural 6

**Setup:** Wizard casts Dark Bolt (combat spell). Rolls natural 6 on damage roll.

**Mechanics:**
- Dark Bolt: CS d6-2 = roll 6 (damage successful!)
- Natural 6 check: d6 = 5 (no reward)
- Target rolls defense
- Damage applied

**Can Wizard use Heroic Reroll?**
YES, on either:
- Initial damage roll (to try for different roll)
- Target's defense roll (to try lower defense)
But Heroic Reroll is one per session, so choose wisely.

---

### Scenario 6.2: Free Form Magic + Failure

**Setup:** Wizard attempts Free Form Magic (1 of 2 per session). PM sets difficulty Average (4+). Wizard rolls d6 = 2 (fails).

**Mechanics:**
- Spell attempt wasted (counts against 2 per session)
- Wizard expends Heroic Reroll
- Wizard rerolls: d6 = 5 (succeeds!)
- Spell happens

**Outcome:** Heroic Reroll successfully saved Free Form Magic attempt. Wizard still has both uses (one was "saved"), but Heroic Reroll is depleted.

**Alternative:** If Wizard hadn't used Heroic Reroll, failure would waste a spell slot (only 2 per session).

---

## INTERACTION CATEGORY 7: ABILITY SYNERGIES

How class abilities work together.

### Scenario 7.1: Flank + Backstab (Thief)

**Setup:** Thief is flanking Goblin AND Goblin is unaware (rare scenario).

**Question:** Does Backstab override Flank, or do they stack?

**RESOLUTION:** Backstab requires target completely unaware. Once Flank condition is met (enemy engaged with ally), target is "aware of combat." Backstab condition no longer met.

These abilities are mutually exclusive in most scenarios. Not practical to combine.

---

### Scenario 7.2: Challenge + Flank (Fighter + Thief)

**Setup:** Fighter challenges Goblin (forces Goblin to attack Fighter). Thief also in combat. Can Thief use Flank on the Goblin?

**Mechanics:**
- Challenge forces Goblin to attack Fighter (if possible)
- Flank works against enemies engaged in melee (Goblin IS engaged with Fighter)
- Thief can use Flank

**Outcome:** Challenge + Flank work together tactically. Challenge controls Goblin's action direction; Flank gives Thief advantage.

---

### Scenario 7.3: Combat Master + Focus + Natural 6 + Heroic Reroll

**Setup:** Fighter attacks Orc. All conditions favorable.

**Mechanics:**

**Attack Round:**
1. Fighter uses Focus: Damage = 6 (committed)
2. Combat Master triggers: Roll additional d6 = 6 (explodes!)
3. Explosion roll: d6 = 3
4. Total damage: 6 + 6 + 3 = 15 hp

**Additional:**
5. Natural 6 triggered by the explosion?

**RESOLUTION:** Natural 6 check applies to the exploding roll (the second 6), not the Focus's automatic 6.
- Explosion roll 6 triggers Natural 6 check
- Natural 6 check: d6 = 6 (earns Heroic Reroll!)

**Final:** Fighter deals 15 damage AND earns Heroic Reroll from the natural 6.

---

### Scenario 7.4: Survivalist + Bardic Music

**Setup:** Ranger using Survivalist ability (environmental task reroll) while Bard sings Ballad of Legends (+1 reroll trigger threshold).

**Question:** Do these interact?

**RESOLUTION:** 
- Survivalist: Reroll non-combat tasks in woodland/cavern (take best)
- Ballad: Makes Heroic Reroll triggers on 3+ instead of 6

These are separate mechanics:
- Survivalist applies to environmental tasks
- Ballad applies to heroic roll frequency

If Ranger makes environmental task (hunting), rolls 6 → natural 6 check:
- Without Ballad: Needs 6 to earn reroll
- With Ballad: Needs 3+ to earn reroll
- Resulting: Higher chance to earn Heroic Reroll from environmental tasks while Ballad plays

This is tangential synergy, not direct stacking.

---

## INTERACTION CATEGORY 8: MAGIC ITEM STACKING RULES

How do item limits and benefits work?

### Scenario 8.1: Multiple Rings

**Setup:** Character wears 3 rings: Ring of Protection, Ring of Senses, Ring of Speed.

**Mechanics:**
- Ring limit: Only 2 rings provide benefits
- Ring of Protection: Take 1 less damage (active)
- Ring of Senses: Perception reroll (active)
- Ring of Speed: Initiative advantage (NOT active, limited to 2)

**Question:** How does character choose which 2 work?

**RESOLUTION:** Character likely has primary selection at equipping time. Only 2 of 3 provide mechanical benefit. If all three equipped, PM might rule the third is inert, OR character can switch which ring is active each scene (PM discretion).

---

### Scenario 8.2: Multiple Necklaces

**Setup:** Character wearing Amulet of Legends AND Amulet of the Sun God.

**Mechanics:**
- Necklace limit: Only 1 necklace provides benefits
- Only one of these works
- Character chooses which
- Other is inert

**Strategic:** This forces meaningful choices. Legendary (Heroic Rerolls) vs. Sun God (automatic healing)?

---

### Scenario 8.3: Ring + Ring + Necklace (Maximum)

**Setup:** Character wearing Ring of Protection, Ring of Speed, Amulet of Legends.

**Mechanics:**
- 2 rings active: Protection + Speed
- 1 necklace active: Legends
- All three can provide benefits simultaneously

**Total benefit:** -1 damage, initiative advantage, +2 Heroic Rerolls per session

---

## INTERACTION CATEGORY 9: UNDEAD-SPECIFIC MECHANICS

Special interactions with undead monsters.

### Scenario 9.1: Holy Smite vs. Undead

**Setup:** Cleric uses Holy Smite against Skeleton (undead monster).

**Mechanics:**
- Holy Smite: d6-1 damage vs. undead (roll twice, take best)
- NO Defense Action allowed (undead don't roll defense vs. Holy Smite)
- Damage applied directly
- Example: Roll d6-1 = 3, roll d6-1 = 4, take 4 damage

**Comparison:** Holy Light (healing) heals d6-1; Holy Smite (damage to undead) deals d6-1. Same die, different target.

---

### Scenario 9.2: Confusion Spell Interaction with Undead

**Setup:** Wizard casts Confusion spell against Zombie (undead).

**Mechanics:**
- Undead are immune to Confusion spell
- Spell fails; no effect
- Spell action wasted (counts against 2 spells/encounter)

**Why:** Undead are explicitly immune to Confusion.

---

### Scenario 9.3: Holy Water vs. Undead

**Setup:** Character uses Holy Water item against Ghoul (undead).

**Mechanics:**
- Holy Water: CS r d6-1 vs. undead
- "r" means "roll" (roll CS die)
- May hit multiple targets (PM discretion)
- Damage applied to all in splash

---

### Scenario 9.4: Nether Band Ring vs. Undead

**Setup:** Character wearing Nether Band encounters Vampire (undead).

**Mechanics:**
- Nether Band grants: Undead must make Tough task (5+) to attack wearer
- Vampire attempts to attack: Makes Tough task
- Failure: Cannot attack this round
- Success: Can attack normally

**Effect:** Makes undead less able to focus character wearing ring.

---

## INTERACTION CATEGORY 10: DAMAGE TYPE INTERACTIONS

How specific damage types interact with monsters.

### Scenario 10.1: Fire Damage vs. Regenerating Monster

**Setup:** Monster with Regenerate ability has taken 5 damage. Regenerates 1 hp/round normally. Character uses flaming sword dealing 4 fire damage, killing blow.

**Mechanics:**
- Monster at 1 hp currently (from previous combat)
- Takes 4 damage: Reduced to 0 hp
- With Regenerate: Automatically regenerates d6 rounds later
- UNLESS: Fire damage used on killing blow
- Flaming sword deals fire damage on killing blow: Monster does NOT regenerate
- Monster stays dead

**Effect:** Fire damage negates Regenerate (along with setting body aflame manually).

---

### Scenario 10.2: Poison Application + Multiple Hits

**Setup:** Thief applies Black Lotus Poison to dagger. Makes two attacks, both hit.

**Mechanics:**

**Attack 1:** Hits for 4 damage
- Black Lotus Poison triggers: Monster makes Tough strength task (5+)
- Monster rolls 3 (fails)
- Monster is poisoned

**Attack 2:** Hits for 3 damage
- Black Lotus Poison triggers again: Monster makes Tough strength task
- Monster rolls 6 (succeeds!)
- Monster avoids second poisoning
- BUT: First poisoning already active

**Rule:** "Once poisoned, further poisonings ignored."

**Effect:** Poisoned creature takes 1 hp damage at start of each subsequent round. Multiple poison applications don't stack; one active poison is sufficient.

---

## INTERACTION CATEGORY 11: ENCOUNTER DIFFICULTY ADJUSTMENTS

How PM adjusts difficulty based on combinations.

### Scenario 11.1: Single Difficult Enemy

**Setup:** Party of 4 faces 1 boss monster (CS d6, 20 hp). PM assesses difficulty.

**Metrics:**
- Party size: 4
- Expected party damage per round: ~8-12 hp (varies by class)
- Monster damage per round: ~5-8 hp
- Expected duration: 2-3 rounds of combat

**Assessment:** Moderate to Difficult Challenge based on party composition and tactics.

**Loot Adjustment:** If party wins despite struggle, Boss Challenge loot (d6x100 gold, magical item rolls).

---

### Scenario 11.2: Multiple Weak Enemies

**Setup:** Party of 4 faces 5 goblins (CS d6-3, 1-2 hp each).

**Metrics:**
- Numerical advantage: 5v4
- Damage per hit very low
- Combat rounds to clear: 2-3
- Threat: Low (goblins die quickly)

**Assessment:** Easy Challenge (multiple weak enemies don't pose threat individually).

**Loot Adjustment:** Easy Challenge loot (d6 gold per character).

---

### Scenario 11.3: Mixed Difficulty Enemies

**Setup:** Party of 4 faces 2 Orc Warriors (CS d6, 8 hp each) + 3 Goblin Archers (CS d6-3, 2 hp each).

**Metrics:**
- Orcs are significant threat
- Goblins are damage at distance
- Tactical complexity: High
- Expected rounds: 3-4

**Assessment:** Difficult Challenge (mixed threats create tactical complexity).

**Loot Adjustment:** Difficult Challenge loot (d6x10 gold per character).

---

## SUMMARY: MECHANICAL INTERACTION PRINCIPLES

### Principle 1: Rerolls Stack, Bonuses Don't
You can access multiple reroll sources (ability + Heroic + item) on same roll. You cannot add "+2 bonuses" from multiple sources.

### Principle 2: Committed Actions Lock Mechanics
Once you commit to using Focus or Deflect, the choice is locked. Can't then apply Full Defense rerolls or other modifications.

### Principle 3: One Heroic Reroll Per Session Maximum
Multiple sources exist (Human bonus, items, natural 6s), but only one reroll resource per session. Choose spending wisely.

### Principle 4: Natural 6 Checks Are Secondary
Natural 6 triggers reward check (possible Heroic Reroll), but the initial 6 is never bad. Always resolves favorably.

### Principle 5: Spell Interactions Are Case-by-Case
Most spell interactions aren't explicitly spelled out. Use task system logic and PM discretion.

### Principle 6: Item Restrictions Are Hard Limits
Maximum 2 rings + 1 necklace providing benefits. These aren't negotiable—prevents power stacking.

### Principle 7: Undead Have Special Rules
Confusion immunity, Regenerate with fire negation, Holy Smite no-defense rules. Remember when designing encounters.

### Principle 8: Ability Synergies Are Tactical, Not Mechanical
Most strong synergies (Challenge + Flank, Focus + Combat Master) arise from tactical positioning, not rule stacking. Play into this.

---

**End of PFRPG Mechanical Interactions Matrix**

*For complex resolution scenarios not covered here, use the task system as guideline: Compare expected outcomes, ensure bounded randomness, and maintain player agency. When in doubt, PM discretion applies.*