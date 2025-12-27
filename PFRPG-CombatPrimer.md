# PFRPG COMBAT PRIMER
## Complete Step-by-Step Combat Guide

---

## DOCUMENT METADATA

**Title:** Pocket Fantasy RPG - Combat Primer & Step-by-Step Walkthrough

**Version:** 1.0 (Synchronized with PFRPG Rulebook v4.2)

**Document Type:** Procedural Guide & Combat Reference

**Purpose:** Complete step-by-step walkthrough of combat from initiative to resolution. Includes detailed examples, turn-by-turn breakdown, and common tactical scenarios.

**Related Documents:**
- PFRPG-CoreMechanics-Primer.md (Mechanical foundation)
- PFRPG-MechanicalInteractions.md (Complex interactions)
- PFRPG-TableOfContents.md#section-2 (Combat navigation)

**Format:** Procedural + Examples

**Last Updated:** December 16, 2025

---

## COMBAT OVERVIEW

Combat in PFRPG happens in **rounds**. Each round, every character/enemy acts once in **initiative order**. Characters take **actions** (attack, defend, special ability). Combat continues until one side wins or flees.

### Combat Structure
```
Session Starts
    ↓
Combat Begins
    ↓
Initiative Rolled (Agility task)
    ↓
Round 1
    ├─ Character A acts
    ├─ Enemy acts
    ├─ Character B acts
    └─ Round 1 complete
    ↓
Round 2 (repeat above)
    ↓
Combat Ends (victory/defeat/escape)
```

---

## STEP 1: DETERMINING SURPRISE

**When does surprise happen?**

Surprise occurs when one side enters combat while unaware of the other.

### Example: Ambush Scenario

**Setup:**
- Party of 4 is walking through dungeon hallway
- Goblins wait around corner

**Surprise Check:**
- Party makes Wisdom task (Average 4+) to notice goblins before combat
- Party rolled 2 (failed) → Party is surprised

**Consequence:**
- Goblins act first in initiative (surprise advantage)
- Party can still act normally once surprised state is over (not a turn skip)

### Special Case: Elf Racial Trait

**Elf only gets surprised on roll of 1** (instead of normal 1-3)

This means:
- Normal character: 50% chance surprised
- Elf: 17% chance surprised
- Elf has huge advantage in ambush/surprise scenarios

---

## STEP 2: ROLLING INITIATIVE

**When:** At the very beginning of combat

**How:**
1. All combatants make Agility task (d6 roll)
2. Highest roll acts first
3. Resolve ties by Agility stat (or PM rolls again)
4. Act in order from highest to lowest

### Initiative Example

**Participants:**
- Fighter (Agility 2)
- Thief (Agility 3)
- Enemy Orc (no stat, assume d6 equal footing)
- Enemy Goblin (no stat)

**Rolls:**
- Fighter rolls d6 = 3
- Thief rolls d6 = 5
- Orc rolls d6 = 4
- Goblin rolls d6 = 2

**Initiative Order:** Thief (5) → Orc (4) → Fighter (3) → Goblin (2)

**Action sequence:** 
Round 1: Thief acts → Orc acts → Fighter acts → Goblin acts → Round ends

---

## STEP 3: FIRST ROUND ACTIONS

In the first round (and every round), each combatant chooses an **action**.

### Available Actions

| Action | Description | Cost | Example |
|--------|-------------|------|---------|
| **Attack** | Roll attack, target defends, deal damage | 1 action | Sword swing |
| **Defend** | Ready to block incoming attacks | Reactive | No action cost |
| **Full Defense** | Defensive stance, reroll all defense this round | 1 action | Brace for hits |
| **Special Ability** | Class or item ability | Per ability | Combat Master, Flank, etc. |
| **Move** | Reposition | Free (no cost) | Run to new position |
| **Cast Spell** | Magic casting | 1 action | Dark Bolt, Confusion |

### Example: Turn 1 of Combat (Following Initiative Above)

**Thief's turn (highest initiative):**
- Thief positions for Flank (melee with enemy)
- Action: Move closer (free)
- Remaining action: Ready to attack next

**Orc's turn:**
- Orc sees Thief approaching
- Action: Attack Thief with sword
- Rolls CS d6 = 4 damage
- Thief defends: CS d6-1 = 2 blocked
- Damage: 4 - 2 = 2 hp to Thief (Thief now 4/6 hp)

**Fighter's turn:**
- Sees Thief being attacked
- Action: Attack Orc with sword
- Rolls CS d6 = 5 damage
- Orc defends: CS d6 = 3 blocked
- Damage: 5 - 3 = 2 hp to Orc (Orc now 8/10 hp)

**Goblin's turn (lowest initiative):**
- Goblin sees combat
- Action: Attack Fighter with dagger
- Rolls CS d6-3 = 1 damage
- Fighter defends: CS d6 = 4 blocked
- Damage: 1 - 4 = 0 hp (Goblin doesn't get through)

---

## STEP 4: RESOLVING ATTACKS & DEFENSE

### Attack Resolution Process

**1. Attacker declares attack**
- "I attack the Orc with my sword"

**2. Attacker rolls Combat Skill (CS)**
- Fighter rolls CS d6 = 4

**3. Defender chooses action**
- Defender can:
  - Defend normally (roll defense)
  - Use Full Defense (defend + get reroll)
  - Use Deflect (auto-block 6)
  - Use other abilities

**4. Defender rolls defense**
- Orc rolls defense CS d6 = 2

**5. Compare: Attack roll - Defense roll = Damage**
- 4 - 2 = 2 hp damage

**6. Apply damage to target**
- Orc takes 2 hp damage (if was 10 hp, now 8 hp)

---

## STEP 5: COMBAT EXAMPLE - FULL 3-ROUND FIGHT

### Setup

**Party:** Fighter (10 hp) + Thief (6 hp)
**Enemies:** Orc Warrior (8 hp), Goblin Scout (2 hp)

**Initiative Rolls:**
- Fighter: 3 → acts 2nd
- Thief: 5 → acts 1st
- Orc: 4 → acts 3rd
- Goblin: 2 → acts 4th

---

### ROUND 1

**Turn 1: Thief's turn**
- Uses Flank ability (dual attack rolls)
- Attack roll 1: d6-1 = 3
- Attack roll 2: d6-1 = 5
- Takes best: 5
- Orc defends: d6 = 2
- Damage: 5 - 2 = 3 hp to Orc (Orc: 8 → 5 hp)

**Turn 2: Fighter's turn**
- Uses Focus x1 weapon
- Focus guarantees 6 damage (no roll)
- Orc still defending from previous attack
- Wait, can defender defend multiple attacks same round?
- **No**, defender rolls defense separately for each attack

**Correction - Fighter attacks (fresh attack):**
- Uses Focus: 6 damage (no roll)
- Orc defends: d6 = 3
- Damage: 6 - 3 = 3 hp to Orc (Orc: 5 → 2 hp)

**Turn 3: Orc's turn**
- Orc is in combat with two enemies
- Uses Challenge ability (force enemy focus)
- Chooses: Fighter (highest threat)
- Attacks Fighter instead
- Rolls CS d6 = 5
- Fighter defends: CS d6 = 2
- Damage: 5 - 2 = 3 hp to Fighter (Fighter: 10 → 7 hp)

**Turn 4: Goblin's turn**
- Goblin is scared (outnumbered)
- Action: Attack Thief (weakest target)
- Rolls CS d6-3 = 1
- Thief defends: CS d6-1 = 4
- Damage: 1 - 4 = 0 (Thief blocks completely)

**Round 1 Summary:** Orc took 6 hp damage (8→2 hp), Fighter took 3 hp, Goblin didn't hit

---

### ROUND 2

**Initiative continues from Round 1 order (no re-roll typically)**
Thief → Orc → Fighter → Goblin

**Turn 1: Thief's turn (Round 2)**
- Thief positions for backstab attempt
- Actually, Orc is already in combat (aware), so Backstab doesn't work
- Instead: Attack with sword
- Rolls CS d6-1 = 2
- Orc defends: d6 = 1
- Damage: 2 - 1 = 1 hp to Orc (Orc: 2 → 1 hp)

**Turn 2: Orc's turn (Round 2)**
- Orc is at 1 hp (desperate)
- Challenge still active on Fighter
- Attacks Fighter
- Rolls CS d6 = 3
- Fighter defends: CS d6 = 5
- Damage: 3 - 5 = 0 (Fighter blocks)

**Turn 3: Fighter's turn (Round 2)**
- Focus x1 already used (depleted for this encounter)
- Regular attack with sword
- Rolls CS d6 = 6 (natural 6!)
- Natural 6 check: Roll d6 again = 3 (no reward)
- Orc defends: d6 = 2
- Damage: 6 - 2 = 4 hp to Orc (Orc: 1 → -3 hp)

**Orc is defeated!** (Unconscious at 0 hp or lower)

**Turn 4: Goblin's turn (Round 2)**
- Goblin sees Orc down
- Panics and flees (runs away)
- Action: Disengage and exit combat

**Combat effectively over** (Goblin fled, Orc defeated)

---

## STEP 6: HANDLING DEFEAT

### If Character Reaches 0 HP

**Immediate effect:** Character becomes unconscious

**Per-round death save:**
- Unconscious character makes Laughable task (2+) each round
- Success: Stays unconscious (still alive)
- Failure: Dies permanently

**Allies can help:**
- Adjacent ally spends action making Average task (4+)
- Success: Character is stabilized (conscious but helpless)
- Stabilized character no longer needs death saves

**Healing:**
- Holy Light spell: d6-1 hp restore
- Potion of Ultimate Healing: Full hp restore
- Post-encounter healing: Naturally restore 1 hp (Cleric 2 hp)

### Full Round Death Sequence

**Fighter at 0 hp:**
- Round 1: Fighter makes Laughable task = rolls 3 (succeeds, still alive but unconscious)
- Round 2: Fighter makes Laughable task = rolls 1 (fails, dies permanently)
- **Fighter is dead**

**Alternative - Thief stabilizes Fighter:**
- Round 1: Fighter unconscious, makes save = rolls 3 (succeeds)
- Round 2: Thief uses action to stabilize (Average task 4+) = rolls 5 (succeeds)
- **Fighter is stabilized, conscious, no longer in danger**
- Round 3: Cleric uses Holy Light to heal Fighter = d6-1 = 3 hp
- **Fighter is back in combat with 3 hp**

---

## STEP 7: SPECIAL COMBAT SCENARIOS

### Scenario 1: Full Defense

**Setup:** Fighter uses Full Defense action on their turn

**Effect:** All defense rolls this round get rerolled (take best)

**Example:**
- Enemy Orc attacks Fighter
- Orc rolls CS d6 = 5
- Fighter rolls defense CS d6 = 1 (bad roll!)
- Fighter uses Full Defense reroll: CS d6 = 4 (better!)
- Damage: 5 - 4 = 1 hp (instead of 4 hp)

**Benefit:** Mitigates unlucky defense rolls

---

### Scenario 2: Flanking

**Setup:** Thief has enemy engaged with Fighter (both in melee)

**Thief's turn:** Uses Flank ability

**Effect:** Two attack rolls against the enemy, take best

**Example:**
- Thief roll 1: d6-1 = 2
- Thief roll 2: d6-1 = 5
- Take best: 5
- Enemy defends: d6 = 3
- Damage: 5 - 3 = 2 hp

**Benefit:** +0.8 average damage vs. single attack

---

### Scenario 3: Movement & Disengagement

**Setup:** Fighter in melee with Orc, wants to move

**Free movement:** Fighter can move to new position (no action cost)

**Disengagement risk:** If leaving melee range, Orc gets free attack

**Example:**
- Fighter moves away from Orc
- Orc gets one free melee attack (if in range)
- Then combat continues with new positioning

---

### Scenario 4: Spell Casting in Combat

**Setup:** Wizard casts Dark Bolt (takes 1 action, not 1 attack)

**Effect:**
- Wizard rolls CS d6-2 damage
- Enemy defends
- Damage applied like normal attack

**Difference from attack:**
- Can cast spell from distance (ranged safety)
- Doesn't trigger Combat Master (specific to melee)
- Counts against 2 spells per encounter limit

---

## COMBAT FLOW CHART

```
Combat Starts
    ↓
Roll Initiative (Agility task)
    ↓
Act in initiative order
    ├─ Attacker declares attack
    ├─ Attacker rolls Combat Skill
    ├─ Defender chooses action (defend, Full Defense, Deflect, etc.)
    ├─ Defender rolls defense (if applicable)
    ├─ Compare rolls: Attack - Defense = Damage
    ├─ Apply damage
    └─ Next character's turn
    ↓
All combatants acted?
    ├─ No → Next combatant's turn
    ├─ Yes → Next round (return to act in initiative order)
    ↓
Combat ends?
    ├─ No → Continue rounds
    ├─ Yes → Resolve outcome
        ├─ Victory → Award loot
        ├─ Defeat → Character death/unconscious
        └─ Escape → End combat, flee scenario
```

---

## COMMON COMBAT MISTAKES

### Mistake 1: "Can I attack twice?"
**Wrong:** No, unless you have 2 combat actions
**Right:** You get 1 action per round (attack OR defend OR move). Some abilities grant extra actions.

### Mistake 2: "Do I roll defense before being attacked?"
**Wrong:** No, defense is reactive
**Right:** Defense roll happens AFTER attack roll, in response to specific attack.

### Mistake 3: "Does my magical armor automatically block?"
**Wrong:** Not unless you commit Deflect (which replaces normal defense)
**Right:** Normal defense still requires rolling. Deflect is special commitment (guaranteed 6, but limited uses).

### Mistake 4: "If I move, do I lose my action?"
**Wrong:** No, movement is free
**Right:** You can move + take action same turn.

### Mistake 5: "Does Full Defense last multiple rounds?"
**Wrong:** No, it's one round only
**Right:** Full Defense lasts until start of your next turn. Next round, you need to use it again if desired.

---

## TACTICAL TIPS

### Tip 1: Use Full Defense Against High Threats
When facing powerful enemy: Use Full Defense to reduce damage spike.

### Tip 2: Concentrate Fire
Multiple characters attack same enemy (instead of spreading damage). Defeats enemies faster.

### Tip 3: Position for Flank
If you're Thief: Get on opposite side of enemy from ally. Enables Flank ability.

### Tip 4: Use Abilities on Key Rounds
Save Combat Master explosion, Backstab, and special abilities for crucial moments (boss at high health, party in danger).

### Tip 5: Manage Spell Resources
As Wizard: Use 2 combat spells strategically. First spell for offense, second for control/support.

---

## FAQ: COMBAT MECHANICS

**Q: Can I defend myself multiple times against one attacker?**
A: No. You roll defense once per attack. If attacked by 2 enemies, you roll defense twice (once per attack).

---

**Q: What happens if I'm knocked to 0 hp mid-round?**
A: You become unconscious immediately. Next round (if still alive), you make death saves.

---

**Q: Can I move out of melee range for free?**
A: Move is free, but disengaging from melee grants enemy free attack.

---

**Q: Do I heal between rounds?**
A: No. Healing only happens:
  - Post-encounter (1 hp)
  - Extended rest (3 hp)
  - Holy Light spell (in combat)
  - Potions (in combat)

---

**Q: If I roll natural 6 on attack, does it always hit?**
A: No, it deals 6 damage IF it hits. Defender still rolls defense. Natural 6 is good damage roll, not guaranteed hit.

---

## QUICK REFERENCE: COMBAT ACTIONS

| Action | Initiative | Action Cost | Effect | Bonus |
|--------|-----------|------------|--------|-------|
| Attack | Each round | 1 action | Roll CS, enemy defends, deal damage | Might explode if natural 6 |
| Defend | Reactive | 0 actions | Roll defense CS, block damage | Can't refuse defense |
| Full Defense | Next round | 1 action | Reroll all defense this round | Great vs. high damage |
| Move | Each round | Free | Reposition | Free disengage has risk |
| Cast Spell | Each round | 1 action | Roll spell damage/effect | Counts against spells/encounter |
| Special Ability | Per ability | Per ability | Use class/item ability | Varies widely |

---

**End of PFRPG Combat Primer**

*For detailed mechanics, see PFRPG-CoreMechanics-Primer.md. For interactions, see PFRPG-MechanicalInteractions.md.*