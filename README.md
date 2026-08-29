# verma-consulting/homebrew-tap

Homebrew tap for [vermastaff](https://github.com/verma-consulting/vermastaff) — the local-first AI workforce operating system for your Mac.

## Install

```bash
brew tap verma-consulting/tap
brew install vermastaff
```

### Prerequisites

vermastaff needs **[Ollama](https://ollama.com)** running locally for models:

```bash
brew install ollama
ollama serve
# pull at least one tools-capable model, e.g.:
ollama pull qwen2.5:7b
```

Also requires a recent **Node** (Homebrew’s `node` formula; vermastaff needs ≥ 24.15.0).

## Verify

```bash
vermastaff --version
vermastaff doctor
brew test vermastaff
```

## Also available on npm

```bash
npm install -g @verma-consulting/vermastaff
# or
npm install -g @verma-consulting/vstaff
```

## Updating

Formula bumps are opened automatically from the [vermastaff](https://github.com/verma-consulting/vermastaff) release workflow after each npm publish. Review and merge the PR on this tap.

## License

Copyright Verma Consulting. All rights reserved. Proprietary — no public grant. See [`LICENSE`](./LICENSE). The formula uses Homebrew's `license :cannot_represent`.
