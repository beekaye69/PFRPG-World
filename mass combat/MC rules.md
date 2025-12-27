# PFRPG ATOMIZED MODULE: MASS COMBAT & SIEGE
## Version: 1.0 | System: PFRPG v4.2 | Source: D&D War Machine Integration

---

## [CATEGORY: UNIT ANATOMY]

### [Rule-MC-01.1: Unit HP (Stamina)]
**Description:** Units use a collective health pool.
**Mechanic:** 10 HP per "Block" (100 soldiers). 
- **Casualty Threshold:** At 5 HP (50%), the unit must make a **Morale Task Roll**.
- **Destruction:** At 0 HP, the unit is removed from the field (Routed or Annihilated).
**Metadata:** `[Stats]` `[HP]` `[Unit-Scale]`

### [Rule-MC-01.2: Unit CS (Quality)]
**Description:** Replaces d100 Battle Rating (BR) with d6 scaling.
**Mechanic:**
- **Tier 0 (Untrained):** CS d6-2
- **Tier 1 (Militia):** CS d6-1
- **Tier 2 (Soldier):** CS d6
- **Tier 3 (Veteran/Elite):** CS d6+1
**Metadata:** `[Stats]` `[CS]` `[Progression]`

### [Rule-MC-01.3: Morale Task Roll]
**Description:** Determination under pressure.
**Mechanic:** **Wisdom Task Roll (Average 4+)**.
- **Modifiers:** Commander fallen (+1 Difficulty), losing >3 HP in one round (+1 Difficulty), winning previous clash (-1 Difficulty).
- **Result:** Fail = [Shaken] (Disadvantage on rolls). Fail by 3+ = [Routed].
**Metadata:** `[Task]` `[Psychology]` `[Morale]`

---

## [CATEGORY: FIELD COMBAT]

### [Rule-MC-02.1: The Clash]
**Description:** Simultaneous resolution of unit engagement.
**Mechanic:** Both units roll their CS die.
- **Damage:** (Attacker Roll) - (Defender Roll) = HP Loss to Defender.
- **Mutual Damage:** If both roll the same number, both units take 1 HP damage.
**Metadata:** `[Combat]` `[Resolution]` `[Simultaneous]`

### [Rule-MC-02.2: Tactical Maneuvers]
**Description:** Positioning benefits on the d6 scale.
- **Flank/Rear:** Attacker grants a [Heroic Reroll] on the attack.
- **High Ground:** +1 to the final CS roll result.
- **Fortified Position:** Defender forces Attacker to roll CS with Disadvantage (d6-2).
**Metadata:** `[Tactics]` `[Positioning]`

### [Rule-MC-02.3: Special Unit Abilities]
**Description:** Converted from Rules Cyclopedia "Special Factors."
- **Flying:** Ignore terrain; ground-only units cannot initiate a Clash against you.
- **Breath Weapon/Aura:** Deals d6 automatic damage to Unit HP once per battle.
- **Magic Resistance:** Gain a [Heroic Reroll] against Wizard Siege Spells.
**Metadata:** `[Abilities]` `[Monster-Traits]`

---

## [CATEGORY: THE SIEGE MACHINE]

### [Rule-MC-03.1: Structure Deflect]
**Description:** Walls use the PFRPG Deflect mechanic to negate "hits."
**Mechanic:**
- **Wood:** Deflect x1 (Blocks first hit of 6 damage).
- **Stone:** Deflect x2 (Blocks first two hits of 6 damage).
- **Citadel:** Deflect x3 (Blocks first three hits of 6 damage).
**Metadata:** `[Siege]` `[Armor]` `[Structure]`

### [Rule-MC-03.2: Siege Actions]
**Description:** Breaking the stalemate.
- **Bombard (Catapult):** Strength Task (4+). Success = 2d6 damage to Wall HP.
- **Escalade (Ladders):** Agility Task (Tough 5+). Success = Bypass Wall Deflect for infantry.
- **Ram (Gate):** Strength Task (6). Success = Gate destroyed instantly.
**Metadata:** `[Siege]` `[Actions]`

---

## [CATEGORY: PC LEADERSHIP]

### [Rule-MC-04.1: Commander Intervention]
**Description:** PCs leading from the front.
**Mechanic:** A PC may replace a Unit's roll with their own **Ability Task Roll** once per battle (e.g., Fighter uses Strength for a Charge, Bard uses Charisma for a Morale boost).
**Metadata:** `[PC-Interaction]` `[Command]`

### [Rule-MC-04.2: Battle Magic]
**Description:** Wizards in large-scale combat.
**Mechanic:**
- **Fireball/Lightning:** Acts as a Siege Engine (2d6 damage to Unit HP).
- **Cloud/Fog Spells:** Disable an enemy unit's ability to use Range or Charge for d6 rounds.
**Metadata:** `[Magic]` `[Siege]`

---

## [CATEGORY: LOGISTICS & LOOT]

### [Rule-MC-05.1: Maintenance Cost]
**Description:** Derived from Rules Cyclopedia Mercenary rates.
**Mechanic:** 10gp per Unit HP per month (e.g., a 10 HP Militia unit costs 100gp/month).
**Metadata:** `[Economy]` `[Logistics]`

### [Rule-MC-05.2: Battle Spoils]
**Description:** Post-victory resource gain.
**Mechanic:** Roll 1d6 for every 10 HP of defeated enemies.
- **1-3:** 100gp in supplies/salvage.
- **4-5:** 300gp in coin/valuables.
- **6:** 1 Arcane Gem found.
**Metadata:** `[Loot]` `[Rewards]`