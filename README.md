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
    license-note.md
    reference-audit.md
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

## Caution

The manuscript should be read as a speculative formal framework and hypothesis space. It does not claim empirical confirmation and does not claim to replace standard physics or neuroscience.

For a fuller statement, see:

- [Scope and Non-Goals (English)](docs/scope-and-nongoals.en.md)
- [범위와 비목표 (Korean)](docs/scope-and-nongoals.ko.md)

## Reference Metadata Status

Bibliographic metadata is currently under audit. The current audit file marks entries as requiring manual verification. DOI, author names, publication years, journal or publisher metadata, volume/issue/page ranges, URLs, arXiv IDs, and ISBNs should not be treated as final until the manual verification pass is complete.

See [docs/reference-audit.md](docs/reference-audit.md).

## Citation and License

- Citation metadata: [CITATION.cff](CITATION.cff)
- License: [LICENSE](LICENSE)
- License note: [docs/license-note.md](docs/license-note.md)
- Reference audit: [docs/reference-audit.md](docs/reference-audit.md)
- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Korean README: [README.ko.md](README.ko.md)

No DOI has been assigned yet. A DOI will be added only after release through Zenodo or another archival service.
