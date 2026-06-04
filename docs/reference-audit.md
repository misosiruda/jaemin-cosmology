# Reference Audit

This audit summarizes the bibliography metadata in `references/references.bib`.

Verification pass: `2026-06-02`, for `v0.1.0-ko` release preparation.

## Rules

- Do not invent DOI, ISBN, URL, page, publisher, journal, arXiv, year, ORCID, or affiliation metadata.
- Keep DOI and URL fields blank when no reliable source was verified.
- Keep arXiv entries as arXiv preprint entries unless the release intentionally switches to the published journal version.
- Keep repository-level creator metadata to the verified author name only.
- Do not add ORCID or affiliation unless the author provides verified values.

## Summary

| Metric | Count |
| --- | --- |
| Total entries | 19 |
| Verified entries | 19 |
| Partially verified entries | 0 |
| Unresolved entries | 0 |
| Entries with DOI | 13 |
| Entries without DOI | 6 |
| Entries with URL | 17 |
| Entries without URL | 2 |

Entries without DOI, intentionally left blank.

- `abbott1884`
- `riemann1854`
- `kahneman2011`
- `bergson1889`
- `hebb1949`
- `sporns2011`

Entries without URL, intentionally left blank because DOI metadata is present.

- `shannon1948`
- `einstein1916`

## Status Table

| BibTeX key | Status | DOI? | URL? | Notes |
| --- | --- | --- | --- | --- |
| `shannon1948` | verified | yes | no | Two 1948 Bell System Technical Journal parts verified; one citation key retained. |
| `coverthomas2006` | verified | yes | yes | Second edition, 2006, Wiley-Interscience, ISBN, and DOI verified. |
| `amari2016` | verified | yes | yes | Springer book metadata, series, volume, ISBN, DOI, and edition verified. |
| `friston2010` | verified | yes | yes | Nature Reviews Neuroscience volume, pages, date, and DOI verified. |
| `abbott1884` | verified | no | yes | WorldCat confirms the 1884 Seeley & Co., London record. URL normalized to OCLC. |
| `einstein1916` | verified | yes | no | Annalen der Physik volume, issue, pages, year, and DOI verified. |
| `riemann1854` | verified | no | yes | Main record uses the 1868 Abhandlungen article; 1854 lecture and 1867 separate printing are preserved in `note`. |
| `kahneman2011` | verified | no | yes | Macmillan/Farrar, Straus and Giroux page confirms ISBN, imprint, and 2011 date. |
| `bergson1889` | verified | no | yes | Google Books confirms F. Alcan, 1889, 182 pages. |
| `hebb1949` | verified | no | yes | WorldCat confirms D. O. Hebb, Wiley, New York, 1949. URL changed from PDF to WorldCat. |
| `sporns2011` | verified | no | yes | MIT Press confirms hardcover ISBN, 2010 publication date, and publisher. Key retained. |
| `lecun2015` | verified | yes | yes | Nature volume, pages, year, and DOI verified. |
| `bengio2017consciousnessprior` | verified | yes | yes | arXiv title, author, class `cs.LG`, and arXiv-issued DOI verified. |
| `chang2019informationclosure` | verified | yes | yes | arXiv metadata verified; related journal DOI noted but not substituted. |
| `lu2024riemannianintelligence` | verified | yes | yes | arXiv title, author, class `cs.AI`, history, and arXiv-issued DOI verified. |
| `lin2023topologygeometry` | verified | yes | yes | arXiv metadata verified; PNAS related DOI noted but not substituted. |
| `tschantz2022hybridpredictive` | verified | yes | yes | arXiv title, authors, class `q-bio.NC`, and arXiv-issued DOI verified. |
| `kurshan2023heterogeneousagi` | verified | yes | yes | arXiv confirms `Heterogenous` spelling; related journal DOI noted but not substituted. |
| `jura2020synapticclock` | verified | yes | yes | arXiv title, author, class `q-bio.NC`, and arXiv-issued DOI verified. |

## Verification Details

`shannon1948`

- Verified against DOI records for both 1948 parts.
- Part 1 DOI `https://doi.org/10.1002/j.1538-7305.1948.tb01338.x`
- Part 2 DOI `https://doi.org/10.1002/j.1538-7305.1948.tb00917.x`
- Metadata index `https://cir.nii.ac.jp/crid/1360855570995138048`

`coverthomas2006`

- Wiley-VCH product page confirms second edition, September 2006, ISBN, and publisher.
- WorldCat confirms second edition, Wiley-Interscience, Hoboken, 2006, ISBNs, and DOI.
- Crossref/CiNii confirms DOI `10.1002/047174882X`.
- Publisher URL `https://www.wiley-vch.de/en/areas-interest/computing-computer-sciences/computer-science-17cs/information-technologies-17cs3/elements-of-information-theory-978-0-471-24195-9`
- WorldCat URL `https://search.worldcat.org/zh-cn/title/1001369750`
- Metadata index `https://cir.nii.ac.jp/crid/1361981469474201728`

`amari2016`

- Springer confirms title, author, Applied Mathematical Sciences, volume 194, DOI, ISBN, publisher, and edition.
- Source: `https://link.springer.com/book/10.1007/978-4-431-55978-8`

`friston2010`

- Nature confirms citation as Nature Reviews Neuroscience 11, 127--138 (2010), DOI `10.1038/nrn2787`.
- Source: `https://www.nature.com/articles/nrn2787`

`abbott1884`

- WorldCat confirms Edwin Abbott Abbott, Seeley & Co., London, 1884, OCLC `5222850`.
- Source: `https://search.worldcat.org/oclc/5222850`

`einstein1916`

- Crossref/CiNii confirms Annalen der Physik 354(7), 769--822, 1916, DOI.
- DOI `https://doi.org/10.1002/andp.19163540702`
- Metadata index `https://cir.nii.ac.jp/crid/1364233270791501952`

`riemann1854`

- EuDML confirms the 1868 article record in `Abhandlungen der Königlichen Gesellschaft der Wissenschaften in Göttingen`, volume 13, pages 133--152.
- ETH e-rara confirms a separate 1867 Göttingen printing by Dieterichsche Buchhandlung with DOI `10.3931/e-rara-49481`.
- The main BibTeX entry intentionally uses the 1868 EuDML article record. The 1867 ETH e-rara DOI is kept in `note` rather than the main `doi` field because it identifies the separate printing.
- Source `http://eudml.org/doc/135760`
- Source `https://www.e-rara.ch/zut/doi/10.3931/e-rara-49481`

`kahneman2011`

- Macmillan confirms ISBN, imprint publisher, and on-sale date.
- Source: `https://us.macmillan.com/books/9780374275631/thinkingfastandslow/`

`bergson1889`

- Google Books confirms F. Alcan, 1889, 182 pages.
- Source: `https://books.google.com/books/about/Essai_sur_les_donn%C3%A9es_imm%C3%A9diates_de_la.html?id=DJ07AAAAYAAJ`

`hebb1949`

- WorldCat confirms D. O. Hebb, Wiley, New York, 1949.
- Source: `https://search.worldcat.org/title/The-organization-of-behavior/oclc/874348461`

`sporns2011`

- MIT Press confirms hardcover ISBN `9780262014694`, publication date October 1, 2010, and publisher.
- Source: `https://mitpress.mit.edu/9780262288927/networks-of-the-brain/`

`lecun2015`

- Nature confirms Nature 521, 436--444 (2015), DOI `10.1038/nature14539`.
- Source: `https://www.nature.com/articles/nature14539`

arXiv entries

- `bengio2017consciousnessprior` uses `https://arxiv.org/abs/1709.08568`
- `chang2019informationclosure` uses `https://arxiv.org/abs/1909.13045`
- `lu2024riemannianintelligence` uses `https://arxiv.org/abs/2407.11024`
- `lin2023topologygeometry` uses `https://arxiv.org/abs/2309.11028`
- `tschantz2022hybridpredictive` uses `https://arxiv.org/abs/2204.02169`
- `kurshan2023heterogeneousagi` uses `https://arxiv.org/abs/2310.15274`
- `jura2020synapticclock` uses `https://arxiv.org/abs/2002.07716`

## Remaining Notes

- `riemann1854` uses the 1868 Abhandlungen article as the main citation while preserving the 1854 lecture and 1867 separate printing in `note`.
- Published-version DOIs listed by arXiv for `chang2019informationclosure`, `lin2023topologygeometry`, and `kurshan2023heterogeneousagi` were not substituted into `references.bib`.
- The arXiv entries remain scoped as arXiv preprint records for this release.
- The repository release DOI for the Korean v0.1.0-ko working-paper release is 10.5281/zenodo.20506269. This repository-level DOI is distinct from bibliography item DOIs and does not alter references/references.bib.
- A post-release consistency check confirmed that the bibliography metadata remains unchanged after DOI badge/citation updates.
- ORCID and affiliation remain absent from `CITATION.cff` and `.zenodo.json` until the author provides verified values.
