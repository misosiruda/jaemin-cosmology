# Jaemin Cosmology

This repository contains a Korean working-paper manuscript for:

**The Brain as a Higher-Dimensional Interface: A Formal Framework for Consciousness, Intuition, Intelligence, and Subjective Time**

The manuscript is currently written in Korean. See [README.ko.md](README.ko.md) for the Korean landing page.

## Status

This repository contains a Korean working-paper manuscript. The project proposes a speculative formal framework for modeling consciousness, intuition, cognitive efficiency, AGI efficiency gaps, and subjective time through the hypothesis of a higher-dimensional information interface. It is not an empirically confirmed scientific theory.

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
    release-notes/
      v0.1.0-ko.md
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

Direct Typst command:

```bash
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
```

The `--root .` option is required because the bibliography is stored outside the `paper/ko/` source directory.

Watch mode:

```bash
make watch
```

## Continuous Integration

GitHub Actions builds the Korean Typst manuscript on pull requests and pushes to `main`. The generated PDF is uploaded as a workflow artifact and is not tracked in Git.

## Caution

The manuscript should be read as a speculative formal framework and hypothesis space. It does not claim empirical confirmation and does not claim to replace standard physics or neuroscience.

For a fuller statement, see:

- [Scope and Non-Goals (English)](docs/scope-and-nongoals.en.md)
- [범위와 비목표 (Korean)](docs/scope-and-nongoals.ko.md)

## Reference Metadata Status

Bibliographic metadata is currently under audit. The current audit file marks entries as requiring manual verification. DOI, author names, publication years, journal or publisher metadata, volume/issue/page ranges, URLs, arXiv IDs, and ISBNs should not be treated as final until the manual verification pass is complete.

See [docs/reference-audit.md](docs/reference-audit.md).

## Public Summaries

- English abstract: [docs/abstract-en.md](docs/abstract-en.md)
- Korean abstract: [docs/abstract-ko.md](docs/abstract-ko.md)
- English one-page summary: [docs/one-page-summary-en.md](docs/one-page-summary-en.md)
- Korean one-page summary: [docs/one-page-summary-ko.md](docs/one-page-summary-ko.md)
- English FAQ: [docs/faq-en.md](docs/faq-en.md)
- Korean FAQ: [docs/faq-ko.md](docs/faq-ko.md)
- AI assistance note: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- Release notes: [docs/release-notes/v0.1.0-ko.md](docs/release-notes/v0.1.0-ko.md)

## Citation and License

- Citation metadata: [CITATION.cff](CITATION.cff)
- License: [LICENSE](LICENSE)
- License note: [docs/license-note.md](docs/license-note.md)
- AI assistance note: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- Reference audit: [docs/reference-audit.md](docs/reference-audit.md)
- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Korean README: [README.ko.md](README.ko.md)

No DOI has been assigned yet. A DOI will be added only after release through Zenodo or another archival service.
