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

- Zenodo GitHub integration must be enabled before publishing the GitHub Release.
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

## E-0. Zenodo Integration Check

Do this before publishing the GitHub Release.

```text
Zenodo login
Profile menu
GitHub
Sync now
Find misosiruda/jaemin-cosmology
Confirm the repository toggle is ON
```

If the repository toggle is OFF, turn it ON before publishing the GitHub Release. Zenodo ingests new GitHub releases only after the repository integration is enabled.

## E-1. Local Release Commit Check

```powershell
git status --short
git pull --ff-only origin main
git log -1 --oneline
git rev-parse HEAD
git rev-parse origin/main
```

Expected:

- `git status --short` is empty, except ignored local PDF artifacts are acceptable.
- `HEAD` equals `origin/main`.
- The current commit is the latest release-prep commit.

## E-2. PDF Rebuild

```powershell
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
Test-Path paper/ko/main-ko.pdf
Get-Item paper/ko/main-ko.pdf | Select-Object Name, Length, LastWriteTime
```

`Test-Path` should return `True`.

Optional clearer asset filename:

```powershell
Copy-Item paper/ko/main-ko.pdf jaemin-cosmology-v0.1.0-ko.pdf
```

If this copy is made, attach `jaemin-cosmology-v0.1.0-ko.pdf` to the GitHub Release instead of the generic local filename.

## E-3. Annotated Tag

Run these only when ready to create the release tag.

```powershell
git status --short
git pull --ff-only origin main
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
git tag -a v0.1.0-ko -m "Korean working paper release v0.1.0-ko"
git show v0.1.0-ko --no-patch
git push origin v0.1.0-ko
```

If the tag already exists, do not force-push or overwrite it. Inspect it first:

```powershell
git tag --list v0.1.0-ko
git show v0.1.0-ko --no-patch
```

## E-4. GitHub Release Draft

Release title:

```text
v0.1.0-ko — Korean Working Paper Release
```

Use the contents of `docs/release-notes/v0.1.0-ko.md` as the release body.

Recommended settings:

| Field | Value |
| --- | --- |
| Tag | `v0.1.0-ko` |
| Set as latest release | checked |
| Pre-release | unchecked |
| Auto-generate release notes | do not use |
| Create discussion | optional |

Create the release as a draft first.

## E-5. PDF Asset

Attach this PDF as a release asset:

```text
paper/ko/main-ko.pdf
```

If the optional copy was made, attach:

```text
jaemin-cosmology-v0.1.0-ko.pdf
```

Do not add a DOI manually in the GitHub Release body before Zenodo issues one.

## E-6. Publish Release

Only publish after:

- Zenodo GitHub integration is ON.
- The release notes are pasted.
- The PDF asset is attached.
- Pre-release is unchecked.
- No DOI has been manually added.

## E-7. Zenodo DOI Check

- Confirm the GitHub-Zenodo integration is enabled for `misosiruda/jaemin-cosmology`.
- Let Zenodo create the DOI from the GitHub release.
- Confirm Zenodo uses `.zenodo.json` metadata.
- Do not manually add ORCID, affiliation, or `Independent Researcher` unless the author explicitly decides to disclose those values.
- After Zenodo issues the DOI, provide the DOI and DOI URL for the PR 16 update.

## E-8. Post-DOI Follow-Up

After Zenodo DOI assignment, update:

- `README.md`
- `README.ko.md`
- `CITATION.cff`
- `.zenodo.json` if needed
- `docs/release-notes/v0.1.0-ko.md`
- `docs/citation.md` if created in PR 16
