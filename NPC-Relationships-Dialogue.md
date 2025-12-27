# POCKET FANTASY RPG - NPC RELATIONSHIP MAPS & DIALOGUE TREES
## Complete Interaction Framework

**Type:** Game Data - NPC Systems  
**Status:** Production Ready - v1.0  
**Updated:** December 19, 2025  
**Purpose:** Define all NPC relationships, personality archetypes, dialogue trees, and interaction mechanics

---

## RELATIONSHIP SYSTEM ARCHITECTURE

### Relationship Matrix Model

```
RELATIONSHIP_ENTRY:
{
  "relationship_id": "REL_001",
  "npc_1_id": "NPC_ELD_ALW_001",
  "npc_2_id": "NPC_ELD_TOR_001",
  "npc_1_name": "Merchant Aldwin",
  "npc_2_name": "Torvin Swiftfoot",
  "relationship_type": "MENTOR|FRIEND|RIVAL|ROMANTIC|FAMILY|ALLY|ENEMY|NEUTRAL",
  "relationship_strength": 0.95,        // 0.0 (hostile) to 1.0 (devoted)
  "history": "Working together for 8 years",
  "shared_interests": ["TRAVEL", "PROFIT", "SAFETY"],
  "conflict_history": "Minor disagreements, always resolved",
  "recent_events": ["Successful Kilhel trade", "New route scouting"],
  "trust_level": 0.90,                  // How much one trusts the other
  "dependency": "MUTUAL",               // Who needs whom
  "interaction_frequency": "DAILY",
  "communication_style": "DIRECT",      // How they interact
  "last_interaction": "Year 5, Month 3, Day 14, 09:00 AM",
  "next_scheduled": "Year 5, Month 3, Day 14, 10:00 AM"
}
```

---

## ELDRIDGE TRADE CONSORTIUM - RELATIONSHIP NETWORK

### Primary Relationships

#### REL_ELD_001: Aldwin ↔ Torvin (Mentor-Student Bond)
```
relationship_type: MENTOR
relationship_strength: 0.95 (DEVOTED)
history: 8 years working together, Torvin started as junior scout
current_dynamic: Father-son like relationship, deep trust
shared_interests: TRADE_SUCCESS, CREW_SAFETY, ROUTE_OPTIMIZATION

INTERACTION_STYLE:
- Aldwin initiates: "Torvin, I need your assessment of the southern route"
- Torvin responds: "The mud's worse this season, but passable if we move early"
- Pattern: Professional respect with personal warmth
- Humor: Gentle teasing about Torvin's fiddle playing
- Conflict resolution: Direct discussion, never escalates

DIALOGUE_TREE_SAMPLE:
├─ "Aldwin, shall we depart for Kilhel?"
│  ├─ "Yes, the weather clears after dawn" [Torvin scouts ahead]
│  ├─ "Not yet, the road needs checking" [Delay 2 hours, send scouts]
│  └─ "We wait for full moon next week" [Extended rest, crew morale boost]
└─ "I worry about the new route west"
   ├─ "It's a good opportunity, let's plan carefully" [Plan sequence]
   ├─ "The risk is too high, stick to known paths" [Maintain status quo]
   └─ "Send scouts first, we'll evaluate after" [Compromise]

MORALE_EFFECTS:
- When together: Both +0.05 morale (mutual confidence)
- If separated: No penalty (secure relationship)
- If conflict: Temporary -0.10 morale (rare, heals quickly)

DEPENDENCY: MUTUAL
- Aldwin: Relies on Torvin's scouting intelligence (85%)
- Torvin: Relies on Aldwin's leadership & strategy (80%)
```

#### REL_ELD_002: Aldwin ↔ Hela (Allied Leaders)
```
relationship_type: ALLY
relationship_strength: 0.85 (STRONG)
history: 6 years working together, hired by Aldwin
current_dynamic: Professional partnership, mutual respect
shared_interests: CREW_SAFETY, SECURITY, REPUTATION

INTERACTION_STYLE:
- Formality: Professional, uses rank/titles occasionally
- Aldwin: "Captain Ironhand, your assessment?"
- Hela: "The southern route has increased bandit activity, recommend escort"
- Pattern: Direct, tactical, focused on problems/solutions
- Humor: Dark/military humor, rare but appreciated
- Conflict: Will argue strategy passionately, but accepts Aldwin's final call

DIALOGUE_TREE_SAMPLE:
├─ "Merchant Aldwin, I recommend military escort for this run"
│  ├─ "Agreed, contact Captain Thorne for details" [Hire militia]
│  ├─ "Costs too much, we'll proceed unescorted" [Increase risk]
│  └─ "Send extra scouts instead of militia" [Compromise]
└─ "I've noticed suspicious activity near Millbrook"
   ├─ "Investigate, but don't engage directly" [Gather intel]
   ├─ "Let's hire the Crimson Blades for investigation" [Professional help]
   └─ "Probably nothing, stay alert but proceed normally" [Ignore warning]

MORALE_EFFECTS:
- When together: +0.03 morale (security confidence)
- If Hela leaves caravan: -0.05 morale (crew feels less safe)
- If conflict: -0.08 morale (command structure destabilized)

DEPENDENCY: ASYMMETRIC
- Aldwin depends on Hela: 75% (security crucial)
- Hela depends on Aldwin: 50% (job security only)
```

#### REL_ELD_003: Torvin ↔ Hela (Professional Respect)
```
relationship_type: ALLY
relationship_strength: 0.70 (GOOD)
history: 6 years working same caravan, occasional coordination
current_dynamic: Respectful colleagues, different roles
shared_interests: CREW_WELFARE, CARAVAN_SUCCESS

INTERACTION_STYLE:
- Formality: Casual/friendly, occasional teasing
- Torvin: "Captain, the scouts report clear roads ahead"
- Hela: "Good work, Swiftfoot. We'll move out in an hour"
- Pattern: Practical, information-focused
- Humor: Torvin sometimes plays fiddle, Hela pretends to be annoyed (isn't)
- Conflict: None historically, different spheres of responsibility

DIALOGUE_TREE_SAMPLE:
├─ "Torvin reports goblins two miles south"
│  ├─ "We take the western bypass route" [Avoid danger]
│  ├─ "Send scouts to engage and report" [Gather intelligence]
│  └─ "Prepare defenses, we go through" [Confrontation]
└─ "Your scouts nearly missed that merchant caravan"
   ├─ "You're right, I'll drill them harder" [Self-criticism, improvement]
   ├─ "That's the risk of scouts, they're not perfect" [Acceptance]
   └─ "Your guards should have spotted them first" [Deflect criticism]

MORALE_EFFECTS:
- When together: +0.02 morale (coordination visible)
- Conflict: -0.05 morale (command structure confusion)

DEPENDENCY: SITUATIONAL
- Torvin depends on Hela: 40% (tactically independent)
- Hela depends on Torvin: 70% (needs scouting intel)
```

### Secondary Relationships (Merchant Team)

#### REL_ELD_004: Helena ↔ Marcus (Senior-Junior Merchant)
```
relationship_type: MENTOR
relationship_strength: 0.75 (GOOD)
history: 3 years together, Marcus learns negotiation from Helena
current_dynamic: Teaching relationship, patient mentor with ambitious student
shared_interests: PROFITABLE_TRADES, MARKET_KNOWLEDGE, KILHEL_SUCCESS

DIALOGUE_TREE_SAMPLE:
├─ "Helena, how do you negotiate with Kilhel metalwork buyers?"
│  ├─ "Start 20% above your bottom price, let them counter" [Teach tactics]
│  ├─ "Never negotiate, firm prices or no deal" [Hard approach]
│  └─ "Read the buyer, adjust strategy per person" [Adaptive teaching]
└─ "I think we're underselling the wines"
   ├─ "Good instinct, let's research market rates" [Encouragement & improvement]
   ├─ "You're overthinking, stick to current prices" [Conservative]
   └─ "You're right, let's raise prices 10%" [Confidence boost]

MORALE_EFFECTS:
- Success together: +0.04 morale (mentor-student bond)
- Marcus failure: -0.03 morale (disappointment)
- Marcus success: +0.06 morale (pride in student)

DEPENDENCY: ASYMMETRIC
- Marcus depends on Helena: 85% (learning crucial)
- Helena depends on Marcus: 20% (just an employee)
```

#### REL_ELD_005: Thorin ↔ Lyssa (Veteran-Recruit Guard Bond)
```
relationship_type: ALLY (DEVELOPING FRIENDSHIP)
relationship_strength: 0.60 (DEVELOPING)
history: 1.5 years together, Lyssa joined as recruit
current_dynamic: Gruff veteran teaching young guard, protective mentorship
shared_interests: CREW_PROTECTION, COMBAT_READINESS

DIALOGUE_TREE_SAMPLE:
├─ "Thorin, was that ambush scenario too intense?"
│  ├─ "Good, you need to know real fear. You did well" [Tough love praise]
│  ├─ "Yeah, ease up on the recruit" [Softer approach]
│  └─ "Not nearly intense enough. Goblins are worse" [Veteran perspective]
└─ "I want to learn your fighting style"
   ├─ "I'll teach you, but it's years of practice" [Commitment]
   ├─ "You're not ready yet, focus on basics" [Measured]
   └─ "Find your own style, don't copy me" [Independence push]

ROMANTIC_SUBPLOT:
- Lyssa: Slight crush on Thorin (one-sided, unspoken)
- Thorin: Treats as younger sister (unaware of crush)
- Future potential: If romance develops, would create relationship drama
- NPC_HOOK: Player can facilitate/disrupt romance subplot

MORALE_EFFECTS:
- Good interaction: +0.03 morale (squad bonding)
- Tension: -0.04 morale (relationship confusion)
```

### Handler & Support Network

#### REL_ELD_006: Willem ↔ Kess (Animal Handler Dynamics)
```
relationship_type: ALLY
relationship_strength: 0.65 (DEVELOPING)
history: 8 months together, Kess is junior handler learning from Willem
current_dynamic: Patient mentor with anxious student who struggles with confidence
shared_interests: ANIMAL_WELFARE, CAMP_OPERATIONS

DIALOGUE_TREE_SAMPLE:
├─ "Why is the mule limping?"
│  ├─ "Check the hoof for stones, clean if needed" [Teaching]
│  ├─ "Just rest it, it'll pass" [Dismissive]
│  └─ "That's your job to check, Kess. Learn to diagnose" [Criticism]
└─ "I'm not good with animals"
   ├─ "You're better than you think, practice builds confidence" [Encouragement]
   ├─ "Some people aren't cut out for this work" [Discouragement]
   └─ "That's fine, focus on equipment instead" [Redirection]

COMPETENCY_NOTE:
- Kess struggles: Occasionally forgets protocols, animals sense anxiety
- Willem's role: Patient teaching, but sometimes frustrated
- Opportunity: Character can improve under good management or decline

MORALE_EFFECTS:
- Positive interactions: +0.02 morale (care visible)
- Kess mistake: -0.02 morale (animal condition concerns)
```

#### REL_ELD_007: Magda ↔ Thomas (Cook-Medic Partnership)
```
relationship_type: FRIEND
relationship_strength: 0.85 (STRONG)
history: 5 years together, comfortable working partnership
current_dynamic: Easy-going friendship with dry humor
shared_interests: CREW_WELLNESS, CAMP_COMFORT, PRACTICAL_JOKES

DIALOGUE_TREE_SAMPLE:
├─ "Magda, the crew loved tonight's stew"
│  ├─ "That's because I poisoned the vegetables" [Dry humor]
│  ├─ "Happy to feed them well" [Warm response]
│  └─ "It's just food, don't make a big deal" [Dismissive]
└─ "Thomas, we're out of medical supplies"
   ├─ "We'll improvise with Magda's herbs" [Collaboration]
   ├─ "Should have planned better" [Criticism]
   └─ "Use what we have, we'll resupply at next stop" [Practical]

MORALE_EFFECTS:
- Good meals + good health: +0.05 morale (basic needs met)
- Illness + poor food: -0.08 morale (misery compounds)

CREW_DEPENDENCY: HIGH
- Entire crew depends on both (90%+ for crew morale)
- Their partnership stability crucial to overall caravan happiness
```

---

## PERSONALITY ARCHETYPES & INTERACTION PATTERNS

### Archetype 1: The Professional (Merchant Aldwin, Captain Mareck)

**Traits:**
- Goal-oriented, pragmatic, emotionally controlled
- Values: Order, competence, loyalty
- Motivation: Success, reputation, providing for others
- Communication: Direct, clear, minimal small talk
- Decision-making: Risk assessment, long-term thinking

**Dialogue Patterns:**
```
Initiator: "We need to discuss the route situation"
Response: "Agreed. What are the options?"
Pattern: Problem → Analysis → Solution
Conflict: "I disagree with that approach, here's why..."
Agreement: "That makes sense. Let's proceed with that plan"
```

**Interaction Triggers:**
- Discuss business: Always receptive
- Personal questions: Polite but deflective
- Emergencies: Immediately focused
- Celebration: Acknowledges it, quickly returns to work
- Conflict: Addresses directly, seeks resolution

---

### Archetype 2: The Scout/Optimist (Torvin Swiftfoot, Lyssa)

**Traits:**
- Adaptable, energetic, forward-looking
- Values: Freedom, experiences, new opportunities
- Motivation: Adventure, skill mastery, camaraderie
- Communication: Enthusiastic, uses humor, storytelling
- Decision-making: Opportunity-focused, sometimes impulsive

**Dialogue Patterns:**
```
Initiator: "I found a shortcut that saves half a day!"
Response: "That sounds risky. Tell me more"
Pattern: Discovery → Enthusiasm → Persuasion
Conflict: "Come on, don't be so cautious!"
Agreement: "Excellent! When do we try it?"
```

**Interaction Triggers:**
- New routes/opportunities: Extremely receptive
- Challenges: Sees them as chances to prove capability
- Rest periods: Entertains crew (fiddle, stories, games)
- Danger: Alert and responsive (training kicks in)
- Failure: Quickly moves past it, learns for next time

---

### Archetype 3: The Protector (Hela Ironhand, Bromak)

**Traits:**
- Duty-oriented, loyal, cautious about safety
- Values: Honor, protection, strength
- Motivation: Protecting others, proving worth, respect
- Communication: Authoritative, few wasted words
- Decision-making: Risk-averse for team safety

**Dialogue Patterns:**
```
Initiator: "I recommend we don't travel that route"
Response: "What specific dangers have you identified?"
Pattern: Concern → Justification → Protective action
Conflict: "I won't allow unnecessary risk"
Agreement: "Your caution is warranted. We proceed safely"
```

**Interaction Triggers:**
- Threats detected: Immediately activated
- Team safety questioned: Defensive
- Someone in danger: Priority override
- Respect shown: Warm response (rare but genuine)
- Challenge to authority: Stands firm but reasonable

---

### Archetype 4: The Learner (Marcus, Kess, Jonas)

**Traits:**
- Ambitious, enthusiastic, sometimes insecure
- Values: Growth, acceptance, competence
- Motivation: Learning, proving themselves, belonging
- Communication: Questioning, deferential, eager
- Decision-making: Seeks guidance, wants to do it right

**Dialogue Patterns:**
```
Initiator: "How do I handle this situation?"
Response: Depends on mentor figure
Pattern: Question → Teaching/Guidance → Practice
Conflict: "I'm sorry, I'll do better next time"
Agreement: "Thank you, I'll remember that"
```

**Interaction Triggers:**
- Offered training: Enthusiastic engagement
- Mistakes: Self-critical, seeks correction
- Success: Looks for validation
- New challenges: Either excited or anxious
- Criticism: Takes it hard initially, then improves

---

### Archetype 5: The Heart (Magda, Felix, Elena)

**Traits:**
- Empathetic, nurturing, people-focused
- Values: Connection, wellness, community
- Motivation: Helping others, belonging, making difference
- Communication: Warm, supportive, remembers personal details
- Decision-making: Considers impact on people

**Dialogue Patterns:**
```
Initiator: "How is everyone doing?"
Response: Genuinely interested, listens actively
Pattern: Caring question → Personal connection → Support offered
Conflict: "Let's talk this through and find a solution we're all comfortable with"
Agreement: "I'm so glad we see eye to eye"
```

**Interaction Triggers:**
- Someone hurting: Immediately attentive
- Conflict brewing: Works toward resolution
- Celebrations: Enthusiastically participates
- New person: Makes them feel welcomed
- Disharmony: Personally distressed, works to heal

---

## NPC RELATIONSHIP TRACKING SYSTEM

### Aldwin's Relationship Web (Complete)

```
Aldwin ↔ Torvin: 0.95 (DEVOTED) - Daily interaction, mentor bond
Aldwin ↔ Hela: 0.85 (STRONG) - Professional respect, allied leaders
Aldwin ↔ Helena: 0.80 (GOOD) - Senior merchant, trusted subordinate
Aldwin ↔ Marcus: 0.70 (DEVELOPING) - Young merchant, potential
Aldwin ↔ Thorin: 0.75 (GOOD) - Guard captain, mutual respect
Aldwin ↔ Lyssa: 0.65 (DEVELOPING) - Young guard, protective interest
Aldwin ↔ Willem: 0.70 (GOOD) - Animal handler, values his care
Aldwin ↔ Petra: 0.75 (GOOD) - Logistics coordinator, competent
Aldwin ↔ Kess: 0.60 (NEUTRAL) - Junior handler, lacks confidence
Aldwin ↔ Magda: 0.80 (GOOD) - Cook, appreciates her care
Aldwin ↔ Thomas: 0.75 (GOOD) - Medic, professional respect

TOTAL_INTERNAL_RELATIONSHIPS: 11
AVERAGE_STRENGTH: 0.74 (GOOD - stable caravan dynamic)
```

### Torvin's Relationship Web (Complete)

```
Torvin ↔ Aldwin: 0.95 (DEVOTED) - Father figure, mentor, deep loyalty
Torvin ↔ Hela: 0.70 (GOOD) - Colleague, mutual respect
Torvin ↔ Helena: 0.60 (NEUTRAL) - Different roles, cordial
Torvin ↔ Marcus: 0.65 (DEVELOPING) - Young merchant, sharing routes intel
Torvin ↔ Thorin: 0.75 (GOOD) - Guard coordination on scouts
Torvin ↔ Lyssa: 0.70 (GOOD) - Teaches her tracking skills
Torvin ↔ Willem: 0.70 (GOOD) - Coordinates animal rest stops
Torvin ↔ Magda: 0.80 (GOOD) - Appreciates her camp cooking
Torvin ↔ Thomas: 0.65 (NEUTRAL) - Cordial but different circles

TOTAL_INTERNAL_RELATIONSHIPS: 9
AVERAGE_STRENGTH: 0.72 (GOOD - well-integrated)
```

---

## DYNAMIC RELATIONSHIP EVENTS

### Event Type 1: Conflict & Resolution

```
CONFLICT_SCENARIO_1: "Kess's Mistake Causes Animal Injury"

TRIGGER: Kess forgets to check wagon maintenance, wheel breaks mid-journey
IMMEDIATE_EFFECTS:
- Kess: -0.15 morale (guilt, embarrassment)
- Willem: -0.10 morale (disappointed in student)
- Aldwin: -0.05 morale (operational disruption)
- Crew: -0.03 morale (delay annoyance)

RELATIONSHIP_IMPACTS:
- Kess ↔ Willem: 0.65 → 0.55 (relationship strained)
- Kess ↔ Aldwin: 0.60 → 0.50 (under scrutiny)

RESOLUTION_PATHS:

PATH_A: "Aldwin privately mentors Kess on responsibility"
- Kess ↔ Aldwin: 0.50 → 0.65 (restored through understanding)
- Willem ↔ Aldwin: 0.70 → 0.75 (appreciation for leadership)
- Kess ↔ Willem: 0.55 → 0.70 (reconciliation through Willem's forgiveness)
- Morale recovery: +0.08 (learning opportunity, team solidarity)
- OUTCOME: Growth arc for Kess, stronger team bonds

PATH_B: "Aldwin harshly reprimands Kess"
- Kess ↔ Aldwin: 0.50 → 0.35 (resentment builds)
- Willem ↔ Aldwin: 0.70 → 0.60 (disagrees with harshness)
- Kess ↔ Willem: 0.55 → 0.60 (mentor defends student)
- Morale recovery: +0.02 (forced march, lingering tension)
- OUTCOME: Resentment festers, potential for future conflict

PATH_C: "Kess is dismissed from caravan"
- Kess: -0.30 morale (shame, job loss)
- Willem: -0.20 morale (feels he failed as mentor)
- Lyssa: -0.10 morale (loss of friend)
- Crew: -0.05 morale (unsettled by harsh justice)
- OUTCOME: Ripple effects through organization, low morale

PLAYER_OPPORTUNITY:
- Observe conflict resolution style of leadership
- Influence outcome through intervention
- Build reputation with crew based on chosen path
```

---

### Event Type 2: Bonding & Connection

```
BONDING_SCENARIO: "Successful Kilhel Trade & Celebration"

TRIGGER: Eldridge caravan completes highly profitable Kilhel trade cycle
IMMEDIATE_EFFECTS:
- Aldwin: +0.15 morale (profitable venture)
- All crew: +0.10 morale (share in success, bonus pay)
- Relationships: Universally +0.05 (shared success)

CELEBRATION_SEQUENCE:

STAGE_1: "Victory Feast at Crossroads"
- Magda: +0.20 morale (pride in special meal)
- Thomas: Provides extra rations/medicines
- Torvin: Plays fiddle (entertainment)
- Whole crew: Social bonding +0.08

STAGE_2: "Aldwin Distributes Bonus Payments"
- Each crew member: +0.15 morale (recognition of effort)
- Economic boost: Each person gets 50 gp bonus
- Loyalty increase: All relationships +0.10

STAGE_3: "Next Plans Announced"
- Aldwin: "Plan for new opportunity - western expansion"
- Torvin: Excites about scouting western route
- Hela: Cautious but supportive
- Crew: Energized for next venture
- Morale: +0.12 overall (purpose & direction)

RELATIONSHIP_CHANGES:
- Aldwin ↔ Torvin: 0.95 → 0.98 (peak partnership)
- Aldwin ↔ Hela: 0.85 → 0.90 (trust deepens)
- All internal: +0.08 average (team coherence)

OUTCOME: Caravan enters "golden period" - high morale, strong bonds, ready for challenges

PLAYER_OPPORTUNITY:
- Witness positive team dynamics
- Understand what success looks like in caravan economy
- Build reputation by being part of success
```

---

## DIALOGUE TREE FRAMEWORK

### Aldwin Response Options (Dialogue Choice Consequences)

```
SCENARIO: "Torvin suggests risky new western route"

DIALOGUE_CHOICE_1: "Absolutely, let's scout it immediately"
├─ Aldwin approval: +0.05 morale
├─ Torvin reward: +0.10 morale (validated)
├─ Hela concern: -0.05 morale (risk uncomfortable)
├─ Risk introduced: 15% encounter chance on new route
└─ Long-term: Possible discovery of lucrative new market

DIALOGUE_CHOICE_2: "That's too risky, we stick to known routes"
├─ Aldwin caution: Reasonable
├─ Torvin frustration: -0.08 morale (idea rejected)
├─ Hela approval: +0.05 morale (safety prioritized)
├─ Risk: Missed opportunity
└─ Long-term: Safe but potentially stagnant

DIALOGUE_CHOICE_3: "Let's send scouts to evaluate, then decide"
├─ Aldwin wisdom: Balanced approach
├─ Torvin acceptance: +0.04 morale (compromise)
├─ Hela approval: +0.03 morale (careful)
├─ Cost: 1 day delay for scouting
├─ Risk: 8% encounter chance (safer alternative route)
└─ Long-term: Informed decision, best possible outcome

DIALOGUE_CHOICE_4: "I'll think about it" (Delay decision)
├─ Aldwin hesitation: -0.03 morale (indecision visible)
├─ Torvin frustration: -0.12 morale (ignored)
├─ Hela neutral: No change (accepts caution)
├─ Crew concern: -0.02 morale (leadership questioned)
├─ Duration: Decision pending (creates tension)
└─ Long-term: Affects trust in leadership
```

---

## CROSSROADS MILITIA - RELATIONSHIP NETWORK

### Captain Mareck's Military Hierarchy

```
Mareck ↔ Sergeant Kaine: 0.85 (STRONG - chain of command)
Mareck ↔ Guard Petra: 0.75 (GOOD - veteran scout trusted)
Mareck ↔ Guard Darius: 0.80 (GOOD - experienced fighter)
Mareck ↔ Guard Elian: 0.70 (DEVELOPING - elf, culturally different)
Mareck ↔ Guard Thom: 0.75 (GOOD - tracking specialist)
Mareck ↔ Brant: 0.70 (GOOD - quartermaster, logistics)
Mareck ↔ Helix: 0.60 (NEUTRAL - rare interaction, different roles)
Mareck ↔ Jonas: 0.65 (DEVELOPING - recruit, still proving himself)
Mareck ↔ Mira: 0.50 (DISTANT - younger, struggles with authority)

MILITARY_STRUCTURE: Clear hierarchy, respect-based

MORALE_DYNAMICS:
- High confidence in captain: +0.08 morale
- Orders followed successfully: +0.05 morale
- Conflict with captain: -0.12 morale (military obedience culture)
- Extended deployment: Slow -0.02 morale decay (normal military exhaustion)
```

---

## SETTLERS' CARAVAN - FAMILY DYNAMICS

### Torvin's Leadership Web (Different from scout Torvin)

```
Guild_Master_Torvin ↔ Elena: 0.90 (STRONG - co-leaders)
Guild_Master_Torvin ↔ Gareth: 0.85 (STRONG - logistics partner)
Guild_Master_Torvin ↔ Kess_Scout: 0.75 (GOOD - scout trust)
Guild_Master_Torvin ↔ Aldric: 0.80 (GOOD - family patriarch)
Guild_Master_Torvin ↔ Hallor: 0.75 (GOOD - builder patriarch)
Guild_Master_Torvin ↔ Dermot: 0.75 (GOOD - craftsman patriarch)

FAMILY_RELATIONSHIPS:
- Aldric ↔ Marta: 0.95 (STRONG - married 22 years)
- Hallor ↔ Betrice: 0.90 (STRONG - married 24 years)
- Dermot ↔ Fiona: 0.85 (GOOD - married 20 years)

INTER_FAMILY_DYNAMICS:
- Aldric ↔ Hallor: 0.70 (GOOD - land competition for future)
- Aldric ↔ Dermot: 0.75 (GOOD - trade partnerships planned)
- Hallor ↔ Dermot: 0.72 (GOOD - construction cooperation)

CHILDREN_RELATIONSHIPS:
- Farmwright children ↔ Stoneworker children: 0.65 (DEVELOPING - will marry off)
- Multiple romantic subplots: Potential future marriages/conflicts

MORALE_DYNAMICS:
- Families bonded: +0.15 morale (collective unity)
- Family conflict: -0.20 morale (internal strife)
- Successful camp: +0.10 morale (team accomplishment)
- Child illness/injury: -0.25 morale (parental concern priority)
```

---

## SWIFT COURIER - PERSONAL BOND

### Kael ↔ Isla (Married Couple Business Partners)

```
relationship_type: ROMANTIC + BUSINESS
relationship_strength: 0.98 (DEVOTED - married 5 years)
shared_interests: BUSINESS_SUCCESS, RELIABILITY, ADVENTURE

PROFESSIONAL_DYNAMIC:
- Work relationship: Seamless coordination
- Both initiate decisions: Consensus style
- Conflict handling: Discuss privately, present united front
- Backup planning: Each knows other's role perfectly

DIALOGUE_SAMPLE:
├─ Kael: "The Crossroads militia report bandits north"
├─ Isla: "We go south through meadow route instead"
├─ Both: Decision made, no discussion needed
└─ EFFICIENCY: Fastest response time among all caravans

PERSONAL_DYNAMIC:
- Daily check-in: Private conversation about personal matters
- Concern for safety: Each worries about the other
- Support after stress: Comfort each other after difficult deliveries
- Romance: Maintained despite 5 years (small gestures, inside jokes)

MORALE_EFFECTS:
- Couple together: +0.08 morale (inspiration to crew)
- One separated: -0.05 morale (emotional distress visible)
- Couple conflict (rare): -0.20 morale (crew extremely concerned)

DEPENDENCY: EXTREME
- Each depends on other: 95%+ (life & business intertwined)
- Separation would likely dissolve business
- Threat to one is threat to both

NPC_SUBPLOT_OPPORTUNITY:
- "What if one is injured/captured?" - Dramatic tension hook
- "Marriage strain from overwork" - Relationship challenge
- "Expansion creating distance" - Needs to hire more staff
```

---

## CRIMSON BLADES - PARTY DYNAMICS

### Darius Leadership Web

```
Darius ↔ Lyssa: 0.80 (GOOD - veteran/scout team)
Darius ↔ Bromak: 0.85 (STRONG - complementary roles, mutual respect)
Darius ↔ Thara: 0.75 (GOOD - mage support, trust in magic)
Darius ↔ Kess: 0.70 (DEVELOPING - barbarian sometimes reckless)
Darius ↔ Felix: 0.80 (GOOD - healer critically valued)

PARTY_COMBAT_DYNAMICS:
- Battle-tested: High trust in each other's abilities
- Tactics: Practiced maneuvers, understanding of roles
- Emergency response: Automatic adjustment without communication
- Morale in combat: +0.12 morale (trained confidence)

PERSONAL_DYNAMICS:
- Bonded through adversity: Stronger than typical team
- Inside jokes: References to past successful contracts
- Personal awareness: Know each other's fears, triggers
- Loyalty: Would follow Darius into extreme danger

RELATIONSHIP_STRENGTHS:
- Individual competence: Each skilled in role (95%+)
- Team coordination: Perfect sync in practiced situations (95%+)
- Morale stability: Rarely drops below 0.70 (veteran experience)
- Trust level: 0.90+ average (critical for adventuring party)

MORALE_EFFECTS:
- Victory: +0.20 morale (combat confidence peak)
- Defeat: -0.15 morale (but recovers faster than other groups)
- Injury to party member: -0.08 morale (concern for teammate)
- Payment received: +0.10 morale (validation of worth)

HIDDEN_CONFLICTS:
- Kess: Sometimes pushes too hard (recklessness concern)
- Thara: Questions morality of some contracts (ethics tension)
- Felix: Tired of mercenary life (future departure risk)
- These underlying tensions not visible to outsiders
```

---

## NPC INTERACTION MECHANICS

### "Trust Economy" System

Every NPC has relationship "currency" with other NPCs:

```
TRUST_BANK:
- Starting trust: Determined by history + archetype
- Deposits: Positive interactions, kept promises, successful ventures
- Withdrawals: Failures, broken promises, conflicts, ignored advice
- Interest: Time with no interaction slowly decays relationship

EXAMPLE - Aldwin & Torvin:
- Starting: 0.90 (long history)
- Day 1: Successful scouting report: +0.02 → 0.92
- Day 2: Warning about weather (Torvin right): +0.03 → 0.95
- Day 3: Conflict over risky route: -0.05 → 0.90
- Day 4-7: No interaction: Slow decay -0.01/day → 0.86
- Day 8: Aldwin publicly praises Torvin: +0.08 → 0.94
```

### "Influence Points" System

NPCs affect each other's decisions based on relationship strength:

```
EXAMPLE - Torvin Proposes New Route:

Aldwin's Decision Factors:
- Torvin's influence: 0.95 × 0.50 = 0.475 (heavily weighted)
- Hela's influence: 0.85 × 0.35 = 0.297 (secondary)
- Marcus's influence: 0.70 × 0.05 = 0.035 (minimal)
- Aldwin's independence: 0.20 (personal preference)

TOTAL INFLUENCE SCORE: 0.807
DECISION_LIKELIHOOD: High probability (>0.70) = YES to route

If Hela had stronger influence (0.95 instead of 0.85):
- New score: 0.820
- Still YES, but Aldwin would ask more safety questions
- Compromise: Send scouts first (middle ground)
```

---

## DIALOGUE CONSEQUENCE TRACKING

### Sample Tracked Decisions

```
DECISION_LOG - MERCHANT ALDWIN:

1. Year 5, Month 3, Day 10: Chosen PATH_C "New route scouting"
   └─ Consequence: Torvin +0.10 morale, Hela -0.05 morale

2. Year 5, Month 3, Day 12: Chosen "Harsh reprimand for Kess"
   └─ Consequence: Kess -0.25 morale, Willem -0.15 morale

3. Year 5, Month 3, Day 14: Chosen "Distribute bonuses fairly"
   └─ Consequence: All crew +0.15 morale, Aldwin reputation +0.05

REPUTATION_SCORE: 0.78
- Known as: Fair but cautious
- NPC_RUMORS: "Aldwin's reliable but risk-averse"
- Player_PERCEPTION: Steady, predictable leader

FUTURE_DIALOGUE_CHANGES:
- Torvin will push harder for adventure (seeking risk balance)
- Hela will trust safety decisions more
- Kess will be hesitant around Aldwin
- Crew will have mixed opinions (fairness vs strictness)
```

---

## NPC PERSONALITY CONVERSATION STARTERS

### What Each NPC Might Say in Downtime

```
MERCHANT_ALDWIN:
"We should discuss our strategy for the next quarter. I'm thinking..."
"Have you noticed the militia seems tense lately?"
"The roads are getting busier. Competition increases."

TORVIN_SCOUT:
"Heard some interesting rumors at the last rest stop!"
"The western route looked promising from the ridge. Should we try it?"
"Anyone want to hear about the time we outran goblins?"

HELA_GUARD:
"I've assigned new watch rotations. Better coverage this way."
"We need to resupply weapons soon. Current stock sufficient for 3 weeks."
"Everyone's weapons need sharpening. I'll do it after camp."

MAGDA_COOK:
"The supplies are low. What shall I make with what we have?"
"Young Kess looked sad today. I made extra stew for him."
"(To Thomas) How's that injury healing? Need more bandages?"

KESS_JUNIOR:
"(Nervous) Did I do the harness correctly this time?"
"I'm sorry about yesterday, I'll do better."
"(To Lyssa) Can you show me that tracking trick again?"

LYSSA_GUARD:
"(To Thorin) Thanks for the combat practice. I'm getting better!"
"(To crew) I spotted fresh rider tracks ahead. Probably couriers."
"Anyone up for some sparring practice after camp?"

FELIX_HEALER:
"(Worried tone) That's the third person asking about the same symptoms."
"Everyone's stress levels seem high. Should we take an extra rest day?"
"My herbs are running low. Hope we can resupply at the next town."

MARCUS_MERCHANT:
"(Eager) Helena showed me how to negotiate metalwork prices better!"
"Should we try selling in a new market? I have some ideas..."
"(To Helena) What would you do if a buyer refused our offer?"

THOMAS_MEDIC:
"(Dry humor) You know it's bad when even Magda is concerned about injuries."
"The water situation is fine for now, but keep an eye on supplies."
"(To Magda) Whatever you put in that stew last night worked. Everyone's healthier."
```

---

## PROCEDURAL DIALOGUE GENERATION RULES

### When NPC Initiates Conversation

```
TRIGGER RULES:

IF Caravan_state = TRAVELING AND travel_progress > 50%:
  → NPC might initiate "How much longer?" conversation
  → Archetype affects tone:
    - Professional: "We should arrive by sunset if speed maintained"
    - Scout: "Maybe we stop at that meadow ahead? Looks nice"
    - Protector: "Road's clear so far, staying vigilant"
    - Learner: "Is this normal? Feels like longer travel"
    - Heart: "Everyone holding up okay? Need a rest?"

IF Recent_Event = Successful_trade:
  → Multiple NPCs will bring it up positively
  → Relationships strengthen automatically
  → Crew morale naturally increases

IF Recent_Event = Member_illness:
  → Heart-types will check on person
  → Professional-types will ensure no performance impact
  → Learners will ask if they can help
  → Protectors will ensure preventative measures

IF Relationship_strength < 0.50:
  → Limited conversation
  → Topics become transactional only
  → No small talk, no jokes
  → Recovery requires positive event

IF Relationship_strength > 0.85:
  → Frequent casual conversation
  → Personal topics emerge
  → Inside jokes develop
  → Higher trust in recommendations
```

---

**NPC RELATIONSHIP SYSTEM COMPLETE**

This framework enables:
✅ Dynamic NPC relationships based on decisions
✅ Personality-driven dialogue variations
✅ Trust economy affecting influence
✅ Consequence tracking for player choices
✅ Organic conversation generation
✅ Realistic team dynamics
✅ Subplot development (romances, conflicts)
✅ Player reputation building through NPC perceptions