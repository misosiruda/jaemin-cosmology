# Jaemin Cosmology

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20506269.svg)](https://doi.org/10.5281/zenodo.20506269)

This repository contains a Korean working-paper manuscript for:

**The Brain as a Higher-Dimensional Interface: A Formal Framework for Consciousness, Intuition, Intelligence, and Subjective Time**

The manuscript is currently written in Korean. See [README.ko.md](README.ko.md) for the Korean landing page.

## Status

This repository contains a Korean working-paper manuscript. The project proposes a speculative formal framework for modeling consciousness, intuition, cognitive efficiency, AGI efficiency gaps, and subjective time through the hypothesis of a higher-dimensional information interface. It is not an empirically confirmed scientific theory.

The authoritative released manuscript remains the Korean working-paper release `v0.1.0-ko`. An English draft scaffold exists under `paper/en/` and now contains initial frontmatter, framing sections, and core mathematical framework sections, but it is not yet a full English version and should not be cited as the authoritative English translation.

Author: Jaemin Seo

## Repository Structure

```text
jaemin-cosmology/
  .zenodo.json
  .github/
    workflows/
      typst.yml
  CHANGELOG.md
  CITATION.cff
  LICENSE
  Makefile
  README.md
  README.ko.md
  paper/
    en/
      main-en.typ        # English translation scaffold
      translation-notes.md
    ko/
      main-ko.typ
      main-ko.pdf        # generated locally or attached as a release asset
  references/
    references.bib
  docs/
    codex-release-workflow.ko.md
    abstract-en.md
    abstract-ko.md
    faq-en.md
    faq-ko.md
    ai-assistance-note.md
    license-note.md
    one-page-summary-en.md
    one-page-summary-ko.md
    reference-audit.md
    release-checklist-v0.1.0-ko.md
    release-notes/
      v0.1.0-ko.md
    citation.md
    scope-and-nongoals.en.md
    scope-and-nongoals.ko.md
  legacy/
    latex/
      main.tex
  scripts/
    build.sh
```

## Build

Required tools:

- Typst CLI 0.14.2 or newer
- A Korean font such as `Noto Sans CJK KR`, `NanumGothic`, or `Malgun Gothic`

Recommended build command:

```bash
make build
```

The default `build` target builds the Korean manuscript. Optional English scaffold targets are also available:

```bash
make build-en
make watch-en
make build-all
```

Direct Typst command:

```bash
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
```

Direct English scaffold command:

```bash
typst compile --root . paper/en/main-en.typ paper/en/main-en.pdf
```

The `--root .` option is required because the bibliography is stored outside the `paper/ko/` source directory.

Watch mode:

```bash
make watch
```

Translation notes for future English work are in [paper/en/translation-notes.md](paper/en/translation-notes.md).

## Continuous Integration

GitHub Actions builds the Korean Typst manuscript on pull requests and pushes to `main`. The generated PDF is uploaded as a workflow artifact and is not tracked in Git.

## Caution

The manuscript should be read as a speculative formal framework and hypothesis space. It does not claim empirical confirmation and does not claim to replace standard physics or neuroscience.

For a fuller statement, see:

- [Scope and Non-Goals (English)](docs/scope-and-nongoals.en.md)
- [범위와 비목표 (Korean)](docs/scope-and-nongoals.ko.md)

## Reference Metadata Status

Bibliographic metadata completed the PR 14 consistency pass for `v0.1.0-ko` release preparation. The audit records 19 verified entries, 0 partially verified entries, and 0 unresolved entries. `riemann1854` keeps the existing citation key but now uses the 1868 Abhandlungen article as the main bibliographic record.

See [docs/reference-audit.md](docs/reference-audit.md).

## Public Summaries

- English abstract: [docs/abstract-en.md](docs/abstract-en.md)
- Korean abstract: [docs/abstract-ko.md](docs/abstract-ko.md)
- English one-page summary: [docs/one-page-summary-en.md](docs/one-page-summary-en.md)
- Korean one-page summary: [docs/one-page-summary-ko.md](docs/one-page-summary-ko.md)
- English FAQ: [docs/faq-en.md](docs/faq-en.md)
- Korean FAQ: [docs/faq-ko.md](docs/faq-ko.md)
- English translation scaffold notes: [paper/en/translation-notes.md](paper/en/translation-notes.md)
- AI assistance note: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- Release notes: [docs/release-notes/v0.1.0-ko.md](docs/release-notes/v0.1.0-ko.md)
- Release checklist: [docs/release-checklist-v0.1.0-ko.md](docs/release-checklist-v0.1.0-ko.md)
- Citation guide: [docs/citation.md](docs/citation.md)

## Citation and License

- Citation metadata: [CITATION.cff](CITATION.cff)
- License: [LICENSE](LICENSE)
- License note: [docs/license-note.md](docs/license-note.md)
- AI assistance note: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- Reference audit: [docs/reference-audit.md](docs/reference-audit.md)
- Release checklist: [docs/release-checklist-v0.1.0-ko.md](docs/release-checklist-v0.1.0-ko.md)
- Citation guide: [docs/citation.md](docs/citation.md)
- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Korean README: [README.ko.md](README.ko.md)

Zenodo DOI: [10.5281/zenodo.20506269](https://doi.org/10.5281/zenodo.20506269)
