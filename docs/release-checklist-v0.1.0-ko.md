# v0.1.0-ko Release Checklist

This checklist is for the manual GitHub Release and Zenodo archival steps for `v0.1.0-ko`.

## Release Metadata

| Field | Value |
| --- | --- |
| Release tag | `v0.1.0-ko` |
| Release title | `v0.1.0-ko — Korean Working Paper Release` |
| Version metadata | `0.1.0-ko` |
| Release date | `2026-06-02` |
| Language | Korean |
| Upload type | `publication` |
| Publication type | `workingpaper` |
| License | `CC BY 4.0` / `cc-by-4.0` |
| Creator | `Seo, Jaemin` |
| ORCID | omitted until verified |
| Affiliation | omitted until verified |
| Zenodo DOI | to be added after Zenodo issues it |

## Confirmed Before Release

- The Korean Typst manuscript builds locally with `typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf`.
- GitHub Actions builds the Korean PDF and uploads it as a workflow artifact.
- `paper/ko/main-ko.pdf` is a local or CI-generated release asset and is not tracked in Git.
- `.zenodo.json` is the Zenodo metadata source of truth.
- `.zenodo.json` and `CITATION.cff` do not contain a repository DOI.
- `.zenodo.json` and `CITATION.cff` do not contain ORCID or affiliation fields.
- `references/references.bib` has 19 verified entries according to `docs/reference-audit.md`.
- `riemann1854` keeps the citation key and uses the 1868 Abhandlungen article as the main bibliographic record.
- The manuscript is described as a Korean working-paper manuscript and a speculative formal framework.
- No empirical-confirmation claim has been introduced.

## Manual Git Commands

Run these only when ready to create the release tag.

```bash
git status --short
git pull --ff-only origin main
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
git tag -a v0.1.0-ko -m "Korean working paper release v0.1.0-ko"
git push origin v0.1.0-ko
```

## GitHub Release

Release title:

```text
v0.1.0-ko — Korean Working Paper Release
```

Use the contents of `docs/release-notes/v0.1.0-ko.md` as the release body.

Attach this PDF as a release asset:

```text
paper/ko/main-ko.pdf
```

Do not add a DOI manually in the GitHub Release body before Zenodo issues one.

## Zenodo

- Confirm the GitHub-Zenodo integration is enabled for `misosiruda/jaemin-cosmology`.
- Let Zenodo create the DOI from the GitHub release.
- Confirm Zenodo uses `.zenodo.json` metadata.
- Do not manually add ORCID, affiliation, or `Independent Researcher` unless the author explicitly decides to disclose those values.
- After Zenodo issues the DOI, provide the DOI and DOI URL for the PR 16 update.

## Post-DOI Follow-Up

After Zenodo DOI assignment, update:

- `README.md`
- `README.ko.md`
- `CITATION.cff`
- `.zenodo.json` if needed
- `docs/release-notes/v0.1.0-ko.md`
- `docs/citation.md` if created in PR 16
