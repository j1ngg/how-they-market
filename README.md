# how-they-market

A Claude Code agent that researches how companies and people market themselves. Analyzes channels, voice, patterns, and engagement metrics across platforms.

## What It Does

Give it a company name, Twitter handle, or person, and it produces a structured marketing analysis:

- **Channels** — Where they publish (Twitter, LinkedIn, YouTube, blog, newsletter, TikTok, Instagram)
- **Engagement metrics** — Follower counts, view averages, HN points, Reddit scores
- **Voice & tone** — How they sound, technical depth, formatting patterns
- **Content patterns** — Posting cadence, content mix, what's working
- **Hacker News presence** — What the tech community says about them
- **YouTube analysis** — Video transcripts and content themes (via yt-dlp)
- **Notable tactics** — Specific strategies worth learning from
- **Follow-up research** — Suggested next steps and related accounts

## Installation

**Prerequisites:** [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code), Python 3.8+

```bash
# Install Claude Code CLI
npm install -g @anthropic-ai/claude-code

# Clone this repo
git clone https://github.com/j1ngg/how-they-market.git
cd how-they-market

# Run setup (installs Python dependencies)
chmod +x setup.sh
./setup.sh

# Run Claude Code
claude
```

## Usage

```
Analyze how [company/person] markets
```

### Examples

```
Analyze how Vercel markets
```

```
Analyze how @levelsio markets, focus on his Twitter
```

```
Research Linear's marketing strategy
```

```
How does Lenny's Newsletter market itself?
```

### Focus Areas

You can narrow the analysis to specific areas:

- "Focus on their Twitter/X presence"
- "Focus on how they launch products"
- "Focus on their newsletter strategy"
- "Focus on LinkedIn vs Twitter voice"
- "Focus on their YouTube content"
- "Focus on how they use founders for content"

## Data Sources

### Free (no API key required)

| Source | What It Provides | Reliability |
|--------|------------------|-------------|
| **Hacker News** | Stories, comments, points, community sentiment | High |
| **Reddit** | Posts, comments, subreddit activity, scores | High |
| **YouTube** | Channel info, video metadata, transcripts | Medium (requires yt-dlp) |
| **Web search** | General presence, news, social links | High (Claude's built-in WebSearch) |

### Optional (API key)

| Source | What It Provides | Cost |
|--------|------------------|------|
| **ScrapeCreators** | Twitter/TikTok/Instagram followers, engagement | $10/5,000 credits |

To enable ScrapeCreators:

```bash
export SCRAPECREATORS_API_KEY="your_key"   # scrapecreators.com
```

**Note:** The collection script gathers HN, Reddit, and YouTube data. The agent uses its built-in WebSearch and WebFetch for web research.

## Structure

```
how-they-market/
├── README.md
├── LICENSE
├── setup.sh                    # First-run setup
├── .claude/
│   └── agents/
│       └── how-they-market.md  # Main agent
├── scripts/
│   ├── research.py             # Collection script
│   ├── requirements.txt
│   └── lib/
│       ├── hackernews.py       # HN Algolia integration
│       ├── reddit.py           # Reddit JSON API
│       ├── youtube.py          # yt-dlp integration
│       ├── scrapecreators.py   # ScrapeCreators API (optional)
│       └── web.py              # Page fetching utilities
└── output/                     # Research output files
```

## Running the Collection Script Directly

You can run the Python collection script without Claude Code:

```bash
python3 scripts/research.py "company name"
```

Output is JSON to stdout:

```bash
python3 scripts/research.py "Linear" > linear-research.json
```

Or save to a file:

```bash
python3 scripts/research.py "Linear" --output output/linear.json
```

## Optional: Social Media Metrics

For Twitter/TikTok/Instagram follower counts and engagement data:

```bash
export SCRAPECREATORS_API_KEY="your_key"
```

Get a key at [scrapecreators.com](https://scrapecreators.com/) ($10 for 5,000 API credits).

## License

MIT

## Credits

Architecture inspired by [last30days-skill](https://github.com/mvanhorn/last30days-skill).
