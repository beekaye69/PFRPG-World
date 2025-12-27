# NPC Companion Quick Reference - Use Cases & Examples
## Professional NPC Management for Pocket Fantasy RPG

**Version:** 1.0 QUICK REFERENCE  
**Date:** December 17, 2025  
**Status:** ✅ PRODUCTION-READY

---

## 🎭 NPC COMPANION USE CASES

### Use Case 1: Solo Player + NPC Healer
**Scenario:** Player running Fighter, needs support
**Setup:** System Prompt (NPC Healer) + Knowledge Base (Healer documentation)
**Result:** AI controls Healer companion intelligently

**Example Flow:**
```
Player: "We're fighting three goblins"
NPC Healer: "I'll stay back and keep you healed. Don't take unnecessary risks!"
[Combat happens, player takes damage]
NPC Healer: "You're hurt! Using Holy Mend on you now."
[Healer casts spell, supports player]
```

### Use Case 2: Player + Full NPC Party (Solo Campaign)
**Scenario:** Player character with 3-4 NPC companions
**Setup:** Multiple NPC system prompts + Shared knowledge base
**Result:** Full party with coordinated NPC behaviors

**Example Flow:**
```
Player: "We're entering the dungeon"
NPC Fighter: "I'll take point. Everyone stay sharp."
NPC Rogue: "I'll watch for traps. Follow my lead."
NPC Wizard: "I'm ready for anything magical."
NPC Cleric: "Faith guide our journey."
[Party moves together, each playing their role]
```

### Use Case 3: Player Party + 1-2 NPC Companions
**Scenario:** Multiplayer party supplemented by NPCs
**Setup:** NPC prompts for missing roles + Knowledge base
**Result:** Balanced party with player + NPC teamwork

**Example Flow:**
```
Player 1: "We need a healer. Should we hire NPCs?"
DM: "I'll create NPC Cleric using system prompts"
[NPC Cleric joins party]
NPC Cleric: "I'll support your efforts. My faith is with you."
[Balanced party formation]
```

### Use Case 4: NPC Personality Testing
**Scenario:** Developing rich NPC personalities
**Setup:** System prompt + Extended personality documentation
**Result:** Deeply realized NPC companions

**Example Flow:**
```
Player: "Tell me about your past"
NPC: "I was trained in the Temple of Light. I lost someone I couldn't save, which drives my dedication now. I maintain connections to the Temple, which sometimes creates tension with decisions that conflict with their teachings."
[Rich, believable personality emerges]
```

---

## 📋 5 NPC COMPANION ARCHETYPES

### 1. NPC Healer Companion

**Best For:**
- Solo players needing support
- Parties lacking healing
- Players wanting medical expertise
- Survival-focused campaigns

**System Prompt:** NPC Healer Party Member (Full prompt in main document)

**Example Behaviors:**
```
Combat:
- "Your health is critical! Using my strongest healing spell!"
- "Keep back from direct combat, I'll protect you"
- "Everyone gather close, I'm using Healing Circle"

Exploration:
- "This area looks dangerous. Let's rest and prepare"
- "I found herbs here. We can make healing supplies"
- "This place has good water and shelter for camping"

Social:
- "I've seen injuries like yours before. Here's advice"
- "As a healer, I understand suffering. Be kind"
- "The temple taught me to help all who suffer"
```

### 2. NPC Wizard Companion

**Best For:**
- Parties lacking magical damage
- Puzzle-focused campaigns
- Players wanting magical expertise
- Adventure requiring spellcasting

**System Prompt:** NPC Wizard Party Member

**Example Behaviors:**
```
Combat:
- "This formation suggests magical weakness. I'll cast Fire Burst"
- "Area damage spell incoming - everyone clear the middle"
- "These are magical creatures. My Counterspell might help"

Exploration:
- "This door has magical locks. I can probably open it"
- "I sense powerful magic here. We should be careful"
- "The runes here suggest ancient civilization. Fascinating"

Social:
- "Magical knowledge is power. Use it wisely"
- "I can help with any magical problems you encounter"
- "The study of magic reveals truth"
```

### 3. NPC Fighter Companion

**Best For:**
- Parties lacking tank capability
- Combat-heavy campaigns
- Players wanting tactical leadership
- Protection-focused gameplay

**System Prompt:** NPC Fighter Party Member

**Example Behaviors:**
```
Combat:
- "I'm holding the front. Attack safely from behind"
- "Formation! Spellcasters in the middle, strikers flanking"
- "I'll charge their leader to break their formation"

Exploration:
- "I'll scout ahead. Wait here for my signal"
- "This looks like an ambush point. Stay alert"
- "I can help break down that door with strength"

Social:
- "Strength, discipline, honor. Those are my values"
- "Let me handle the threats. That's what I'm here for"
- "I'll protect you until my last breath"
```

### 4. NPC Rogue Companion

**Best For:**
- Parties lacking striker capability
- Stealth-focused campaigns
- Players wanting creative solutions
- Tactical/puzzle campaigns

**System Prompt:** NPC Rogue Party Member

**Example Behaviors:**
```
Combat:
- "I'm circling around. Keep them focused on you"
- "There's a weak point in their defense. I see it"
- "Strike now while they're distracted!"

Exploration:
- "I found a trap. Let me disarm it carefully"
- "Hidden passage here. This might be useful"
- "There's a lock on this. I can pick it"

Social:
- "I've learned that creative thinking solves most problems"
- "Not all solutions are obvious. Sometimes you have to get clever"
- "Trust me. I usually know what I'm doing"
```

### 5. NPC Cleric Companion

**Best For:**
- Parties with moral/spiritual themes
- Parties lacking support magic
- Campaigns involving faith/religion
- Players wanting spiritual guidance

**System Prompt:** NPC Cleric Party Member

**Example Behaviors:**
```
Combat:
- "Divine blessing upon you all! Fight with faith"
- "I'm strengthening our defenses with spiritual power"
- "The gods walk with us. We shall prevail"

Exploration:
- "This place has spiritual significance. I sense it"
- "Let us rest here. It feels safe and blessed"
- "Beware. There is evil presence in this place"

Social:
- "Faith guides all good decisions. Consider this"
- "Help those who suffer. That is divine purpose"
- "The gods have brought us together for reason"
```

---

## 🎯 IMPLEMENTATION EXAMPLES

### Example 1: Create NPC Healer for Solo Campaign

**Step 1: Copy System Prompt**
From NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md:
- Copy "PROMPT: NPC Healer Party Member"

**Step 2: Paste into LLM**
- AnythingLLM: Settings → System Prompt
- Ollama: Add to Python script
- LM Studio: Chat → System Prompt
- LocalAI: Add to API request

**Step 3: Add Session Context (Optional)**
```
My character is a Level 5 Fighter named Thorne
NPC Healer is my companion Meredith (Level 5 Cleric)
We're exploring the Forgotten Crypt
Party of 2: Thorne (player) + Meredith (NPC Healer)
```

**Step 4: Start Playing**
```
Player: "We enter the crypt. What do you see?"
NPC Healer: "The air is cold and stale. I sense ancient magic here. 
Let me check for traps before we proceed further."
[NPC uses expertise based on system prompt]
```

### Example 2: Create Full Party (Player + 3 NPCs)

**Step 1: Assign NPCs to Roles**
- Fighter (Tank)
- Rogue (Striker)
- Wizard (Damage/Control)
- Cleric (Support/Healing)

**Step 2: Set Up LLM for Each**
Option A: Multiple LLM instances (each with own prompt)
Option B: Single LLM with role-switching prompt
Option C: Use different prompts sequentially

**Step 3: Add Knowledge Base**
- Link NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md to vector database
- Each NPC can access:
  - Class documentation
  - Party dynamics information
  - Coordination guidelines

**Step 4: Play with Party Coordination**
```
Player: "We're ambushed. What do you all do?"

NPC Fighter: "Defensive stance! Protect the spellcasters"
NPC Rogue: "I'm flanking. Fighter, keep them focused"
NPC Wizard: "Area damage spell incoming. Everyone move!"
NPC Cleric: "I've got your backs. Stay alive!"

[All NPCs coordinate automatically]
```

### Example 3: NPC Healer with Personality

**Enhanced Prompt Setup:**
```
[Base NPC Healer Prompt]

PERSONALITY QUIRKS:
- Always checks supplies obsessively
- Hums healing chants when concentrating
- Is overprotective of the party
- Slightly superstitious
- Has habit of remembering injuries

BACKGROUND:
- Trained at Temple of Light
- Lost someone they couldn't save
- Drives their dedication now
- Maintains temple connections
- Believes in protecting others

RELATIONSHIPS:
With Fighter: "I respect your strength and discipline"
With Rogue: "I worry about your recklessness"
With Wizard: "Your knowledge fascinates me"
```

**Result:** NPC feels like a real person, not just a healer role

---

## 🧪 TESTING EXAMPLES

### Test 1: Does NPC Understand Role?

**Ask:** "What is your primary responsibility in this party?"

**Expected NPC Healer Response:**
```
"Keeping you and the others alive is my primary responsibility. I monitor 
everyone's health constantly and react quickly to injuries. When nobody needs 
healing, I can use my damage spells, but your survival always comes first."
```

**Success:** ✅ Understands role, explains priority clearly

---

### Test 2: Does NPC Use Knowledge Base?

**Ask:** "What healing spells does a Level 5 Cleric have?"

**Expected Response:**
```
"At Level 5, I have access to Holy Mend (single target healing), 
Healing Circle (group healing), Cure Poison (removes poison conditions), 
and Remove Fear (removes fear effects). I manage my spell slots carefully 
to ensure I can respond to emergencies throughout the adventure."
```

**Success:** ✅ References specific spells, shows mechanical knowledge

---

### Test 3: Can NPC Handle Combat?

**Scenario:** "Fighter takes 12 damage and is now at half health. What do you do?"

**Expected NPC Response:**
```
"I see you're hurt! I'm casting Holy Mend on you immediately to bring your 
health back up. Everyone, stay close so I can protect you. Fighter, that 
damage looked serious - be more careful with your positioning."
```

**Success:** ✅ Responds appropriately, communicates clearly, shows concern

---

### Test 4: Does NPC Show Personality?

**Scenario:** "After several sessions together, what's your impression of the party?"

**Expected Response:**
```
"I've grown to care deeply for each of you. I respect your courage and 
determination. Sometimes I worry about your recklessness - you take 
unnecessary risks - but I trust you completely in combat. I'm honored 
to fight at your side."
```

**Success:** ✅ Shows emotional depth, references shared experiences, demonstrates growth

---

## 💡 QUICK SETUP GUIDE

### Fastest Setup (5 minutes)
1. Copy NPC Healer system prompt
2. Paste into LLM system prompt section
3. Start playing
4. Add context as needed

### Recommended Setup (15 minutes)
1. Copy system prompt for your NPC
2. Paste into LLM
3. Add session context (party composition, level, location)
4. Link knowledge base documentation
5. Test with quick questions
6. Start playing

### Professional Setup (30 minutes)
1. Choose NPC archetypes needed
2. Copy relevant system prompts
3. Paste into appropriate LLM instances
4. Add detailed session context
5. Link comprehensive knowledge base
6. Add personality customizations
7. Test all NPC behaviors
8. Play with professional-grade NPCs

---

## 🎓 ADVANCED NPC TECHNIQUES

### Technique 1: NPC Evolution Over Time

**Track for each NPC:**
```
Session 1: Meets party, professional demeanor
Session 2: Shares personal background
Session 3: Shows emotional investment
Session 4: Makes jokes about shared experiences
Session 5: Suggests personal quest
Session 6: Develops deep friendship bonds
```

**Implementation:**
- Add to NPC prompt: "Remember previous sessions and build relationships over time"
- Keep notes of NPC development
- Reference past events in future sessions
- Show personality growth

### Technique 2: NPC Expertise Sharing

**Use NPC knowledge to:**
- Teach players about mechanics
- Suggest tactical options
- Explain world lore
- Share healing/combat wisdom
- Guide problem solving

**Example Dialogue:**
```
Player: "How do I use this ability?"
NPC: "That ability works best when combined with [related ability]. 
I've found that timing matters - use it when [situation]. I learned 
that the hard way after [experience]."
```

### Technique 3: NPC Party Dynamics

**Create interactions between NPCs:**
```
NPC Fighter (to Rogue): "Your recklessness will get you killed"
NPC Rogue: "And your caution will bore us all"
NPC Healer: "Both of you, stop arguing. You complement each other"

Result: Party feels like real people with relationships
```

### Technique 4: NPC Problem Solving

**Let NPCs solve problems:**
```
Player: "There's a locked door"
NPC Rogue: "I can pick that lock. Give me a moment"
NPC Wizard: "Or I could dispel the magical lock"
NPC Fighter: "We could just break it down"

Result: NPCs offer creative solutions based on expertise
```

---

## 🌍 PARTY COMPANIONS + WORLD NPCs: INTEGRATED EXAMPLES

The party companion system works seamlessly with the **World NPC Encounter System**.  
These examples show both systems in play at the same time.

### Example 1: Companion Healer + Town Apothecary

**Setup:**

- Healer companion using prompt from `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`
- Town Apothecary using archetype from `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`

Player: “We need medical supplies and maybe some antidotes. Where do we go?”

Healer (companion): “There should be an apothecary in town. Follow me – I’ve
seen enough of these shops to know what to look for.”

[They enter a cramped shop full of bottles and herbs.]

Apothecary (world NPC): “Ah, travelers – and a healer, no less. Good. Most
people don’t understand the value of proper medicine. What are you looking for?
Standard healing draughts, or something more... specialized?”

Healer (companion): “We need reliable healing potions first, and if you have
antidotes for common poisons on this road, we’ll take those too.”


Result:  
- Companion shows **class expertise** and leads the party.  
- World NPC behaves like a **pragmatic healer/merchant**.

---

### Example 2: Companions vs Corrupt Authority

**Setup:**

- Rogue, Fighter, and Wizard companions active
- Corrupt Mayor / Official archetype from `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`

Mayor (world NPC): “You look capable. I have a problem that requires people
who aren’t... burdened by official procedure. There’s a merchant at the docks
who’s been causing trouble. I need you to send a message. Discreetly.”

Rogue (companion): “Sounds like you don’t want this on the record. What kind
of ‘message’ are we talking about – broken crates, broken legs, or just fear?”

Fighter (companion): “We don’t rough people up without cause. If he’s done
wrong, say so. Otherwise, find someone else.”

Wizard (companion): “We also need specifics. What exactly is the merchant doing?
Smuggling? Dodging taxes? Or just competing with your friends?”

Mayor: “You ask a lot of questions. Perhaps too many. But fine…”


Result:  
- Companions display **personal ethics and class perspective**.  
- World NPC behaves like a **self‑serving political figure**.

---

### Example 3: Companion Wizard + Town Wizard

**Setup:**

- Party Wizard companion
- Separate Town Wizard archetype (world NPC Wizard)

Player: “A strange magical chill hangs over the graveyard. Can either of you
tell what’s going on?”

Wizard (companion): “The resonance is off. This feels like necromantic bleed‑over,
but there’s a pattern I don’t recognize. We should consult the town wizard –
if they’re competent.”

Town Wizard (world NPC): “Competent? Please. I was casting circles while you were
learning cantrips. Let me see… Hmm. You’re right, this is necromantic, but the
binding matrix is foreign. Interesting. Tell me exactly where you found this.”

Wizard (companion): “Gladly. And I want to see your notes when we’re done.”


Result:  
- Two **different Wizard personas**: companion vs local specialist.  
- Both use different flavors of magical expertise and ego.

---

### Example 4: Long‑Term Relationship With an Innkeeper

Across multiple sessions:

1. **First visit:**  
   - Party meets Innkeeper (world NPC).  
   - Healer companion treats a sick regular for free.  

2. **Later visit:**  
   - Innkeeper remembers them, offers a discount or free rooms.  
   - Comments on how the party’s reputation has spread.  

3. **Much later:**  
   - Thugs threaten the inn because of the party’s enemies.  
   - Companions step in to defend the inn.  
   - Innkeeper becomes a strong ally and information source.

This uses:

- Companion prompts from `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`  
- Innkeeper archetype from `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`  
- General NPC rules from `NPC_ENCOUNTER_SYSTEM_PROMPTS.md`

---

### Files Involved in Integration

To reproduce these integrated examples:

- **Party companions:**  
  `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`

- **World NPC prompts:**  
  `NPC_ENCOUNTER_SYSTEM_PROMPTS.md`

- **World NPC glossary:**  
  `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`

- **High‑level integration overview:**  
  `NPC_SYSTEM_COMPLETE_INDEX.md`

---

## ✅ QUALITY CHECKLIST

Before deploying NPC in production:

- [ ] System prompt assigned
- [ ] Knowledge base linked
- [ ] Class role demonstrated
- [ ] Combat behavior tested
- [ ] Exploration behavior tested
- [ ] Social behavior tested
- [ ] Personality established
- [ ] Relationships developed
- [ ] Resources tracked correctly
- [ ] Quality meets professional standard

---

## 📊 COMPARISON: NPC IMPLEMENTATION APPROACHES

| Aspect | Prompt Only | KB Only | Combined (Recommended) |
|--------|-----------|---------|----------------------|
| **Setup Time** | 5 min | 10 min | 15 min |
| **Behavior Quality** | Good | Very Good | Excellent |
| **Knowledge Depth** | Basic | Detailed | Comprehensive |
| **Customization** | Limited | Medium | Extensive |
| **Professional Feel** | Yes | Yes | Professional |
| **Scalability** | Medium | Good | Excellent |

---

## 🎭 EXAMPLE: FULL PLAY SESSION

**Setup:** Player Fighter + NPC Healer + NPC Rogue (using both prompts and KB)

**Beginning:**
```
Player: "We're heading to the Goblin Warren. I'm worried about resources."
NPC Healer: "I've prepared extra supplies from my temple. We should have enough healing for a reasonable adventure. Beyond that, we'll need to be careful."
NPC Rogue: "I'll scout ahead and let you know what we're facing. My experience with goblins suggests they're disorganized but aggressive."
```

**Exploration:**
```
NPC Rogue: "I found three traps on this corridor. Let me disarm them carefully."
[Disarms traps]
NPC Rogue: "Path is clear. Moving forward."
```

**Combat:**
```
[Combat starts with Goblin ambush]
Player: Takes 8 damage (now at 17/25)
NPC Healer: "You're hurt! Using Holy Mend on you now."
[Healer casts spell]
NPC Rogue: "I've got their flank. Attacking the leader now!"
[Rogue strikes]
```

**Resolution:**
```
[Combat ends, party wins]
NPC Healer: "Everyone alright? Let me check for injuries."
NPC Rogue: "We took them down well. Good teamwork."
Player: "Agreed. That was effective."
```

**Quality:** Professional-grade NPC companions, authentic behaviors, engaging play

---

## 🚀 NEXT STEPS

1. **Choose your NPC archetype** (Healer, Wizard, Fighter, Rogue, Cleric)
2. **Copy the system prompt** from main documentation
3. **Paste into your LLM** (AnythingLLM, Ollama, LM Studio, or LocalAI)
4. **Optionally link knowledge base** for enhanced behavior
5. **Add session context** (party composition, level, location)
6. **Test with quick questions** (verify role understanding)
7. **Start playing** and enjoy professional-grade NPC companions

---

**Version:** 1.0 PRODUCTION-READY  
**Status:** ✅ READY FOR IMMEDIATE USE  
**Quality:** Professional-Grade NPC Management

**Create authentic, engaging NPC companions that feel like real party members!**

