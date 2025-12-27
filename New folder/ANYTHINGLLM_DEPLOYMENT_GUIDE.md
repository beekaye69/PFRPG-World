# PFRPG Knowledge Base - AnythingLLM Deployment Guide

## Complete Step-by-Step Instructions

### Prerequisites
- AnythingLLM installed and running
- All 60+ PFRPG knowledge base files downloaded and organized
- Folder structure created (using setup_folders.bat or setup_folders.sh)
- ~30-60 minutes for complete deployment

---

## DEPLOYMENT WORKFLOW

### STEP 1: Launch AnythingLLM
1. Open AnythingLLM application
2. Go to main dashboard
3. Click "Create New Workspace" or navigate to Workspaces

### STEP 2: Create Workspace
1. Click "Create New Workspace"
2. Name: `PFRPG_Knowledge_Base`
3. Description: "Complete Pathfinder Reference Game Knowledge Base - 400k+ words, 100% rulebook coverage"
4. Click "Create"

### STEP 3: Configure Workspace Settings
1. Click on workspace settings (gear icon)
2. Set "Default Embed Model": OpenAI embeddings or your preferred model
3. Set "Chat Model": Your preferred LLM (GPT-4, Claude, etc.)
4. Enable RAG (Retrieval-Augmented Generation)
5. Set chunk size: 512-1024 tokens (recommended)
6. Set overlap: 20% (recommended)
7. Save settings

---

## PHASE 1 DEPLOYMENT: Foundational Layer

### File Count: 15 files (~84,000 words)

**Files to upload:**
```
Phase_1_Foundational/
├── PFRPG-TableOfContents.md
├── PFRPG-CoreMechanics-Primer.md
├── PFRPG-MechanicalInteractions.md
├── PFRPG-SemanticRelationships.md
├── PFRPG-ClassComparison-Matrix.md
├── PFRPG-RaceComparison-Matrix.md
├── PFRPG-SpellComparison-Matrix.md
├── PFRPG-FAQ.md
├── PFRPG-ItemComparison-Matrix.md
├── PFRPG-QueryExamples.md
├── PFRPG-CombatPrimer.md
├── PFRPG-QuickReference.md
├── PFRPG-Analysis-Updated.md
├── PFRPG-Glossary.md
└── MACRO_LEVEL_COMPLETENESS_ANALYSIS.md
```

### Upload Instructions:

**Method A: Batch Upload (Recommended)**
1. In AnythingLLM, click "Upload Documents"
2. Select all 15 files from Phase_1_Foundational folder
3. Drag & drop into upload area OR click "Select Files"
4. Click "Start Upload"
5. Wait for indexing to complete (5-10 minutes)

**Method B: Individual Upload**
1. Click "Upload Documents"
2. Select one file
3. Upload
4. Repeat for all 15 files

### Verification:
- [ ] All 15 files show in workspace
- [ ] Status shows "Ready" or "Indexed"
- [ ] No errors in upload log
- [ ] File count: 15/15

### Test Phase 1:
Run these test queries to verify Phase 1 works:
1. "What are the 5 core abilities?"
2. "List all character classes"
3. "What is Heroic Reroll?"
4. "How do difficulty tiers work?"
5. "What's the Combat Master ability?"

**Expected Result:** LLM provides accurate answers from Phase 1 documents

---

## PHASE 2 DEPLOYMENT: Section-Level Deep Dives

### File Count: 9 files (~54-65,000 words)

**Files to upload:**
```
Phase_2_Sections/
├── STEP2_SECTION_BREAKDOWN_ANALYSIS.md
├── SECTION_1_CoreMechanics_DeepDive.md
├── SECTION_2_CombatSystem_DeepDive.md
├── SECTION_3_CharacterClasses_DeepDive.md
├── SECTION_4_CharacterRaces_DeepDive.md
├── SECTION_5_MagicSystem_DeepDive.md
├── SECTION_6_MagicalItems_DeepDive.md
├── SECTIONS_6-12_Architecture_Reference.md
└── SECTIONS_7-12_DeepDives_Complete.md
```

### Upload Instructions:

1. In AnythingLLM workspace, click "Upload Documents"
2. Select all 9 files from Phase_2_Sections folder
3. Click "Start Upload"
4. Wait for indexing (10-15 minutes)

### Verification:
- [ ] All 9 files show in workspace (total: 24/24 files)
- [ ] All files indexed and ready
- [ ] No upload errors

### Test Phase 2:
Run these test queries:
1. "Explain the d6 system foundation"
2. "How does combat initiative work?"
3. "What are the Fighter's abilities?"
4. "How do races affect character creation?"
5. "Explain free form magic system"

**Expected Result:** LLM provides detailed answers with section-specific context

---

## PHASE 3 DEPLOYMENT: Atomic Sub-Sections

### File Count: 70+ files (~250-280,000 words)

**Files to upload (in order):**

### Phase 3A: Section 1 - Core Mechanics (3 files)
```
Phase_3_Atomics/Section_1_Core_Mechanics/
├── SECTION_1_Atomization_Structure.md
├── SECTION_1.1_d6SystemFoundation_Atomic.md
└── SECTION_1.2-1.7_CoreMechanics_Atomics_Batch.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select all 3 files from Section_1_Core_Mechanics folder
3. Click "Start Upload"
4. Wait for indexing (5 minutes)

### Phase 3B: Section 2 - Combat (3 files)
```
Phase_3_Atomics/Section_2_Combat/
├── SECTION_2_Atomization_Structure.md
├── SECTION_2.1_InitiativeSystem_Atomic.md
└── SECTION_2.2-2.9_CombatAtomics_Batch.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select all 3 files from Section_2_Combat folder
3. Click "Start Upload"
4. Wait for indexing (5 minutes)

### Phase 3C: Section 3 - Classes (1 file)
```
Phase_3_Atomics/Section_3_Classes/
└── SECTION_3_CharacterClasses_Complete_Atomics.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select SECTION_3_CharacterClasses_Complete_Atomics.md
3. Click "Start Upload"
4. Wait for indexing (5 minutes)

### Phase 3D: Sections 4-6 - Races, Magic, Items (1 file)
```
Phase_3_Atomics/Sections_4_5_6_Combined/
└── SECTIONS_4_5_6_Complete_Atomics.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select SECTIONS_4_5_6_Complete_Atomics.md
3. Click "Start Upload"
4. Wait for indexing (5 minutes)

### Phase 3E: Sections 7-12 - Advanced Systems (1 file)
```
Phase_3_Atomics/Sections_7_12_Combined/
└── SECTIONS_7-12_Complete_Atomics_Final.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select SECTIONS_7-12_Complete_Atomics_Final.md
3. Click "Start Upload"
4. Wait for indexing (5 minutes)

### Verification:
- [ ] All 70+ files uploaded (total: 94+ files)
- [ ] All files indexed successfully
- [ ] Total document count in workspace ~94+
- [ ] No upload errors

### Test Phase 3:
Run comprehensive test queries:
1. Complex class/race combinations
2. Specific ability combinations
3. Edge case scenarios
4. PM reasoning questions
5. Campaign management questions

**Expected Result:** LLM provides expert-level, detailed responses with multiple examples

---

## PLANNING DOCUMENTS UPLOAD (Optional)

### File Count: 7 files (~20,000 words)

**Files to upload:**
```
Planning_Navigation/
├── STEP3_Atomization_MasterPlan.md
├── PROJECT_STATUS_COMPLETE_SUMMARY.md
├── PROJECT_STATUS_SECTION1_COMPLETE.md
├── FINAL_PROJECT_COMPLETE_SUMMARY.md
├── MASTER_INDEX_NAVIGATION_HUB.md
├── PFRPG_DEPLOYMENT_PACKAGE_CHECKLIST.md
└── PROJECT_COMPLETION_CERTIFICATE.md
```

**Upload Instructions:**
1. Click "Upload Documents"
2. Select all 7 files from Planning_Navigation folder
3. Click "Start Upload"
4. Wait for indexing (3-5 minutes)

**Note:** These are reference documents. Optional to upload, but useful for LLM to understand project context.

---

## COMPLETE DEPLOYMENT SUMMARY

### Total Deployment:
- **Total Files:** 60+ documents
- **Total Content:** 400,000+ words
- **Total Upload Time:** 30-45 minutes
- **Total Indexing Time:** 30-50 minutes
- **Total Time:** ~1-2 hours

### File Counts by Phase:
| Phase | Files | Words | Upload Time |
|-------|-------|-------|------------|
| Phase 1 | 15 | 84k | 15 min |
| Phase 2 | 9 | 54-65k | 20 min |
| Phase 3 | 70+ | 250-280k | 60 min |
| Planning | 7 | 20k | 10 min |
| **TOTAL** | **101** | **400k+** | **105 min** |

---

## POST-DEPLOYMENT VERIFICATION

### Check Workspace Status:
1. Open AnythingLLM workspace
2. Verify file count: Should show 94+ (or 101+ with planning)
3. Check "Documents" tab - all files listed
4. Check indexing status - all "Ready"

### Run Comprehensive Tests:
1. Test basic queries (core mechanics)
2. Test intermediate queries (combat, classes)
3. Test advanced queries (edge cases, combinations)
4. Test PM reasoning queries
5. Test strategic recommendation queries

### Success Criteria:
- ✅ All files uploaded without errors
- ✅ All files indexed successfully
- ✅ Query responses accurate and detailed
- ✅ Cross-references working
- ✅ Examples provided in responses
- ✅ PM reasoning available when queried
- ✅ Decision matrices accessible

---

## OPTIMIZATION TIPS

### For Better Performance:
1. **Adjust Chunk Size:** Smaller chunks (256-512) for more granular retrieval
2. **Enable Hybrid Search:** Combine vector + keyword search
3. **Set Temperature:** Lower (0.3-0.5) for factual queries, higher (0.7-1.0) for creative
4. **Use System Prompts:** Add context about PFRPG for better responses

### Sample System Prompt:
```
You are an expert Pathfinder Reference Game (PFRPG) assistant. 
You have access to a comprehensive knowledge base covering:
- Core mechanics (d6 system, task resolution, difficulty tiers)
- Combat mechanics (initiative, attacks, defense, damage)
- Character creation (classes, races, abilities, stats)
- Magic systems (combat spells, free form magic, bardic music)
- Item systems (focus weapons, deflect armor, jewelry, potions)
- Encounter design, monster creation, loot distribution
- Advanced mechanics and edge cases
- PM guidance and adjudication

Provide accurate, detailed responses based on the knowledge base.
When answering:
1. Be specific and factual
2. Provide examples when helpful
3. Explain mechanics clearly
4. Consider interactions between systems
5. Offer tactical/strategic insights for gameplay questions
```

---

## TROUBLESHOOTING

### Issue: Files won't upload
**Solution:**
- Check file format (should be .md)
- Verify file sizes not too large
- Try uploading in smaller batches
- Check AnythingLLM storage limits

### Issue: Indexing takes very long
**Solution:**
- Normal for 400k+ words - can take 1-2 hours total
- Upload in phases to distribute load
- Monitor system resources
- Consider splitting Phase 3 into multiple uploads

### Issue: Query responses are vague
**Solution:**
- Ensure all phases uploaded
- Force re-indexing of documents
- Use more specific query language
- Reference specific sections in query

### Issue: Missing information in responses
**Solution:**
- Verify all 94+ files uploaded
- Check file organization in folders
- Ensure no truncated files
- Review upload logs for errors

---

## NEXT STEPS AFTER DEPLOYMENT

### Week 1:
- Monitor LLM performance
- Gather feedback from users
- Test edge cases
- Document any issues

### Week 2-4:
- Optimize based on usage patterns
- Add house rule supplements
- Fine-tune system prompts
- Scale to team/production

### Ongoing:
- Monitor performance metrics
- Update as game evolves
- Maintain knowledge base
- Add supplemental content as needed

---

## QUICK REFERENCE

**Workspace Name:** PFRPG_Knowledge_Base

**Total Files:** 101 (or 94 without planning)

**Total Words:** 400,000+

**Upload Location:** Phase_1_Foundational/ → Phase_2_Sections/ → Phase_3_Atomics/

**Deployment Time:** 1-2 hours total

**Testing Time:** 30 minutes

**Go-Live Time:** After Phase 3 indexing complete

---

## SUPPORT

For questions about:
- **Deployment:** See PFRPG_DEPLOYMENT_PACKAGE_CHECKLIST.md
- **Navigation:** See MASTER_INDEX_NAVIGATION_HUB.md
- **Project Status:** See PROJECT_COMPLETION_CERTIFICATE.md
- **Specific Rules:** See relevant SECTION files
- **Deployment Folder:** See AnythingLLM_Deployment/ directory

---

**Ready to deploy? Begin with Phase 1 upload!** 🚀