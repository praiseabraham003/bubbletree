# TheRealism × BubbleTree AI Studio — Agent Collection

A complete AI department for TheRealism, purpose-built to develop and ship **BubbleTree AI Studio** — the AI-powered pre-production platform for filmmakers, ad creators, and comics artists.

Each agent is a specialized expert with a defined personality, domain knowledge, workflows, and deliverable templates. Activate any agent in Claude Code to summon the right expertise for the task at hand.

---

## Quick Install

```bash
# Install all agents to Claude Code
cp -r therealism-agents/**/*.md ~/.claude/agents/

# Or install one division at a time
cp therealism-agents/product/*.md ~/.claude/agents/
cp therealism-agents/engineering/*.md ~/.claude/agents/
cp therealism-agents/ai/*.md ~/.claude/agents/
cp therealism-agents/design/*.md ~/.claude/agents/
cp therealism-agents/modules/*.md ~/.claude/agents/
cp therealism-agents/creative/*.md ~/.claude/agents/
cp therealism-agents/operations/*.md ~/.claude/agents/
```

Then activate any agent in a Claude Code session:
```
Activate BubbleTree Product Lead — let's plan the Project Hub sprint.
Use the BubbleTree Backend Architect to design the call sheet data model.
Activate TheRealism Creative Director and review this motion brief.
```

---

## The Department

### 🎯 Product
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree Product Lead | `product/product-lead.md` | Roadmap, feature briefs, sprint planning, release gating |

### ⚙️ Engineering
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree Fullstack Engineer | `engineering/fullstack-engineer.md` | React/Next.js frontend, API integration, end-to-end implementation |
| BubbleTree Backend Architect | `engineering/backend-architect.md` | Database design, API architecture, AI job queue, infra decisions |

### 🤖 AI
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree AI Engineer | `ai/ai-engineer.md` | AI integration across all modules, prompt engineering, model quality, evals |

### 🎨 Design
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree UI/UX Designer | `design/uiux-designer.md` | Platform design system, module UX, Project Hub design, accessibility |

### 🎬 Modules (Domain Experts)
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree Project Hub Engineer | `modules/project-hub-engineer.md` | Scheduling, call sheets, production management, cross-module sync |
| BubbleTree Screenplay Specialist | `modules/screenplay-specialist.md` | Script formatting engine, scene breakdown AI, production bridge |
| BubbleTree Storyboard Specialist | `modules/storyboard-specialist.md` | Panel creation, sequence management, AI image generation integration |

### 🎞️ Creative (TheRealism)
| Agent | File | Focus |
|-------|------|-------|
| TheRealism Creative Director | `creative/creative-director.md` | Brand identity, creative quality bar, marketing direction, motion/3D oversight |

### 🚀 Operations
| Agent | File | Focus |
|-------|------|-------|
| BubbleTree QA Engineer | `operations/qa-engineer.md` | Test strategy, bug reporting, cross-module integration testing, release gating |
| BubbleTree Growth Strategist | `operations/growth-strategist.md` | Go-to-market, beta recruitment, community, positioning, launch campaigns |

---

## Current Build Priority

Based on BubbleTree AI Studio's current status:

```
✅  Screenplay module     — MVP complete → Polish phase
✅  Ad Studio             — MVP complete → Polish phase  
✅  Comics Studio         — MVP complete → Polish phase
🔨  Project Hub           — Active build (scheduling + call sheets)
🔨  Backend infrastructure — Active build (critical path)
⚙️  AI integration        — Ongoing improvement
🎨  UI/UX                 — Design in progress
```

**Start here for current work:**
```
Activate BubbleTree Backend Architect — design the Project Hub data model.
Activate BubbleTree Project Hub Engineer — build the call sheet generation system.
Activate BubbleTree AI Engineer — run an eval on the screenplay scene breakdown prompt.
```

---

## Multi-Agent Workflows

### Sprint Planning
```
1. BubbleTree Product Lead    → define feature briefs and priorities
2. BubbleTree Backend Architect → validate data model and API contracts
3. BubbleTree Fullstack Engineer → estimate and implement
4. BubbleTree QA Engineer     → write test cases and sign off
```

### New Module Feature
```
1. BubbleTree Product Lead         → feature brief
2. Domain Module Specialist        → domain logic and requirements
3. BubbleTree AI Engineer          → AI integration and prompt design
4. BubbleTree UI/UX Designer       → UX flow and component specs
5. BubbleTree Fullstack Engineer   → implementation
6. BubbleTree QA Engineer          → test and sign off
```

### Marketing Asset Production
```
1. BubbleTree Growth Strategist    → campaign brief and channel strategy
2. TheRealism Creative Director    → creative brief and direction
3. [Motion / 3D specialist]        → production
4. TheRealism Creative Director    → review and approval
```

---

## About TheRealism

TheRealism is a premium creative studio — graphic design, video editing, 3D works, and motion graphics — and the studio behind BubbleTree AI Studio. These agents represent the full department working to take BubbleTree from advanced MVP to production-ready platform.

---

*Built for Claude Code. Each agent is a `.md` file with YAML frontmatter compatible with Claude Code's native agent format.*
