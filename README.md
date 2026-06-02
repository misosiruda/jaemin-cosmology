# Jaemin Cosmology

This repository contains a Korean working-paper manuscript for:

**The Brain as a Higher-Dimensional Interface: A Formal Framework for Consciousness, Intuition, Intelligence, and Subjective Time**

The manuscript is currently written in Korean. See [README.ko.md](README.ko.md) for the Korean landing page.

## Status

This project is a speculative formal framework and working-paper manuscript. It is not an empirically confirmed theory of physics, neuroscience, or consciousness.

## Repository Structure

```text
jaemin-cosmology/
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
  legacy/
    latex/
      main.tex
  scripts/
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
