# how-they-market

A Claude Code agent that researches how companies market themselves. Fast, web-search-only approach.

## What It Does

Give it a company name and it produces a compact marketing analysis:

- **Positioning** — How they describe themselves, target audience, differentiator
- **Channels** — Where they publish (Twitter, LinkedIn, YouTube, blog)
- **Community** — HN mentions/sentiment, Reddit presence
- **Tactics** — 2-3 specific strategies worth learning from
- **Gaps & Next** — What couldn't be researched, follow-up directions

## Installation

```bash
# Clone this repo
git clone https://github.com/j1ngg/how-they-market.git
cd how-they-market

# Run Claude Code from within this directory
claude
```

No Python dependencies. No API keys. Just Claude Code.

## Usage

```
Analyze how [company] markets
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

## Output Format

```
**{Company}: Marketing Analysis** | {Date}

**Positioning:** {one-liner} → {audience} → {differentiator}

**Channels:**
| Channel | Link | Active | Notes |
|---------|------|--------|-------|
| Website | | | |
| Twitter | | | |
| ... | | | |

**Community:** HN: {summary} | Reddit: {summary}

**Tactics:**
- {tactic}: {description} [link]

**Gaps:** {gaps} | **Next:** {follow-up}
```

## How It Works

1. Runs parallel web searches (HN, Reddit, general marketing coverage)
2. Fetches company homepage for positioning
3. Outputs compact report (~300-400 words)

No scripts, no APIs, no dependencies beyond Claude Code.

## License

MIT
