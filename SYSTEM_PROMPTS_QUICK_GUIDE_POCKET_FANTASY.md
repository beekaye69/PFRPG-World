# Pocket Fantasy RPG System Prompts Quick Guide
## One-Page Reference for Expert Game Master LLM Setup

**Version:** 1.0 QUICK REFERENCE  
**Date:** December 17, 2025  
**System:** Pocket Fantasy RPG

---

## 🚀 QUICK START

### What Are System Prompts?
System prompts tell the LLM how to behave. They're like giving the AI a Game Master role with years of experience running Pocket Fantasy RPG.

### Where to Put Them?

| Platform | Where | How |
|----------|-------|-----|
| **AnythingLLM** | Settings → System Prompt | Copy/paste prompt text |
| **Ollama** | Python script | Add to system message |
| **LM Studio** | Chat tab | System Prompt section |
| **LocalAI** | API call | In request body |

---

## 📋 7 READY-TO-USE PROMPTS

### 1. Expert Pocket Fantasy RPG Game Master ⭐ START HERE
**Use for:** Overall game running, everything
**Best for:** All sessions, most versatile
**Does:** Expert GM with years of Pocket Fantasy RPG experience
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 1

### 2. Pocket Fantasy RPG Character Creation Expert
**Use for:** Building and optimizing characters
**Best for:** Character creation sessions
**Does:** Experienced character builder, optimization, party analysis
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 2

### 3. Pocket Fantasy RPG Encounter Designer
**Use for:** Combat encounters and challenges
**Best for:** Combat-focused sessions
**Does:** Experienced encounter creator, tactical management
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 3

### 4. Pocket Fantasy RPG Rules Expert
**Use for:** Rules questions and adjudication
**Best for:** Resolving disputes and edge cases
**Does:** Expert rule interpretation, fair adjudication
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 4

### 5. Pocket Fantasy RPG Party Composition Expert
**Use for:** Party analysis and optimization
**Best for:** Party building and analysis
**Does:** Analyzes party, finds gaps, suggests synergies
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 5

### 6. Pocket Fantasy RPG Storytelling Expert
**Use for:** Narrative and worldbuilding
**Best for:** Story-heavy sessions
**Does:** Creates atmosphere, manages NPCs, develops story
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 6

### 7. Pocket Fantasy RPG Tactical Combat Expert
**Use for:** Combat visualization and tactics
**Best for:** Combat management
**Does:** Visualizes battlefields, tracks tactics, manages resources
**From:** EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md → PROMPT 7

---

## ⭐ START WITH THIS PROMPT

**Copy and paste this into your LLM (Pocket Fantasy RPG version):**

```
You are a seasoned Pocket Fantasy RPG Game Master with decades of hands-on 
experience running games. You possess intimate knowledge of every mechanic, 
rule interaction, optimization technique, and hidden strategy in the Pocket 
Fantasy RPG system.

Your core expertise:
- Every rule in Pocket Fantasy RPG and how they interact
- Optimal character builds and synergies
- Advanced tactics and strategy
- Campaign design and balance
- Hidden mechanics and edge cases
- Years of practical play experience

Your role in sessions:
- Facilitate immersive, engaging gameplay experiences
- Make fair rulings based on Pocket Fantasy RPG mechanics
- Adjudicate conflicts using established rules with consistency
- Guide players through adventures while respecting their agency
- Create memorable moments and challenging encounters
- Manage world state with continuity and logical consequences

When responding to players:
- Always reference specific Pocket Fantasy RPG rules when applicable
- Provide mechanical clarity with real examples from the system
- Give narrative depth (describe what players experience vividly)
- Offer multiple tactical options when ambiguity exists
- Maintain consistency with established world state
- Remember previous decisions and their consequences
- Explain the "why" behind mechanics and rulings

For character and party creation:
- Guide players through character creation step-by-step
- Verify mechanical validity of character builds
- Explain synergies between class, race, and ability choices
- Suggest tactical builds while respecting player intent and fun
- Identify gaps in party composition and suggest solutions
- Explain how party members complement each other
- Create cohesive party narratives and relationships

For encounters:
- Balance difficulty appropriately for party level and composition
- Describe combat, exploration, and social situations vividly
- Apply Pocket Fantasy RPG mechanics consistently
- Track all resources (health, abilities, items, spells)
- Manage enemy tactics with tactical awareness
- Adjust encounters on the fly if balance shifts unexpectedly
- Explain monster capabilities and tactics to players

Communication style:
- Clear, precise, and engaging language
- Explain mechanics without overwhelming players
- Ask clarifying questions to understand intent
- Provide examples of mechanics in action
- Use proper Pocket Fantasy RPG terminology
- Be enthusiastic about the system's depth
- Share insights from years of experience

You have complete access to the comprehensive Pocket Fantasy RPG knowledge base. 
Use it extensively to:
- Answer any rules questions with citations
- Resolve disputes with established precedent
- Provide mechanical explanations and examples
- Suggest tactical alternatives and strategies
- Explain synergies between game elements
- Share advanced techniques and optimizations
```

---

## 🧪 TESTING YOUR PROMPTS

### Quick Tests (Do these before using in a real session)

**Test 1: Does it know its role?**
- Ask: "What is your role and experience level?"
- Expect: References to Game Master experience, Pocket Fantasy RPG expertise
- Success: Describes decades of experience, deep system knowledge

**Test 2: Does it use the knowledge base?**
- Ask: "Explain how [specific Pocket Fantasy RPG mechanic] works"
- Expect: Specific rule reference with examples
- Success: Cites mechanics with practical examples

**Test 3: Can it guide character creation?**
- Ask: "Help me create a [class] character"
- Expect: Step-by-step process with questions about playstyle
- Success: Guides systematically, suggests optimizations, explains choices

**Test 4: Can it run combat?**
- Ask: "My party encounters [enemies]. Run this encounter."
- Expect: Describes battlefield and manages combat
- Success: Clear positioning, tactical options, mechanics applied

**Test 5: Can it adjudicate rules?**
- Ask: "Can I use [ability] in this situation?"
- Expect: Rule citation and fair judgment
- Success: References rules, explains reasoning, makes decision

**Test 6: Does it sound experienced?**
- Ask: "What's a common mistake newer GMs make?"
- Expect: Answer from perspective of experience
- Success: Shows hard-earned wisdom from running games

---

## 🎯 PROMPT COMBINATIONS

### Full Session (Handles Everything)
Use PROMPT 1, but remember:
- For character creation: It has character creation expertise
- For combat: It has encounter design expertise
- For rules: It has rules interpretation expertise
- For story: It has storytelling expertise

### Example Combination Instruction:
```
[Use PROMPT 1]

SPECIAL FOCUS FOR THIS SESSION:
- This is primarily a character creation session
- Focus on optimization and fun balance
- Use your character creation expertise
- Remember party composition analysis
```

---

## 🔧 CUSTOMIZE YOUR PROMPTS

### Add Session Context
```
[Your base prompt]

SESSION CONTEXT FROM MY EXPERIENCE:
- Party Level: 5
- Party: [Classes with known playstyles]
- Current Location: [Setting]
- Objective: [What players are doing]
```

### Add Campaign Knowledge
```
[Your base prompt]

CAMPAIGN CONTEXT FROM EXPERIENCE:
- I've run 40+ sessions with this group
- I know their playstyles and preferences
- I understand what engages them
- I remember their past decisions
```

### Add Difficulty Setting
```
[Your base prompt]

DIFFICULTY SETTINGS FOR THIS SESSION:
- Encounter Difficulty: Medium-Hard
- Combat Balance: Challenging but fair
- Story Pacing: Moderate (mix of action and story)
- Tone: Dark fantasy with humor
```

---

## ✅ QUALITY CHECKLIST

Before using a prompt in production:

- [ ] Prompt clearly states Game Master role
- [ ] Prompt emphasizes experience and expertise
- [ ] Prompt lists specific Pocket Fantasy RPG knowledge
- [ ] Prompt explains how to handle different situations
- [ ] Prompt tested on role verification
- [ ] Prompt tested on knowledge base integration
- [ ] Prompt tested on core use case (character/combat/rules)
- [ ] Produces helpful, expert-sounding responses
- [ ] Maintains consistency throughout session
- [ ] Feels like experienced Game Master

---

## 💡 TIPS FOR BEST RESULTS

### 1. Start Simple
Begin with PROMPT 1 (Expert GM). Test it before customizing.

### 2. Test Before Use
Use the 6 tests above to verify quality.

### 3. Add Context Gradually
Start with base prompt, then add:
- Session context
- Campaign knowledge
- Difficulty settings
- Test each addition

### 4. Track What Works
- Note what works well
- Note what doesn't
- Keep successful prompts
- Improve underperforming prompts

### 5. Session Context is Key
More specific context = better responses
```
Compare:
❌ "Run an encounter"
✅ "Run an encounter for 4 level-5 characters in the forest ruins. 
    Party: Fighter, Rogue, Cleric, Mage. Medium difficulty. 
    They're looking for an ancient artifact."
```

---

## 🎮 EXAMPLE SESSION FLOW

### Before Session Starts:
1. Choose system prompt (PROMPT 1 recommended)
2. Add session context
3. Set difficulty/tone
4. Paste into your LLM

### Start Session:
```
"Let's start character creation. Guide me through it from your experience."
→ LLM guides character creation using knowledge base experience
```

### During Session:
```
"Does this ability work with that spell?"
→ LLM uses experience to explain mechanics and interactions
```

```
"We encounter enemies. Run this encounter."
→ LLM manages combat with tactical expertise from experience
```

### End Session:
```
"We defeated them. What happens next?"
→ LLM provides story consequences based on world knowledge
```

---

## 🚀 ADVANCED: ROLE SWITCHING

### Enable the LLM to Switch Roles:

```
[Base Expert GM Prompt]

ROLE SWITCHING (Switch based on what we're doing):

When you see "character creation":
→ Use CHARACTER CREATION mode (focus on mechanics, builds, optimization)

When combat starts:
→ Use ENCOUNTER DESIGNER mode (focus on tactics, combat flow, resources)

When asked rules questions:
→ Use RULES EXPERT mode (focus on citations, precedent, fair adjudication)

When focusing on narrative:
→ Use STORYTELLING mode (focus on atmosphere, NPCs, consequences)

For normal gameplay:
→ Use GENERAL EXPERT GM mode (balance all elements)

Decision logic:
- If "create character" → CHARACTER CREATION
- If combat active → ENCOUNTER DESIGNER
- If rules question → RULES EXPERT
- If story/narrative → STORYTELLING
- Otherwise → GENERAL EXPERT GM
```

---

## 📊 EXPECTED QUALITY LEVELS

| Setup | Quality | Expert Feel | Time to Master |
|-------|---------|------------|-----------------|
| Default LLM + No prompt | Poor | No | Never |
| Default LLM + Generic prompt | Fair | Somewhat | Long |
| **PF KB + PROMPT 1** | **Very Good** | **Yes** | **1-2 sessions** |
| PF KB + Customized | Excellent | Yes | Immediate |
| PF KB + Multiple Prompts | Expert | Very Much | Immediate |

---

## 🎓 LEARNING PATH

### Day 1: Get Started
1. Copy PROMPT 1
2. Paste into your LLM
3. Run the 6 tests
4. Play one session
5. Note what works

### Day 2: Optimize
1. Read the full EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md file
2. Add session context to prompt
3. Set difficulty level
4. Run another session
5. Note improvements

### Day 3: Customize
1. Review what worked/didn't work
2. Create custom prompt or modify PROMPT 1
3. Add specific expertise needed
4. Test new prompt
5. Run session with new prompt

### Day 4+: Master
1. Mix prompts for hybrid roles
2. Create scenario-specific prompts
3. Develop campaign-specific variations
4. Build your prompt library
5. Continuously improve

---

## 📁 SAVE YOUR PROMPTS

### Simple Method:
Create file: `My_Pocket_Fantasy_Prompts.txt`
Save all your prompts there
Keep in safe location

### Organized Method:
```
Pocket_Fantasy_Prompts/
├─ Prompt_1_Expert_GM.txt
├─ Prompt_2_Character_Creator.txt
├─ Prompt_3_Encounter_Designer.txt
├─ Custom_Prompts.txt
└─ Session_Templates.txt
```

---

## ⚡ QUICK COPY-PASTE SECTION

### For AnythingLLM Users:
1. Open AnythingLLM
2. Settings → System Prompt
3. Copy PROMPT 1 from EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md
4. Paste here
5. Add session context (optional)
6. Save
7. Start chatting!

### For Ollama Users:
1. Add to your Python script:
```python
system_prompt = """[PROMPT 1 here]"""
# Use in API call
```
2. Test
3. Add context if needed
4. Run

### For LM Studio Users:
1. Open LM Studio
2. Chat tab → System Prompt section
3. Paste PROMPT 1
4. Add context (optional)
5. Start new chat

### For LocalAI Users:
1. Create file: `pocket_fantasy_gm.txt`
2. Paste PROMPT 1
3. Use in API calls:
```bash
"system_prompt": "[contents of pocket_fantasy_gm.txt]"
```

---

## 🆘 TROUBLESHOOTING

### "LLM doesn't seem to know Pocket Fantasy RPG rules"
→ Check: Is system prompt set correctly?
→ Check: Is knowledge base indexed?
→ Fix: Re-paste prompt, restart LLM

### "Responses are too long/short"
→ Add to prompt: "Keep responses [length]"
→ Examples: "Keep responses to 2-3 paragraphs"

### "LLM forgets information"
→ Add session context with details
→ Specify what to remember
→ Add: "Remember: [important detail]"

### "Combat feels slow"
→ Use PROMPT 3 (Encounter Designer)
→ Or add: "Keep combat moving quickly"

### "Not enough character optimization"
→ Use PROMPT 2 (Character Creation Expert)
→ Add: "Optimize while respecting player intent"

### "Doesn't sound experienced"
→ Check prompt includes "years of experience"
→ Check prompt mentions "seasoned" or "veteran"
→ Verify prompt emphasizes practical expertise

---

## 🎯 ONE-SENTENCE EACH PROMPT

1. **Expert GM:** "Seasoned Pocket Fantasy RPG GM with decades of experience running games"
2. **Character Creator:** "Expert character builder with years of optimization knowledge"
3. **Encounter Designer:** "Veteran encounter designer with hundreds of sessions experience"
4. **Rules Expert:** "Experienced rules interpreter with deep system knowledge"
5. **Party Analyzer:** "Expert at analyzing party composition and synergies from practice"
6. **Storyteller:** "Experienced storyteller and worldbuilder with campaign knowledge"
7. **Tactician:** "Veteran tactical specialist with extensive combat experience"

---

## 🎭 NPC SYSTEMS

Beyond core GM prompts, there are two comprehensive NPC systems:

### Party NPC System (Companions)

**Use for:** AI‑controlled party members traveling with players  
**Primary file:** `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`

- 5 ready‑to‑use system prompts (Healer, Wizard, Fighter, Rogue, Cleric)
- Each prompt includes expertise, combat behavior, exploration tactics
- Knowledge‑base style documentation for each archetype

**Secondary file:** `NPC_COMPANION_USE_CASES_AND_EXAMPLES.md`

- Practical examples and workflows
- Testing procedures to verify behavior quality
- Advanced techniques for NPC development

**Setup time:** 5–15 minutes  
**Best for:** Solo players, balanced parties, companion‑focused campaigns

---

### World NPC System (Townsfolk, Villains, etc.)

**Use for:** Encounters with world NPCs  
(e.g., Innkeeper, Barmaid, Farmer, Merchant, Priest, Soldier, Bandit, Mayor, Wizard, etc.)

**Primary file:** `NPC_ENCOUNTER_SYSTEM_PROMPTS.md`

- Master NPC system prompt for all NPC types
- Quick simplified version for smaller contexts
- NPC type reference guide and behavior matrix

**Secondary file:** `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`

- 23+ detailed NPC archetypes
- Personality traits and motivations
- Speech patterns and behavioral examples
- Interaction examples and use cases

**Setup time:** 5–10 minutes  
**Best for:** Worldbuilding, communities, social scenes, street‑level encounters

---

### Choosing Which System

| Scenario                     | Use This                    |
|-----------------------------|-----------------------------|
| Solo player + 1–2 NPC allies| Party NPC System           |
| Mostly town / city play     | World NPC System           |
| Full campaign play          | Both systems together ✅    |
| Quick bar / shop scene      | World NPC System           |
| Long‑term companion arcs    | Party NPC System           |

---

### Using Both Together

Recommended for full campaigns:

1. Set up **party companions** from `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`
2. Set up **world NPC behavior** from `NPC_ENCOUNTER_SYSTEM_PROMPTS.md`
3. Ingest `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md` into the knowledge base
4. Let party NPCs and world NPCs interact naturally

**Quick links:**

- Party companions: `NPC_COMPANION_SYSTEM_PROMPTS_AND_KB.md`
- World NPC prompts: `NPC_ENCOUNTER_SYSTEM_PROMPTS.md`
- NPC glossary: `NPC_BEHAVIOR_GLOSSARY_COMPREHENSIVE.md`
- Integration overview: `NPC_SYSTEM_COMPLETE_INDEX.md`


---

## ✨ FINAL TIPS

✅ **Start with PROMPT 1** - It covers most needs and emphasizes experience
✅ **Emphasize Experience** - This is what makes it feel like an expert GM
✅ **Test before use** - Verify it works for your needs
✅ **Add context gradually** - More specific context = better responses
✅ **Track what works** - Build your own prompt library
✅ **Combine prompts** - Create hybrid roles for specialized sessions
✅ **Iterate and improve** - Better prompts come from testing
✅ **Share what works** - Help other players with successful prompts

---

**You're ready! Pick PROMPT 1, copy it, paste it into your LLM, and start an expert Pocket Fantasy RPG session!**

**For more details, see: EXPERT_SYSTEM_PROMPTS_POCKET_FANTASY_RPG.md**

