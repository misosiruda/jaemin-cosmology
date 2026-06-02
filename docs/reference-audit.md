# Reference Audit

This audit summarizes the current bibliography metadata in `references/references.bib`.

All entries are marked as `needs manual verification` by default. Do not add missing DOI, URL, page, publisher, journal, arXiv, or ISBN metadata unless it has been manually verified against a reliable source.

## Summary

- Total entries: 19
- Entries with DOI: 13
- Entries without DOI: 6
- Entries with URL: 17
- Entries without URL: 2

## Audit Table

| BibTeX key | Entry type | Title | Authors | Year | DOI present? | URL present? | Status | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `shannon1948` | article | A Mathematical Theory of Communication | Shannon, Claude E. | 1948 | yes | no | needs manual verification | Entry note says the paper was published in two parts and includes a second DOI; verify DOI handling and page ranges. |
| `coverthomas2006` | book | Elements of Information Theory | Cover, Thomas M.; Thomas, Joy A. | 2006 | yes | yes | needs manual verification | Verify edition, ISBN, DOI, and publisher URL. |
| `amari2016` | book | Information Geometry and Its Applications | Amari, Shun-ichi | 2016 | yes | yes | needs manual verification | Verify Springer metadata, series, volume, ISBN, and DOI. |
| `friston2010` | article | The Free-Energy Principle: A Unified Brain Theory? | Friston, Karl | 2010 | yes | yes | needs manual verification | Verify Nature Reviews Neuroscience volume, issue, pages, DOI, and URL. |
| `abbott1884` | book | Flatland: A Romance of Many Dimensions | Abbott, Edwin A. | 1884 | no | yes | needs manual verification | Historical book entry; verify publisher, location, and preferred public-domain source URL. |
| `einstein1916` | article | Die Grundlage der allgemeinen Relativitätstheorie | Einstein, Albert | 1916 | yes | no | needs manual verification | Verify journal volume numbering, issue, pages, DOI, and translated-title note. |
| `riemann1854` | book | Ueber die Hypothesen, welche der Geometrie zu Grunde liegen | Riemann, Bernhard | 1867 | no | yes | needs manual verification | Lecture delivered in 1854 and published in 1867; verify publication venue and URL. |
| `kahneman2011` | book | Thinking, Fast and Slow | Kahneman, Daniel | 2011 | no | yes | needs manual verification | Verify publisher, ISBN, and canonical publisher URL. |
| `bergson1889` | book | Essai sur les données immédiates de la conscience | Bergson, Henri | 1889 | no | yes | needs manual verification | Verify page total, publisher, Google Books URL, and translation-note wording. |
| `hebb1949` | book | The Organization of Behavior: A Neuropsychological Theory | Hebb, Donald O. | 1949 | no | yes | needs manual verification | Verify publisher metadata and whether the linked PDF is an appropriate public source. |
| `sporns2011` | book | Networks of the Brain | Sporns, Olaf | 2010 | no | yes | needs manual verification | BibTeX key includes 2011 but year is 2010; verify publication year, ISBN, and MIT Press URL. |
| `lecun2015` | article | Deep Learning | LeCun, Yann; Bengio, Yoshua; Hinton, Geoffrey | 2015 | yes | yes | needs manual verification | Verify Nature volume, issue, pages, DOI, and URL. |
| `bengio2017consciousnessprior` | article | The Consciousness Prior | Bengio, Yoshua | 2017 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and whether article type should remain `article`. |
| `chang2019informationclosure` | article | Information Closure Theory of Consciousness | Chang, Acer Y. C.; Biehl, Martin; Yu, Yen; Kanai, Ryota | 2019 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and author formatting. |
| `lu2024riemannianintelligence` | article | A Mathematical Framework of Intelligence and Consciousness Based on Riemannian Geometry | Lu, Meng | 2024 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and title. |
| `lin2023topologygeometry` | article | The Topology and Geometry of Neural Representations | Lin, Baihan; Kriegeskorte, Nikolaus | 2023 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and title. |
| `tschantz2022hybridpredictive` | article | Hybrid Predictive Coding: Inferring, Fast and Slow | Tschantz, Alexander; Millidge, Beren; Seth, Anil K.; Buckley, Christopher L. | 2022 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and author list. |
| `kurshan2023heterogeneousagi` | article | From the Pursuit of Universal AGI Architecture to Systematic Approach to Heterogenous AGI: Addressing Alignment, Energy, {\&} AGI Grand Challenges | Kurshan, Eren | 2023 | yes | yes | needs manual verification | Title contains `Heterogenous`; verify spelling against the source before public release. |
| `jura2020synapticclock` | article | Synaptic Clock as a Neural Substrate of Consciousness | Jura, Bartosz | 2020 | yes | yes | needs manual verification | Verify arXiv ID, arXiv DOI, eprint class, and title. |

## Manual Verification Required

Before public release, manually verify:

- DOI values
- Author names and ordering
- Publication years
- Journal, publisher, volume, issue, and page metadata
- URLs
- arXiv IDs and eprint classes
- ISBNs
- Historical publication notes

Entries without DOI:

- `abbott1884`
- `riemann1854`
- `kahneman2011`
- `bergson1889`
- `hebb1949`
- `sporns2011`

Entries that appear incomplete or potentially suspicious:

- `shannon1948`: two-part publication and second DOI note require manual treatment.
- `riemann1854`: lecture year and publication year differ; publication metadata should be verified.
- `hebb1949`: linked PDF source should be checked for suitability.
- `sporns2011`: key/year mismatch should be resolved or documented.
- `kurshan2023heterogeneousagi`: title spelling should be checked against the source.
