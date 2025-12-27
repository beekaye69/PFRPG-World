# PFRPG DOMAIN & STRONGHOLD EXPANSION
## Source: D&D Rules Cyclopedia (pp. 134-142) | System: PFRPG v4.2

---

## DOCUMENT METADATA
**Title:** PFRPG Domain Management & Stronghold Construction
**Version:** 1.0 (Fully Processed for Ingestion)
**Mechanical Core:** d6 Task Resolution / Economy Scaling
**Target Logic:** Resource Management & Political Adjudication
**Cross-References:** - [PFRPG-MassCombat-Unit-Generator.md](PFRPG-MassCombat-Unit-Generator.md)
- [PFRPG-MassCombat-Logistics-Matrix.md](PFRPG-MassCombat-Logistics-Matrix.md)
- [PFRPG-Glossary.md](PFRPG-Glossary.md)

---

## SECTION 1: STRONGHOLD CONSTRUCTION [STR-CON]

Characters may invest in permanent fortifications to secure land and influence.

### [Rule-STR-01.1: The Construction Pipeline]
1. **Site Clearing:** 1 Hex (8 miles) must be purged of `[Monsters]`. Resolve via standard Encounters.
2. **Design & Engineering:** Requires 1 **Master Builder** (Specialist).
3. **Construction Time:** 1 Week of labor per 500gp value.

### [Rule-STR-01.2: Structure Cost & Defense Matrix]
Costs are scaled to the PFRPG 100gp standard. 

| Component | Cost (gp) | Build Time | PFRPG Mechanic |
| :--- | :--- | :--- | :--- |
| **Keep (Stone)** | 5,000 | 10 Weeks | Deflect x3; Houses 100 troops |
| **Tower (Stone)** | 2,000 | 4 Weeks | Deflect x2; Elevation Bonus (+1 CS) |
| **Wall (Stone)** | 500 | 1 Week | Deflect x2 (per 100ft section) |
| **Wall (Wood)** | 100 | 2 Days | Deflect x1 (per 100ft section) |
| **Gatehouse** | 1,000 | 2 Weeks | Strength Task (6) to breach |

**Metadata:** `[Construction]` `[Deflect]` `[Economy]`

---

## SECTION 2: DOMINION ADMINISTRATION [STR-ADM]

### [Rule-STR-02.1: The Monthly Turn Order]
1. **Growth:** Roll 1d6. On a **6**, +10 families settle in the hex.
2. **Revenue:** Total families x 1gp (Standard Tax).
3. **Resource Check:** Roll **Wisdom Task (4+)** to find extra resources (Mines/Forests).
   - **Success:** +d6 x 100gp revenue.
4. **Confidence Check:** Determine if the people are happy (See STR-CON-04).

### [Rule-STR-02.2: Dominion Scaling]
- **Small (1-2 Hexes):** Baron/Baroness level. 
- **Large (3-10 Hexes):** Duke/Duchess level. 
- **Kingdom (10+ Hexes):** King/Queen level. Requires **Diplomacy Task (6)** to maintain.

**Metadata:** `[Dominion]` `[Time-Keeping]` `[Growth]`

---

## SECTION 3: THE CONFIDENCE SYSTEM [STR-CONF]

Confidence Level (CL) represents the loyalty of your subjects to the Ruler.

### [Rule-STR-03.1: The Confidence Roll]
Conducted once every 3 months (Quarterly).
**Mechanic:** **Charisma Task Roll (Average 4+)**.

| Modifier | Condition |
| :--- | :--- |
| **-1 Difficulty** | Held a Grand Festival (Cost: 500gp) |
| **-1 Difficulty** | Successful defense against Raid |
| **+1 Difficulty** | High Taxes (>10gp/family/year) |
| **+2 Difficulty** | Army is currently unpaid |
| **+1 Difficulty** | Ruler absent for >1 month |

### [Rule-STR-03.2: Confidence Thresholds]
- **Success:** Stable. Income is 100%.
- **Failure:** Restless. Income is 50%. Next CL roll is Tough (5+).
- **Natural 1:** Rebellion. A Militia unit [MC-BASE-01.2] attacks the Stronghold.

**Metadata:** `[Loyalty]` `[Political]` `[Charisma]`

---

## SECTION 4: DOMINION SPECIALISTS [STR-SPEC]

Essential NPCs required to manage large-scale domains.

| Specialist | Cost/Mo | Mechanical Benefit |
| :--- | :--- | :--- |
| **Castellan** | 200gp | Can perform Confidence Rolls using their own Intelligence. |
| **Magistrate** | 100gp | Reduces Crime. Grants a [Heroic Reroll] on Growth checks. |
| **Tax Provost** | 50gp | Income +10%, but increase CL Difficulty by +1. |
| **Spy Master** | 150gp | Reveal enemy Troop movements 1 week in advance. |

**Metadata:** `[NPCs]` `[Specialists]` `[Buffs]`

---

## SECTION 5: DOMINION EVENTS TABLE [STR-EVNT]

Roll 1d6 at the start of each month to determine the "State of the Realm."

1. **Plague/Famine:** Growth -20 families; Confidence check immediately at Tough (5+).
2. **Banditry:** Trade revenue is 0. Requires clearing via Combat.
3. **Peaceful Month:** No special effects.
4. **Trade Boom:** Income x2 for this month.
5. **Wandering Monster:** A Monster unit threatens the border.
6. **Noble Visit:** Potential for Alliance. Make a **Charisma Task (5+)** to gain a military ally.

---

### MASTER DOMINION INDEX
- **Stronghold Costs:** [STR-CON-01.2]
- **Taxation Logic:** [STR-ADM-02.1]
- **Rebellion Trigger:** [STR-CONF-03.2]
- **Specialist Hires:** [STR-SPEC-04]

**End of Stronghold Expansion.**