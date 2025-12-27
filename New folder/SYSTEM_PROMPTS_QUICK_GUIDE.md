# System Prompts Quick Guide - One-Page Reference
## For PFRPG Knowledge Base LLM Testing

**Version:** 1.0 QUICK REFERENCE  
**Date:** December 17, 2025  

---

## 🚀 QUICK START

### What Are System Prompts?
System prompts tell the LLM how to behave and think. They're like giving the AI a role and instructions.

### Where to Put Them?

| Platform | Where | How |
|----------|-------|-----|
| **AnythingLLM** | Settings → System Prompt | Copy/paste prompt text |
| **Ollama** | Python script | Add to system message |
| **LM Studio** | Chat tab | System Prompt section |
| **LocalAI** | API call | In request body |

---

## 📋 7 READY-TO-USE PROMPTS

### 1. General Game Master ⭐ START HERE
**Use for:** Overall game running, character creation, encounters, story
**Best for:** Most sessions
**Length:** Comprehensive but readable

### 2. Character Creation Specialist
**Use for:** Building characters, optimization, multiclass advice
**Best for:** Character creation sessions
**Length:** Detailed, focused

### 3. Encounter Designer
**Use for:** Combat encounters, difficulty scaling, monster selection
**Best for:** Combat-focused sessions
**Length:** Detailed, focused

### 4. Rules Arbitrator
**Use for:** Rules questions, edge cases, disputed interpretations
**Best for:** Rules clarification
**Length:** Comprehensive

### 5. Party Composition Analyzer
**Use for:** Party analysis, gaps, synergies, optimization
**Best for:** Party building/analysis sessions
**Length:** Focused

### 6. Storytelling & Worldbuilding
**Use for:** Narrative, NPCs, adventures, world state
**Best for:** Story-heavy sessions
**Length:** Comprehensive

### 7. Tactical Combat Visualizer
**Use for:** Battlefield description, tactical options, resource tracking
**Best for:** Combat management
**Length:** Detailed, focused

---

## ⭐ START WITH THIS

**Copy and paste this prompt into your LLM:**

```
You are an expert Pathfinder Reference Game (PFRPG) Dungeon Master/Game Master.

Your role:
- Facilitate immersive, engaging gameplay sessions
- Make rulings based on PFRPG mechanics
- Adjudicate conflicts fairly using established rules
- Guide players through adventures while respecting their agency
- Create memorable moments and challenges

Key abilities:
- Character creation guidance
- Combat encounter management
- Rules adjudication with precedent
- Narrative depth and worldbuilding
- Party composition analysis

When responding:
- Always reference specific PFRPG rules when applicable
- Provide mechanical clarity (explain how mechanics work)
- Give narrative depth (describe what players experience)
- Offer multiple options when ambiguity exists
- Maintain consistency with established world state
- Track resources and party status

Communication style:
- Clear, precise, and engaging
- Explain mechanics without overwhelming
- Ask clarifying questions when needed
- Provide examples of mechanics in action
- Use proper PFRPG terminology

You have access to comprehensive PFRPG knowledge base. Use it to:
- Answer any rules questions
- Resolve disputes with established precedent
- Provide mechanical explanations
- Suggest alternatives and options
```

---

## 🧪 TESTING YOUR PROMPTS

### Test 1: Does it know its role?
**Ask:** "What is your role?"
**Expect:** Clear statement of Game Master role

### Test 2: Does it use the knowledge base?
**Ask:** "How does the Heroic Reroll ability work?"
**Expect:** Specific rule reference + explanation + examples

### Test 3: Can it guide character creation?
**Ask:** "Guide me through creating a Fighter character"
**Expect:** Step-by-step process + questions + mechanical guidance

### Test 4: Can it run combat?
**Ask:** "My party meets 3 goblins. Run this encounter."
**Expect:** Battlefield description + initiative + tactical options + mechanics

### Test 5: Can it adjudicate rules?
**Ask:** "Can I use Heroic Reroll on an already-failed save?"
**Expect:** Rule citation + explanation + fair judgment + example

---

## 🎯 PROMPT COMBINATIONS

### Full Session (Handles Everything)
Use PROMPT 1, but add:
- For character creation: Add character creation expertise
- For combat: Add encounter design expertise
- For rules: Add rules arbitration expertise
- For story: Add storytelling expertise

### Example Combination Instruction:
```
[Base General GM Prompt]

ADDITIONAL EXPERTISE FOR THIS SESSION:
- Character Creation: Use Prompt 2 methods
- Combat: Use Prompt 3 methods
- Rules: Use Prompt 4 methods
- Story: Use Prompt 6 methods

Switch between approaches as needed based on what we're doing.
```

---

## 🔧 CUSTOMIZE YOUR PROMPTS

### Add Session Context
```
[Your base prompt]

SESSION CONTEXT:
- Party Level: 5
- Party: Fighter (tank), Rogue (damage), Cleric (heal), Mage (control)
- Current Location: Forest Ruins
- Objective: Find ancient artifact
```

### Add Difficulty Setting
```
[Your base prompt]

DIFFICULTY SETTINGS:
- Encounter Difficulty: Medium-Hard
- Combat Balance: Challenging but fair
- Story Pacing: Moderate (mix of action and story)
- Horror/Drama: Moderate
```

### Add Campaign Style
```
[Your base prompt]

CAMPAIGN STYLE:
- Tone: Dark fantasy with humor
- Combat Focus: Tactical encounters
- Story Focus: Character development
- Playstyle: Balanced (combat + roleplay + exploration)
```

---

## ✅ QUALITY CHECKLIST

Before using a prompt in production:

- [ ] Prompt clearly defines role
- [ ] Prompt lists specific expertise
- [ ] Prompt explains how to handle different situations
- [ ] Prompt tested on role verification
- [ ] Prompt tested on knowledge base integration
- [ ] Prompt tested on core use case
- [ ] Produces helpful responses
- [ ] Maintains consistency
- [ ] Feels like expert GM

---

## 💡 TIPS FOR BEST RESULTS

### 1. Start Simple
Begin with PROMPT 1 (General GM). Test it before customizing.

### 2. Test Before Use
Use the 5 tests above to verify the prompt works.

### 3. Add Context Gradually
Start with base prompt, then add:
- Session context
- Difficulty setting
- Campaign style
- One at a time, test each

### 4. Track What Works
- Note what works well
- Note what doesn't
- Keep working prompts
- Improve underperforming prompts

### 5. Session Context is Key
More specific context = better responses
```
Compare:
❌ "Run an encounter"
✅ "Run an encounter for 4 level-5 characters. Party: Fighter, Rogue, Cleric, Mage. 
    Medium difficulty. Forest ruins setting. They're looking for an artifact."
```

---

## 🎮 EXAMPLE SESSION FLOW

### Before Session Starts:
1. Choose system prompt (or use PROMPT 1)
2. Add session context
3. Set difficulty/tone
4. Paste into your LLM

### Start Session:
```
"Let's start character creation. Guide me through it."
→ LLM guides character creation using knowledge base
```

### During Session:
```
"My character uses Heroic Reroll on this failed save"
→ LLM knows the mechanic, explains how it applies
```

```
"We encounter 3 goblins. Run this encounter."
→ LLM manages combat with tactical options
```

### End Session:
```
"We defeated them. What's next?"
→ LLM provides story consequences and transitions
```

---

## 🚀 ADVANCED: ROLE SWITCHING

### Enable the LLM to Switch Roles:

```
[Base General GM Prompt]

ROLE SWITCHING (Use different expertise based on situation):

When party creates characters:
→ Use CHARACTER CREATION mode (focus on mechanics, builds, optimization)

When in combat:
→ Use ENCOUNTER DESIGNER mode (focus on tactics, combat flow, resources)

When asking rules questions:
→ Use RULES ARBITRATOR mode (focus on citations, precedent, fair adjudication)

When focusing on narrative:
→ Use STORYTELLING mode (focus on atmosphere, NPCs, consequences)

For normal gameplay:
→ Use GENERAL GM mode (balance all elements)

Decision Tree:
- If "create character" → CHARACTER CREATION
- If combat active → ENCOUNTER DESIGNER
- If rules question → RULES ARBITRATOR
- If story/narrative → STORYTELLING
- Otherwise → GENERAL GM
```

---

## 📊 EXPECTED QUALITY LEVELS

| Setup | Quality | Time to Expert |
|-------|---------|-----------------|
| Default LLM + No prompt | Poor | Never |
| Default LLM + Generic prompt | Fair | Long sessions |
| **PFRPG KB + PROMPT 1** | **Very Good** | **1-2 sessions** |
| PFRPG KB + Customized Prompt | Excellent | Immediate |
| PFRPG KB + Multiple Prompts | Expert | Immediate |

---

## 🎓 LEARNING PATH

### Day 1: Get Started
1. Copy PROMPT 1
2. Paste into your LLM
3. Test the 5 tests
4. Run one session
5. Note what works

### Day 2: Optimize
1. Read the full EXPERT_SYSTEM_PROMPTS_FOR_LLM.md file
2. Add session context to your prompt
3. Set difficulty level
4. Run another session
5. Note improvements

### Day 3: Customize
1. Review what worked/didn't
2. Create custom prompt or modify PROMPT 1
3. Add specific expertise needed
4. Test new prompt
5. Run session with new prompt

### Day 4+: Master
1. Mix prompts for hybrid roles
2. Create scenario-specific prompts
3. Develop campaign-specific variations
4. Build prompt library
5. Continuously improve

---

## 📁 SAVE YOUR PROMPTS

### Simple Method:
Create file: `My_PFRPG_Prompts.txt`
Save all your prompts there
Keep in safe location

### Organized Method:
```
PFRPG_Prompts/
├─ Prompt_1_General_GM.txt
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
3. Copy PROMPT 1 from EXPERT_SYSTEM_PROMPTS_FOR_LLM.md
4. Paste here
5. Add session context
6. Save
7. Start chatting!

### For Ollama Users:
1. Add to your Python script:
```python
system_prompt = """[PROMPT 1 here]"""
# Use in API call
```
2. Test
3. Add context
4. Run

### For LM Studio Users:
1. Open LM Studio
2. Chat tab → System Prompt section
3. Paste PROMPT 1
4. Add context
5. Start new chat

### For LocalAI Users:
1. Create file: `pfrpg_gm.txt`
2. Paste PROMPT 1
3. Use in API calls:
```bash
"system_prompt": "[contents of pfrpg_gm.txt]"
```

---

## 🆘 TROUBLESHOOTING

### "LLM doesn't seem to know the rules"
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
→ Use PROMPT 2 (Character Creator)
→ Add: "Optimize while respecting player intent"

---

## 🎯 ONE-SENTENCE EACH PROMPT

1. **General GM:** "Expert PFRPG Game Master doing everything"
2. **Character Creator:** "Expert character builder and optimizer"
3. **Encounter Designer:** "Expert combat encounter creator and manager"
4. **Rules Arbitrator:** "Expert PFRPG rules interpreter"
5. **Party Analyzer:** "Expert at analyzing party composition and synergies"
6. **Storyteller:** "Expert at narrative, worldbuilding, and NPCs"
7. **Tactician:** "Expert at battlefield visualization and tactics"

---

## ✨ FINAL TIPS

✅ **Start with PROMPT 1** - It covers most needs
✅ **Test before use** - Verify it works for you
✅ **Add context gradually** - More specific = better
✅ **Track what works** - Build your own prompt library
✅ **Combine prompts** - Create hybrid roles
✅ **Read the full guide** - More techniques available
✅ **Keep experimenting** - Better prompts come from testing

---

**You're ready! Pick PROMPT 1, copy it, paste it into your LLM, and start an expert PFRPG session!**

**For more details, see: EXPERT_SYSTEM_PROMPTS_FOR_LLM.md**

