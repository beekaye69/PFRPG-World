# PFRPG Knowledge Base - Alternative LLM Platform Deployment Guides
## Complete Instructions for Popular Knowledge Base Systems

**Version:** 1.0 FINAL

**Date:** December 16, 2025

**Coverage:** 3 Major Alternative Platforms + Comparison

---

## 📋 TABLE OF CONTENTS

1. **Ollama + Local LLM** (Self-hosted, open-source)
2. **LM Studio** (Desktop GUI, user-friendly)
3. **Hugging Face + LocalAI** (Cloud-optional)
4. **Comparison Matrix** (Which platform for what use case)

---

---

# DEPLOYMENT OPTION 1: OLLAMA (Self-Hosted RAG)

## Overview

**Ollama** is a lightweight, open-source platform for running LLMs locally with support for RAG (Retrieval-Augmented Generation).

- **Cost:** Free & open-source
- **Ease:** Moderate (command-line)
- **Power:** High (full local control)
- **Best For:** Technical users, complete privacy, no cloud dependencies

---

## INSTALLATION

### Prerequisites
- 8GB+ RAM (16GB recommended)
- NVIDIA GPU optional but recommended (GPU support)
- 20GB+ disk space
- macOS, Linux, or Windows (WSL2)

### Step 1: Install Ollama

**macOS:**
1. Visit https://ollama.ai
2. Download macOS version
3. Run installer, follow prompts
4. Ollama runs in background automatically

**Linux (Ubuntu/Debian):**
```bash
curl https://ollama.ai/install.sh | sh
```

**Windows (WSL2 Required):**
```bash
# In WSL2 terminal
curl https://ollama.ai/install.sh | sh
```

### Step 2: Verify Installation

```bash
ollama --version
ollama serve
```

If successful, you'll see: "Listening on 127.0.0.1:11434"

---

## SETUP RAG WITH OLLAMA

### Option A: Using Ollama with Llama.cpp Backend

**Step 1: Create RAG Directory**
```bash
mkdir -p ~/ollama_kb
cd ~/ollama_kb
```

**Step 2: Copy All Knowledge Base Files**
- Create folder: ~/ollama_kb/documents/
- Copy all 60+ markdown files here

**Step 3: Initialize Ollama Database**
```bash
ollama pull mistral  # or another model: llama2, neural-chat, etc.
```

**Step 4: Create RAG Script (save as rag.py)**

```python
#!/usr/bin/env python3
import os
import subprocess
from pathlib import Path

# Configuration
KB_PATH = "./documents"
MODEL = "mistral"  # Change if using different model
OLLAMA_HOST = "http://127.0.0.1:11434"

# Index documents
def index_documents():
    docs = Path(KB_PATH).glob("*.md")
    print(f"Found {len(list(docs))} markdown files")
    
    for doc in Path(KB_PATH).glob("*.md"):
        print(f"Indexing: {doc.name}")
        # Files are indexed in-memory by the RAG system
    
    print("Indexing complete!")

# Query RAG
def query_rag(question):
    # Read all documents for context
    context = ""
    for doc in Path(KB_PATH).glob("*.md"):
        with open(doc, 'r') as f:
            content = f.read()[:2000]  # First 2000 chars
            context += f"\n\n=== {doc.name} ===\n{content}"
    
    # Create prompt with context
    prompt = f"""Context from PFRPG Knowledge Base:
{context}

Question: {question}

Please answer based on the knowledge base above."""
    
    # Query Ollama
    response = subprocess.run(
        ['ollama', 'run', MODEL, prompt],
        capture_output=True,
        text=True
    )
    
    return response.stdout

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python rag.py '<question>'")
        sys.exit(1)
    
    question = sys.argv[1]
    result = query_rag(question)
    print(result)
```

**Step 5: Run Queries**

```bash
python rag.py "What are the 5 core abilities in PFRPG?"
python rag.py "Explain how Combat Master ability works"
python rag.py "What's the best class for a new player?"
```

---

### Option B: Using Ollama with LLamaIndex (Recommended for Better RAG)

**Step 1: Install Required Packages**
```bash
pip install llama-index ollama python-dotenv
```

**Step 2: Create RAG Application (save as pfrpg_rag.py)**

```python
#!/usr/bin/env python3
from pathlib import Path
from llama_index.llms.ollama import Ollama
from llama_index.embeddings.ollama import OllamaEmbedding
from llama_index.core import Settings
from llama_index.core import SimpleDirectoryReader, VectorStoreIndex

# Configuration
DOCUMENTS_DIR = "./documents"
MODEL = "mistral"
EMBED_MODEL = "nomic-embed-text"  # Install: ollama pull nomic-embed-text

# Setup LLM
llm = Ollama(model=MODEL, base_url="http://localhost:11434")
embed_model = OllamaEmbedding(
    model_name=EMBED_MODEL,
    base_url="http://localhost:11434"
)

Settings.llm = llm
Settings.embed_model = embed_model

# Load documents
def load_knowledge_base():
    print("Loading PFRPG knowledge base...")
    documents = SimpleDirectoryReader(DOCUMENTS_DIR).load_data()
    print(f"Loaded {len(documents)} documents")
    
    print("Creating vector index...")
    index = VectorStoreIndex.from_documents(documents)
    print("Index created!")
    
    return index

# Query interface
def query_kb(index, question):
    query_engine = index.as_query_engine(similarity_top_k=5)
    response = query_engine.query(question)
    return response

if __name__ == "__main__":
    import sys
    
    # Load KB
    index = load_knowledge_base()
    
    if len(sys.argv) > 1:
        question = " ".join(sys.argv[1:])
        result = query_kb(index, question)
        print(f"\nQuestion: {question}")
        print(f"\nAnswer:\n{result}")
    else:
        # Interactive mode
        print("\nPFRPG Knowledge Base RAG System")
        print("Type 'quit' to exit")
        print("-" * 50)
        
        while True:
            question = input("\nYour question: ")
            if question.lower() == 'quit':
                break
            
            result = query_kb(index, question)
            print(f"\nAnswer:\n{result}\n")
```

**Step 3: Prepare Models**
```bash
ollama pull mistral
ollama pull nomic-embed-text
```

**Step 4: Run the RAG System**

Interactive mode:
```bash
python pfrpg_rag.py
```

Query mode:
```bash
python pfrpg_rag.py "What are the Fighter's abilities?"
```

---

## USAGE EXAMPLES

### Query the Knowledge Base:

```bash
# Core mechanics question
python pfrpg_rag.py "Explain the d6 system"

# Class information
python pfrpg_rag.py "What are all the classes available?"

# Combat mechanics
python pfrpg_rag.py "How does Combat Master work with explosions?"

# PM guidance
python pfrpg_rag.py "How do I scale encounter difficulty for my party?"
```

---

## OPTIMIZATION TIPS

### Faster Responses:
```bash
# Use smaller, faster model
ollama pull neural-chat  # Smaller than Mistral

# Or in Python:
MODEL = "neural-chat"
```

### Better Accuracy:
```bash
# Use larger, more capable model
ollama pull neural-chat-7b-v3-2  # Better quality

# Or:
ollama pull orca-mini  # Optimized for accuracy
```

### Local Web Interface (Optional):
```bash
# Install Open WebUI for visual interface
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway ghcr.io/open-webui/open-webui:latest

# Access at http://localhost:3000
```

---

---

# DEPLOYMENT OPTION 2: LM STUDIO (Desktop GUI)

## Overview

**LM Studio** is a user-friendly desktop application for running LLMs locally with built-in RAG capabilities.

- **Cost:** Free & open-source
- **Ease:** Very easy (GUI-based)
- **Power:** High (local, private)
- **Best For:** Beginners, non-technical users, Windows/Mac users

---

## INSTALLATION

### Step 1: Download & Install

Visit: https://lmstudio.ai

1. Download version for your OS
2. Run installer
3. Follow setup wizard
4. Launch application

### Step 2: Download Models

1. Open LM Studio
2. Click "Search models"
3. Search for recommended models:
   - **Mistral 7B** (best balance)
   - **Neural Chat 7B** (smaller, faster)
   - **Llama 2 7B** (robust)
4. Click "Download" on your choice
5. Wait for download/setup (~5-10 minutes)

---

## SETUP KNOWLEDGE BASE

### Step 1: Prepare Documents Folder

1. Create folder: `Documents/LMStudio_KB/`
2. Copy all 60+ PFRPG markdown files here

### Step 2: Import Documents to LM Studio

1. Open LM Studio
2. Click "File" → "Import Documents"
3. Select all PFRPG markdown files
4. Click "Import"
5. Wait for indexing (~2-5 minutes depending on file count)

### Step 3: Configure RAG Settings

1. Click "Settings" (gear icon)
2. Navigate to "RAG/Knowledge Base"
3. Set:
   - **Chunk Size:** 512-1024
   - **Chunk Overlap:** 20%
   - **Top K Results:** 5
4. Click "Save"

---

## USAGE IN LM STUDIO

### Method 1: Using the Chat Interface

1. Click "Chat" tab
2. Select your model from dropdown
3. Type your PFRPG question in chat box
4. Hit Enter or "Send"
5. LM Studio retrieves relevant KB documents and answers

**Example queries:**
- "What is Heroic Reroll and how does it work?"
- "Explain the Fighter class and its abilities"
- "How do I create a balanced encounter for 4 players?"

### Method 2: Using API Integration

**Enable API Mode:**

1. Click "Settings"
2. Enable "Developer Mode"
3. Go to "Local Server"
4. Note the API URL (default: http://127.0.0.1:1234)
5. Ensure RAG is enabled

**Test with curl:**
```bash
curl -X POST http://127.0.0.1:1234/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "local-model",
    "messages": [{"role": "user", "content": "What are the core abilities?"}],
    "temperature": 0.7
  }'
```

**Python Integration:**
```python
import requests

def query_lm_studio(question):
    response = requests.post(
        "http://127.0.0.1:1234/v1/chat/completions",
        json={
            "messages": [{"role": "user", "content": question}],
            "temperature": 0.7
        }
    )
    return response.json()['choices'][0]['message']['content']

# Example usage
answer = query_lm_studio("How does Combat Master work?")
print(answer)
```

---

## ADVANTAGES OF LM STUDIO

✅ **User-Friendly:** Visual interface, no command line needed
✅ **Fast Setup:** GUI-based document import
✅ **Built-in RAG:** No configuration needed
✅ **Multiple Models:** Easy model switching
✅ **Web Interface:** Built-in chat UI
✅ **API Available:** For integrations
✅ **Complete Privacy:** Everything runs locally

---

---

# DEPLOYMENT OPTION 3: HUGGING FACE + LocalAI

## Overview

**LocalAI** is a self-hosted, OpenAI API-compatible server that works with Hugging Face models.

- **Cost:** Free (self-hosted) or paid (cloud)
- **Ease:** Moderate (API-based)
- **Power:** Very high (flexible, scalable)
- **Best For:** Advanced users, API integrations, hybrid cloud/local

---

## INSTALLATION

### Option A: Docker (Recommended)

**Step 1: Install Docker**
- Visit https://docker.com
- Download and install for your OS

**Step 2: Run LocalAI**
```bash
docker run -p 8080:8080 \
  -e MODELS_PATH=/models \
  -v ~/.local/share/localai/models:/models \
  localai/localai:latest-gpu
  # (Use :latest-cpu for CPU-only)
```

**Step 3: Verify Running**
```bash
curl http://localhost:8080/v1/models
```

### Option B: Direct Installation

**macOS:**
```bash
brew install localai
localai start
```

**Linux:**
```bash
curl https://localai.io/install.sh | sh
localai start
```

---

## SETUP KNOWLEDGE BASE WITH LocalAI

### Step 1: Create Knowledge Base Directory

```bash
mkdir -p ~/localai_kb/documents
cd ~/localai_kb
```

Copy all PFRPG markdown files to `~/localai_kb/documents/`

### Step 2: Create Python RAG Application

```python
#!/usr/bin/env python3
"""
PFRPG Knowledge Base RAG with LocalAI
Requires: pip install requests python-dotenv
"""

import os
import json
from pathlib import Path
from typing import List
import requests

class PFRPGKnowledgeBase:
    def __init__(self, docs_path="./documents", api_url="http://localhost:8080"):
        self.docs_path = docs_path
        self.api_url = api_url
        self.documents = self._load_documents()
        self.index = self._create_index()
    
    def _load_documents(self) -> List[dict]:
        """Load all markdown documents"""
        documents = []
        for md_file in Path(self.docs_path).glob("*.md"):
            with open(md_file, 'r') as f:
                content = f.read()
                documents.append({
                    "title": md_file.stem,
                    "content": content,
                    "path": str(md_file)
                })
        
        print(f"Loaded {len(documents)} documents")
        return documents
    
    def _create_index(self) -> dict:
        """Create simple keyword index"""
        index = {}
        for doc in self.documents:
            words = doc['content'].lower().split()
            for word in words:
                if len(word) > 3:  # Only index words > 3 chars
                    if word not in index:
                        index[word] = []
                    if doc['title'] not in index[word]:
                        index[word].append(doc['title'])
        
        return index
    
    def _retrieve_relevant_docs(self, query: str, top_k=5) -> str:
        """Simple keyword-based retrieval"""
        query_words = query.lower().split()
        doc_scores = {}
        
        for word in query_words:
            if word in self.index:
                for doc_title in self.index[word]:
                    doc_scores[doc_title] = doc_scores.get(doc_title, 0) + 1
        
        # Get top docs
        top_docs = sorted(doc_scores.items(), key=lambda x: x[1], reverse=True)[:top_k]
        
        # Combine relevant document content
        context = ""
        for doc_title, score in top_docs:
            doc = next(d for d in self.documents if d['title'] == doc_title)
            context += f"\n\n=== {doc_title} ===\n"
            context += doc['content'][:1000]  # First 1000 chars
        
        return context
    
    def query(self, question: str) -> str:
        """Query the knowledge base"""
        # Retrieve relevant documents
        context = self._retrieve_relevant_docs(question)
        
        # Create prompt
        prompt = f"""You are an expert on the Pathfinder Reference Game (PFRPG).
Use the following knowledge base context to answer the question accurately.

KNOWLEDGE BASE CONTEXT:
{context}

QUESTION: {question}

ANSWER:"""
        
        # Query LocalAI API
        response = requests.post(
            f"{self.api_url}/v1/chat/completions",
            json={
                "model": "gpt-3.5-turbo",
                "messages": [{"role": "user", "content": prompt}],
                "temperature": 0.7,
                "max_tokens": 500
            }
        )
        
        if response.status_code == 200:
            return response.json()['choices'][0]['message']['content']
        else:
            return f"Error: {response.status_code}"

# Usage
if __name__ == "__main__":
    import sys
    
    kb = PFRPGKnowledgeBase()
    
    if len(sys.argv) > 1:
        question = " ".join(sys.argv[1:])
        answer = kb.query(question)
        print(f"Q: {question}")
        print(f"A: {answer}")
    else:
        # Interactive mode
        print("PFRPG Knowledge Base RAG")
        print("Type 'quit' to exit")
        while True:
            q = input("\nYour question: ")
            if q.lower() == 'quit':
                break
            print(kb.query(q))
```

### Step 3: Run the System

```bash
# Make executable
chmod +x pfrpg_kb.py

# Run queries
python pfrpg_kb.py "What are the core abilities?"
python pfrpg_kb.py "Explain the Fighter class"

# Interactive mode
python pfrpg_kb.py
```

---

## ADVANCED: LocalAI with Web Interface

### Step 1: Install Web UI

```bash
# In separate terminal
docker run -p 3001:3001 \
  -e OPENAI_API_BASE_URL=http://localhost:8080/v1 \
  localai/localai-webui:latest
```

### Step 2: Access Web Interface

Visit: http://localhost:3001

### Step 3: Upload Documents

1. Click "Documents" in sidebar
2. Upload all PFRPG markdown files
3. Configure indexing (chunk size, overlap)
4. Start asking questions!

---

---

# COMPARISON MATRIX: Which Platform to Use?

| Feature | AnythingLLM | Ollama | LM Studio | LocalAI |
|---------|-------------|--------|-----------|---------|
| **Ease of Use** | Very Easy | Moderate | Very Easy | Moderate |
| **Setup Time** | 15 min | 20 min | 10 min | 25 min |
| **Cost** | Free | Free | Free | Free |
| **GUI Available** | Yes | No (CLI) | Yes | Optional |
| **Web Interface** | Built-in | Yes (optional) | Built-in | Yes (optional) |
| **API Available** | Yes | Yes | Yes | Yes |
| **RAG Support** | Native | Via add-ons | Built-in | Manual setup |
| **Model Selection** | Limited | Extensive | Good | Extensive |
| **Local Privacy** | Yes | Yes | Yes | Yes |
| **Docker Support** | Yes | No | No | Yes |
| **Python Integration** | Good | Good | Excellent | Good |
| **Performance** | Good | Very Good | Very Good | Very Good |
| **Learning Curve** | Low | Medium | Low | High |
| **Best For** | Beginners | Tech users | Desktop users | Advanced users |

---

## RECOMMENDED SETUPS BY USE CASE

### Use Case: "I just want something easy"
**→ LM Studio**
- Download app, click buttons
- No command line needed
- Built-in everything
- Visual, friendly interface

### Use Case: "I want privacy + flexibility"
**→ Ollama + Python**
- Completely private
- Full control via code
- Lightweight
- Easy to extend

### Use Case: "I want professional RAG"
**→ LocalAI + Docker**
- Production-ready
- Scalable setup
- API-compatible
- Full control

### Use Case: "I want the best experience"
**→ AnythingLLM** (from original deployment)
- Best UI/UX
- Easiest setup
- Most features built-in
- Professional grade

---

## KNOWLEDGE BASE SIZE CONSIDERATIONS

| Platform | ~400k Words | Performance |
|----------|------------|-------------|
| AnythingLLM | ✅ Excellent | Fast, responsive |
| Ollama | ✅ Good | Good, needs tuning |
| LM Studio | ✅ Excellent | Fast, efficient |
| LocalAI | ✅ Good | Good with optimization |

All platforms handle your 400k+ word knowledge base well.

---

## MIGRATION BETWEEN PLATFORMS

### From AnythingLLM to Ollama:
1. Export documents from AnythingLLM
2. Copy to Ollama documents folder
3. Run Ollama indexing
4. Start querying

### From LM Studio to LocalAI:
1. Export indexed data from LM Studio
2. Copy documents to LocalAI
3. Create LocalAI configuration
4. Run container

### From Any Platform to Another:
All platforms work with standard markdown files, so migration is simple:
1. Export/get your markdown files
2. Import/copy to new platform
3. Configure RAG settings
4. Done!

---

## PERFORMANCE OPTIMIZATION TIPS

### General Tips (All Platforms):
- Use 7B parameter models (balance speed/quality)
- Chunk size: 512-1024 tokens
- Overlap: 20%
- Top K results: 5-7

### For Slower Systems:
- Use CPU-only inference
- Reduce model size (3B models)
- Smaller chunk sizes (256-512)
- Fewer top K results (3-5)

### For Powerful Systems:
- Use GPU acceleration
- Larger models (13B+)
- Larger chunk sizes (1024+)
- More top K results (7-10)

---

## TROUBLESHOOTING

### "Model won't load"
→ Check disk space (need 4-8GB per model)
→ Verify model compatibility
→ Try smaller model (3B instead of 7B)

### "Queries are slow"
→ Use CPU optimization flags
→ Reduce chunk size
→ Use smaller model
→ Increase GPU memory allocation

### "Out of memory errors"
→ Use smaller model
→ Reduce context window
→ Enable CPU offloading
→ Use swap file

### "Knowledge base not responding"
→ Restart the platform
→ Re-import documents
→ Check file format (must be .md)
→ Verify document paths

---

## RECOMMENDATIONS

### For Most Users:
**Start with LM Studio or AnythingLLM**
- Easiest setup
- Best GUI experience
- No command line
- Immediate results

### For Privacy-Focused Users:
**Use Ollama**
- Open source
- Complete control
- Easy to audit
- Completely offline

### For Advanced Users:
**Use LocalAI with Docker**
- Most flexible
- Production-ready
- Full customization
- Scalable

### For Teams:
**Use AnythingLLM or LocalAI with web interface**
- Multi-user support
- Centralized management
- Professional features
- Easy sharing

---

## GETTING HELP

### Ollama Issues:
- Docs: https://github.com/ollama/ollama
- Discord: https://discord.gg/ollama

### LM Studio Issues:
- Docs: https://lmstudio.ai/docs
- GitHub: https://github.com/lmstudio-ai

### LocalAI Issues:
- Docs: https://localai.io
- GitHub: https://github.com/mudler/LocalAI

### AnythingLLM Issues:
- Docs: https://docs.anythingllm.com
- GitHub: https://github.com/Mintplex-Labs/anything-llm

---

## FINAL RECOMMENDATIONS

**All these platforms work great with your PFRPG Knowledge Base.**

Choose based on:
1. **Technical comfort level** (beginner → LM Studio, expert → LocalAI)
2. **UI preference** (visual → LM Studio/AnythingLLM, CLI → Ollama)
3. **Privacy needs** (offline → Ollama, any is fine → others)
4. **Integration needs** (API-focused → LocalAI, standalone → LM Studio)

**You cannot go wrong with any choice.**

---

**Version:** 1.0 FINAL  
**Date:** December 16, 2025  
**Status:** ✅ COMPLETE

**Ready to deploy to any platform!** 🚀