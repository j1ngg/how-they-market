# how-they-market

A Claude Code agent that researches how companies and creators market themselves. Produces a narrative analysis — not just what channels they use, but how the pieces fit together.

## What It Does

Give it a company or creator and it produces a structured marketing analysis:

- **The Model** — How their distribution, content, and monetization connect as a flywheel
- **Channels** — Where they publish and what role each channel plays
- **Content Strategy** — Cadence, formats, hook patterns, with actual quoted examples
- **Monetization** — Products, prices, launch mechanics, revenue figures where findable
- **Evolution** — What changed over time, what was abandoned, where they're heading
- **Key Tactics** — Named mechanisms with specific examples
- **What to Steal** — Transferable principles someone else could apply directly

## Installation

```bash
git clone https://github.com/j1ngg/how-they-market.git
cd how-they-market
claude
```

No Python dependencies. No API keys. Just Claude Code.

## Usage

```
Analyze how [company or person] markets
```

### Examples

```
Analyze how Vercel markets
```

```
Research Linear's marketing strategy
```

```
How does Resend market itself?
```

```
Analyze how @levelsio markets
```

## How It Works

The agent runs in three research rounds before writing:

1. **Discovery** — 10 parallel web searches tailored to whether the target is a solo creator or a company
2. **Primary source fetching** — Fetches the 5 most promising sources in full (interviews, third-party breakdowns, their own posts) rather than summarizing search snippets
3. **Follow-up** — Up to 3 targeted searches to chase specific leads or fill gaps

Then it identifies the strategic model before writing — how the channels, content, and monetization connect — and leads the report with that synthesis.

## Output Format

```
### [Target]: Marketing Analysis
Type: [Creator / Company] | Date: [Date]

### Who They Are
Why their marketing is worth studying.

### The Model
How distribution → trust → conversion connects. Named and explained.

### Channels
| Channel | Link | Activity | Role in the Model |

### Content Strategy
Cadence, formats, hook patterns with actual quoted examples.

### Monetization
Products, prices, launch mechanics, revenue figures.

### Evolution
What changed, what was abandoned, where they're heading.

### Voice & Tone
What makes them sound different, with quoted examples.

### Community Presence
HN and Reddit — presence, sentiment, notable discussions.

### Key Tactics
Named mechanisms with specific examples and why they work.

### What to Steal
Transferable principles written as named, actionable patterns.

### Gaps & Sources
What was blocked or paywalled, and where to look next.
```

## License

MIT
