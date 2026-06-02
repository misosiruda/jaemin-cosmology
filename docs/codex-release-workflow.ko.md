# Jaemin Cosmology Codex 작업 운영 문서

이 문서는 `Jaemin Cosmology / 재민 우주론` 원고 저장소를 공개 가능한 working-paper 저장소로 정리하기 위한 단계별 작업 운영 문서다. 다음 Codex 작업에서는 이 문서를 먼저 읽고, 현재 저장소 상태를 확인한 뒤, 막히는 수동 작업이 있으면 사용자에게 먼저 알려야 한다.

작성 기준일: 2026-06-02  
현재 확인된 로컬 위치: `C:\Project\jaemin_space\jaemin-cosmology`

## 1. 현재 상태

현재 로컬 폴더에는 다음 파일이 있다.

```text
jaemin-cosmology/
  README.md
  README.ko.md
  paper/
    ko/
      main-ko.typ
      main-ko.pdf        # 로컬 빌드 산출물, Git 추적 제외
  references/
    references.bib
  docs/
    codex-release-workflow.ko.md
  legacy/
    latex/
      main.tex
  scripts/
    build.sh
  Makefile
```

현재 `C:\Project\jaemin_space\jaemin-cosmology`는 로컬 Git 저장소로 초기화되었고 기본 브랜치는 `main`이다. GitHub Private repository `https://github.com/misosiruda/jaemin-cosmology`가 생성되었으며 `origin` remote로 연결되어 있다.

PR 00 범위에서는 `.gitignore`가 추가되었다. PR 01 범위에서는 원고와 참고문헌이 공개용 구조로 이동했고, README가 영어/한국어로 분리되었으며, Typst bibliography 경로가 새 구조에 맞게 갱신되었다.
PR 02 범위에서는 `scripts/build.sh`와 `Makefile`이 추가되었고, README 양쪽의 빌드 명령이 새 경로 기준으로 갱신되었다. Typst 원고가 `paper/ko/` 아래에 있고 bibliography가 `references/` 아래에 있으므로 빌드 명령은 `--root .`를 사용해야 한다. PR 03 범위에서는 공개 범위와 비목표 문서가 한국어/영어로 추가되고 README 양쪽에 연결되었다.

초기 커밋과 GitHub push는 완료되었다. 다음 실제 작업의 출발점은 **PR 04 - Citation, License, and Metadata**이며, 진행 전에 저자명, 라이선스, 버전, 릴리스 날짜를 확정해야 한다.

## 2. 모든 단계의 공통 원칙

이 프로젝트는 검증된 과학 이론이 아니라 사변적 수학 프레임워크이자 working-paper 원고로 공개되어야 한다.

Codex는 모든 단계에서 다음 원칙을 지킨다.

- 사용자가 명시하지 않는 한 원고의 과학적 의미를 변경하지 않는다.
- 수식, 변수, 정의를 임의로 바꾸지 않는다.
- 이 원고가 물리학, 신경과학, 의식 이론으로 경험적으로 확증되었다고 표현하지 않는다.
- 공개 문구에는 `speculative formal framework`, `working paper`, `hypothesis space`, `candidate predictions`처럼 신중한 표현을 사용한다.
- 가짜 DOI, 가짜 페이지, 가짜 저널 정보, 확인되지 않은 출판 메타데이터를 만들지 않는다.
- 폰트 파일, 로컬 캐시, 개인 인증 정보, 불필요한 대형 산출물을 커밋 대상으로 만들지 않는다.
- 파일 경로가 바뀌면 README, 빌드 명령, Typst bibliography 경로 등 영향받는 참조를 함께 갱신한다.
- 사용자가 명시적으로 요청하지 않으면 commit, push, PR 생성, release 생성은 하지 않는다.
- 각 작업 종료 시 변경 파일, 검증 명령, 실패한 검증 또는 수동 확인 필요 항목을 보고한다.

## 3. 다음 작업 시작 프롬프트

다음에 작업을 이어갈 때 사용자는 다음처럼 요청하면 된다.

```text
docs/codex-release-workflow.ko.md를 읽고 현재 저장소 상태를 확인한 뒤,
아직 수동으로 해야 하는 게 있으면 먼저 알려줘.
막히는 게 없으면 다음 미완료 단계부터 진행해.
```

Codex는 이 요청을 받으면 다음 순서로 판단한다.

1. `git status --short`로 Git 저장소 여부와 변경 상태를 확인한다.
2. 현재 파일 구조가 어느 단계까지 완료되었는지 확인한다.
3. 아래 `수동 게이트` 중 아직 필요한 것이 있는지 판단한다.
4. 수동 게이트가 막고 있으면 사용자에게 할 일을 구체적으로 알려준다.
5. 막히지 않으면 가장 앞의 미완료 PR 단계를 진행한다.

## 4. 수동 게이트

아래 항목은 Codex가 임의로 결정하거나 완료했다고 가정하면 안 된다.

| 게이트 | 시점 | 사용자가 해야 할 일 | Codex가 할 수 있는 일 | 이유 |
| --- | --- | --- | --- | --- |
| A | 시작 전 | GitHub repository 생성, 공개/비공개 결정, remote URL 확정 | 로컬 `git init`, `.gitignore` 작성, 파일 상태 점검 | GitHub 계정과 공개 범위는 사용자 권한/판단 필요 |
| B | PR 02 후 | 로컬에서 Typst 빌드 확인 | 빌드 명령 실행 시도, 실패 로그 분석 | 한글 폰트와 Typst 설치 상태가 환경 의존 |
| C | PR 06 후 | 참고문헌 DOI/저자/연도/출판 정보 실제 검증 | BibTeX 파싱, 감사 문서 작성, 의심 항목 표시 | 출판 메타데이터는 최종 사람이 확인해야 함 |
| D | PR 12 후 | GitHub Actions 웹 UI에서 실행 결과 확인 | workflow 파일 작성, 로컬 경로 점검, 로그 기반 수정 | CI 실행 결과는 GitHub 웹/권한에 의존 |
| E | PR 15 후 | Git tag 생성, GitHub Release 작성, PDF asset 첨부 | 릴리스 노트 작성, 태그 명령 제시 | 릴리스는 사용자 계정 권한과 공개 결정 필요 |
| F | PR 15 후 | Zenodo 연동, DOI 발급 | Zenodo metadata 정리, DOI 자리표시자 관리 | DOI는 Zenodo 발급 후에만 알 수 있음 |
| G | PR 22 후 | 영어판 의미 검토 | 번역 초안 작성, 빌드 확인, 검토 포인트 정리 | 번역상 의미 왜곡 여부는 저자 검토 필요 |

## 5. 현재 즉시 필요한 수동 판단

현재 폴더는 로컬 Git 저장소로 초기화되었고 GitHub `origin` remote도 연결되어 있다. 초기 커밋과 push도 완료되었다.

GitHub repo:

```text
https://github.com/misosiruda/jaemin-cosmology
```

다음 단계인 PR 04 전에 사용자가 정해야 할 값은 다음과 같다.

| 항목 | 현재 후보 |
| --- | --- |
| Author name | `Jaemin` |
| Repository URL | `https://github.com/misosiruda/jaemin-cosmology` |
| Text license | `CC BY 4.0` 권장 |
| Scripts license | 필요 시 `MIT` |
| Version | `0.1.0` |
| Release date | 실제 릴리스 날짜 |

권장 repo 이름:

```text
jaemin-cosmology
```

초기 공개 범위는 Private 권장이다. 공개 전까지 DOI, 참고문헌, AI 사용 고지, 범위/비목표 문서가 정리되어야 한다.

## 6. 권장 전체 실행 순서

```text
1. 수동 작업 A
2. PR 00
3. PR 01
4. PR 02
5. 수동 작업 B
6. PR 03
7. PR 04
8. PR 05
9. PR 06
10. 수동 작업 C
11. PR 07
12. PR 08
13. PR 09
14. PR 10
15. PR 11
16. PR 12
17. 수동 작업 D
18. PR 13
19. PR 14
20. PR 15
21. 수동 작업 E
22. 수동 작업 F
23. PR 16
24. PR 17-22
25. 수동 작업 G
26. PR 23-24
```

당장 목표는 `수동 작업 A -> PR 00 -> PR 01 -> PR 02`까지만 진행해도 충분하다. 빌드가 안정된 뒤 공개 문서, 인용 메타데이터, Zenodo 준비로 넘어간다.

## 7. PR 단계별 작업 요약

### PR 00 - Repository Bootstrap

목표: 초기 저장소 정리와 `.gitignore` 추가.

확인할 파일:

```text
main.typ
references.bib
README.md
latex/main.tex
```

할 일:

- Typst 원고 저장소에 맞는 `.gitignore`를 만든다.
- 원고 소스 파일은 삭제하지 않는다.
- 캐시, OS 파일, editor 폴더, font 파일은 제외한다.
- `main.pdf`를 repo에 넣을지 release asset으로 둘지 사용자 의사와 현재 추적 상태를 확인한다.

권장 `.gitignore` 항목:

```text
.DS_Store
Thumbs.db
.vscode/
.idea/
tmp/
.cache/
*.aux
*.log
*.out
*.toc
*.synctex.gz
```

완료 보고:

- 변경 파일
- 핵심 파일 존재 여부
- 다음 권장 단계

### PR 01 - Repository Structure Cleanup

목표: 공개용 저장소 구조로 이동.

목표 구조:

```text
jaemin-cosmology/
  README.md
  README.ko.md
  paper/
    ko/
      main-ko.typ
      main-ko.pdf
  references/
    references.bib
  docs/
  legacy/
    latex/
      main.tex
  scripts/
```

할 일:

- `main.typ` -> `paper/ko/main-ko.typ`
- `references.bib` -> `references/references.bib`
- `main.pdf`가 있고 의도적으로 보존할 경우 `paper/ko/main-ko.pdf`로 이동
- `latex/main.tex`가 있으면 `legacy/latex/main.tex`로 이동
- Typst bibliography 경로를 `../../references/references.bib`로 갱신
- 기존 한국어 README는 `README.ko.md`로 보존
- 새 `README.md`는 영어 landing page로 최소 작성

주의:

- 과학 내용은 바꾸지 않는다.
- 존재하지 않는 파일을 만들지 않는다.

### PR 02 - Reproducible Typst Build

목표: 한 명령으로 PDF를 빌드할 수 있게 만든다.

예상 경로:

```text
source: paper/ko/main-ko.typ
output: paper/ko/main-ko.pdf
```

할 일:

- `scripts/build.sh` 생성
- `Makefile`에 `build`, `watch`, `clean` 추가
- README와 README.ko.md의 build section 갱신
- Typst CLI 0.14.2 이상과 한글 폰트 필요성을 명시

검증 명령:

```bash
make build
```

또는:

```bash
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
```

Typst가 환경에 없으면 실패 사실을 명시하고, 설치/폰트 문제를 사용자에게 알려준다.

### PR 03 - Public Safety Framing

목표: 검증된 이론처럼 보이지 않게 공개 범위와 비목표를 분리한다.

할 일:

- `docs/scope-and-nongoals.ko.md` 생성
- `docs/scope-and-nongoals.en.md` 생성
- README 양쪽에 링크와 간단한 caution section 추가

핵심 문구:

- 경험적으로 확증된 물리학/신경과학/의식 이론을 주장하지 않는다.
- 표준 물리학 또는 표준 신경과학을 대체하지 않는다.
- 목적은 구조화된 가설 공간과 후보 예측을 정의하는 것이다.

### PR 04 - Citation, License, and Metadata

목표: 인용, 라이선스, 저장소 메타데이터 준비.

수동 결정 필요:

| 항목 | 권장값 |
| --- | --- |
| Author name | `Jaemin` 또는 사용자 실명/필명 |
| License | 원고/문서: `CC BY 4.0` |
| Scripts license | 필요 시 `MIT` |
| Version | `0.1.0` |
| Release date | 실제 릴리스 날짜 |

할 일:

- `CITATION.cff`
- `LICENSE`
- `docs/license-note.md`
- `.zenodo.json`
- `CHANGELOG.md`
- README 양쪽에 citation/license/changelog 링크

주의:

- DOI는 아직 넣지 않는다.
- affiliation, ORCID, journal, DOI를 임의 생성하지 않는다.

### PR 05 - Korean Manuscript v0.1 Freeze

목표: 한국어 원고를 안정적인 `v0.1.0` working-paper snapshot으로 고정.

할 일:

- `datetime.today()` 같은 자동 날짜가 있는지 확인
- 있다면 안정 변수로 교체

권장 값:

```text
paper-version = "Working Paper v0.1.0"
release-date = "2026-06-02"
```

주의:

- 수식, 정의, 과학 내용은 바꾸지 않는다.
- 필요하면 제목/frontmatter에 version/date만 추가한다.

### PR 06 - Reference Audit

목표: `references/references.bib` 감사 문서 작성.

할 일:

- BibTeX를 파싱한다.
- `docs/reference-audit.md`를 만든다.
- 각 entry에 key, type, title, authors, year, DOI 여부, URL 여부, status, notes를 표로 정리한다.
- 기본 status는 `needs manual verification`으로 둔다.
- placeholder처럼 보이는 필드를 표시한다.

수동 작업 C:

사용자는 DOI, 저자명, 연도, 저널/출판사, 권/호/페이지, URL, arXiv ID, ISBN을 직접 검증해야 한다.

### PR 07 - README Bilingual Split

목표: `README.md`는 영어 첫 화면, `README.ko.md`는 한국어 첫 화면으로 확정.

영어 README 필수 항목:

- Project title
- Paper title
- Status: Korean working-paper manuscript
- speculative formal framework caution
- Repository structure
- Build instructions
- Citation
- License
- Korean README 및 scope/FAQ 링크

주의:

- 한국어 내용은 삭제하지 않고 `README.ko.md`에 보존한다.
- 원고 내용은 바꾸지 않는다.

### PR 08 - English Abstract and Metadata

목표: Zenodo/GitHub 외부 노출용 영문/국문 초록 문서 생성.

할 일:

- `docs/abstract-en.md`
- `docs/abstract-ko.md`
- README 양쪽에서 링크

주의:

- empirical confirmation을 주장하지 않는다.
- brain이 literal extra physical dimensions에 접근한다고 주장하지 않는다.

### PR 09 - One-Page Summary Package

목표: 외부 공유용 1페이지 요약문 생성.

할 일:

- `docs/one-page-summary-en.md`
- `docs/one-page-summary-ko.md`
- README 양쪽에서 링크

포함 항목:

- Title
- Status
- Core hypothesis
- Mathematical skeleton
- What the paper claims
- What the paper does not claim
- Candidate predictions
- AGI 관련 의미
- Current limitations

핵심 표현:

- `higher-dimensional informational constraint structures`
- `candidate predictions`
- `efficiency gap`

### PR 10 - Public FAQ

목표: 오해 방지 FAQ 작성.

할 일:

- `docs/faq-en.md`
- `docs/faq-ko.md`
- README 양쪽에서 링크

FAQ는 다음 주제를 반드시 다룬다.

- 뇌가 실제 물리적 추가 차원에 접근한다는 주장인지
- 물리학 이론인지
- 경험적으로 검증되었는지
- 표준 신경과학과 양립 가능한지
- 일반 잠재변수 모델과의 차이
- 반증 또는 약한 증거가 될 수 있는 것
- AGI와 연결하는 이유
- AGI 불가능론인지
- 직관을 초자연적으로 보는지
- 원고의 현재 상태

### PR 11 - AI Assistance Disclosure

목표: AI 사용 고지 문서 작성.

수동 결정 필요:

README에 있는 ChatGPT 공유 링크를 공개 repo에 그대로 둘지 결정해야 한다.

권장:

```text
공개 링크를 README 본문에 직접 노출하지 말고,
docs/ai-assistance-note.md에서 일반적인 방식으로 AI 사용을 고지한다.
```

할 일:

- `docs/ai-assistance-note.md` 생성
- AI 도구가 개념 정리, 구조 편집, 문장 다듬기, 저장소 준비에 사용되었음을 설명
- 모든 주장, 수식, 인용, 해석, 공개 결정은 저자가 검토하고 책임진다는 문구 추가
- AI 대화는 학술 출처가 아니라 개발 노트임을 명시
- README 양쪽에 링크

주의:

- AI conversation을 학술 참고문헌으로 추가하지 않는다.
- 원고 내용은 바꾸지 않는다.

### PR 12 - GitHub Actions Build Check

목표: PR마다 Typst PDF 빌드 확인.

할 일:

- `.github/workflows/typst.yml` 생성
- `pull_request`와 `main` push에서 실행
- Ubuntu에서 `fonts-noto-cjk` 설치
- Typst 설치
- `paper/ko/main-ko.typ` -> `paper/ko/main-ko.pdf` 컴파일
- PDF를 artifact로 업로드

주의:

- CI에서 생성한 PDF artifact를 repo에 커밋하지 않는다.
- badge를 넣을 경우 workflow file name과 repo URL을 확인한다.

수동 작업 D:

사용자는 GitHub Actions 탭에서 실행 결과를 확인하고, 실패하면 로그를 Codex에 붙여넣는다.

### PR 13 - Release Notes for v0.1.0-ko

목표: GitHub Release/Zenodo에 붙일 릴리스 노트 준비.

할 일:

- `docs/release-notes/v0.1.0-ko.md`
- `CHANGELOG.md`에 `v0.1.0-ko` section

릴리스 노트 포함 항목:

- Title
- Version
- Release date
- Status
- Scope
- Included files
- Recommended citation placeholder
- Known limitations
- Non-goals
- Build instructions

주의:

- DOI는 아직 넣지 않는다.

### PR 14 - Zenodo Preparation

목표: Zenodo 업로드 직전 metadata 정리.

수동 결정 필요:

| 항목 | 선택 |
| --- | --- |
| 공개 이름 | `Jaemin` / 실명 / 필명 |
| ORCID | 있으면 입력 |
| Affiliation | 있으면 입력, 없으면 비움 |
| License | `CC BY 4.0` 권장 |
| Upload type | `Publication` |
| Publication type | `Working paper` |
| Language | Korean |
| DOI | Zenodo에서 발급 |

할 일:

- `.zenodo.json`, `CITATION.cff`, README, release notes 정합성 확인
- DOI badge는 placeholder만 두고 fake DOI는 넣지 않는다.
- keyword에 consciousness, intuition, cognitive efficiency, AGI, subjective time, higher-dimensional information interface, speculative formal framework를 포함한다.

### PR 15 - v0.1.0 Korean Release Prep

목표: 릴리스 직전 최종 정리.

할 일:

- `make build` 또는 Typst compile 실행/준비
- `CHANGELOG.md`의 `v0.1.0-ko` section 확정
- release notes가 GitHub Release에 붙여넣기 가능하게 준비
- README 양쪽의 핵심 링크 확인

완료 시 사용자에게 줄 명령:

```bash
git tag -a v0.1.0-ko -m "Korean working paper release v0.1.0"
```

GitHub Release title:

```text
v0.1.0-ko — Korean Working Paper Release
```

수동 작업 E:

사용자가 GitHub Release를 만들고 `paper/ko/main-ko.pdf`를 asset으로 첨부한다.

수동 작업 F:

사용자가 Zenodo에서 GitHub repo를 연동하고 DOI를 발급한다.

### PR 16 - DOI Badge and Citation Update

목표: Zenodo DOI 발급 후 repo에 반영.

전제:

사용자가 DOI와 DOI URL을 제공해야 한다.

할 일:

- README.md에 DOI badge
- README.ko.md에 DOI badge 또는 DOI text
- `CITATION.cff` DOI 갱신
- `.zenodo.json` 필요 시 갱신
- release notes DOI 반영
- `docs/citation.md` 생성/갱신

주의:

- DOI 발급 전에는 이 단계로 넘어가지 않는다.
- 원고 내용은 바꾸지 않는다.

### PR 17 - English Translation Scaffold

목표: 영어 전체판 파일 구조만 생성.

할 일:

- `paper/en/main-en.typ`
- `paper/en/translation-notes.md`
- `Makefile`에 `build-en`, `watch-en`, `build-all` 추가
- README 양쪽에 영어 번역 scaffold 상태 언급

주의:

- 전체 번역은 아직 하지 않는다.
- 영어 파일은 최소 Typst 문서로 빌드 가능하게 만든다.

### PR 18 - English Title, Abstract, Scope, and Conclusion

목표: 영어판의 방어 섹션부터 작성.

대상:

```text
paper/en/main-en.typ
```

참고:

```text
paper/ko/main-ko.typ
docs/abstract-en.md
docs/scope-and-nongoals.en.md
docs/one-page-summary-en.md
```

작성 섹션:

- frontmatter
- abstract
- Scope and Non-Goals
- Limitations
- Conclusion

주의:

- `higher-dimensional informational constraint structures` 표현을 선호한다.
- empirical confirmation을 주장하지 않는다.

### PR 19 - English Core Mathematical Framework

목표: 수학적 핵심부 영어 번역.

번역 섹션:

- Core Hypothesis
- Mathematical Setup
- Core Postulates
- Consciousness and Subconscious Representation
- Intuition and Information Theory
- Toy Model

주의:

- 수식과 변수 의미를 보존한다.
- `paper/en/translation-notes.md`에 용어표를 추가한다.

### PR 20 - English AGI and Efficiency Gap Section

목표: AGI 효율성 격차 파트 영어화.

번역 섹션:

- Intelligence and Interface Efficiency
- AGI and the Efficiency Gap
- Candidate Predictions related to cognitive efficiency and AGI

핵심 framing:

```text
The framework does not argue that AGI is impossible in principle.
Instead, it reframes the central problem as an efficiency gap.
```

주의:

- AGI 불가능론처럼 쓰지 않는다.
- hype 또는 anti-AI absolutism을 피한다.

### PR 21 - English Subjective Time Section

목표: 주관적 시간 파트 영어화.

번역 섹션:

- Variable Internal Time
- Subjective Time Acceleration with Aging
- Life Expectancy and Civilizational Acceleration
- Generalized Model Without Mandatory Rotation
- Optional Rotational Mechanism as a Special Case

주의:

- subjective/internal time과 physical time을 구분한다.
- `τ`, `T`, `α`, `λ` 등 변수를 보존한다.
- literal time dilation처럼 읽히지 않게 caveat를 보존한다.

### PR 22 - English Full Draft v0.2

목표: 영어 전체판 초안 완성.

할 일:

- `paper/en/main-en.typ`의 남은 TODO section 채우기
- 한국어 원고의 구조와 의미 보존
- references 경로 확인
- version text 추가

권장 version text:

```text
English Draft v0.2.0
```

수동 작업 G:

사용자는 영어판을 직접 검토한다. 특히 다음을 확인한다.

- `상위차원`이 literal physical dimension처럼 오해되지 않는지
- 의식 관련 주장이 너무 강하지 않은지
- AGI 불가능론처럼 읽히지 않는지
- 수식 의미가 한국어판과 같은지
- 초록이 과장되어 있지 않은지
- 참고문헌 인용이 깨지지 않았는지

### PR 23 - English Copyedit and Tone Control

목표: 영어판 보수적 academic copyedit.

할 일:

- 문법, 흐름, 학술적 명료성 개선
- 과학적 의미 변경 금지
- claim을 강화하지 않음
- hype와 과신 표현 제거
- `translation-notes.md` 기준 용어 일관성 확인
- 수식과 label 보존

완료 보고:

- copyedit 변경 요약
- 저자 검토가 필요한 claim
- 영어 원고 빌드 여부

### PR 24 - External Review Package

목표: 연구자/피드백 요청용 패키지 작성.

할 일:

- `docs/external-review-request-en.md`
- `docs/external-review-request-ko.md`
- `docs/reviewer-guide-en.md`
- `docs/reviewer-guide-ko.md`
- README.md의 `External review` 섹션에 링크

reviewer guide focus:

- conceptual clarity
- mathematical consistency
- cognitive science, neuroscience, AI, philosophy of mind와의 관계
- falsifiability and candidate predictions
- overclaiming 또는 ambiguous terminology

주의:

- reviewer에게 이론이 참인지 검증해 달라고 요청하지 않는다.

## 8. 단계 완료 판정 방법

다음 작업자는 완료된 단계와 미완료 단계를 파일 구조로 판단한다.

| 단계 | 완료 판단 근거 |
| --- | --- |
| PR 00 | `.gitignore` 존재, 초기 파일이 보존됨 |
| PR 01 | `paper/ko/main-ko.typ`, `references/references.bib`, `README.ko.md` 존재 |
| PR 02 | `scripts/build.sh`, `Makefile`, build section 갱신 |
| PR 03 | `docs/scope-and-nongoals.ko.md`, `docs/scope-and-nongoals.en.md` 존재 |
| PR 04 | `CITATION.cff`, `LICENSE`, `.zenodo.json`, `CHANGELOG.md` 존재 |
| PR 05 | 한국어 원고에 안정 version/date 표기 |
| PR 06 | `docs/reference-audit.md` 존재 |
| PR 07 | README bilingual 구조가 확정됨 |
| PR 08 | `docs/abstract-en.md`, `docs/abstract-ko.md` 존재 |
| PR 09 | one-page summary 두 문서 존재 |
| PR 10 | FAQ 두 문서 존재 |
| PR 11 | `docs/ai-assistance-note.md` 존재 |
| PR 12 | `.github/workflows/typst.yml` 존재 |
| PR 13 | `docs/release-notes/v0.1.0-ko.md` 존재 |
| PR 14 | Zenodo metadata와 DOI placeholder 정합성 확인 |
| PR 15 | release checklist와 최종 링크 정리 완료 |
| PR 16 | 실제 DOI가 README, CITATION, release notes에 반영됨 |
| PR 17 | `paper/en/main-en.typ`, `paper/en/translation-notes.md` scaffold 존재 |
| PR 18-22 | 영어 원고 TODO가 단계별로 채워짐 |
| PR 23 | 영어 copyedit 완료 |
| PR 24 | external review package 문서 4개 존재 |

## 9. 사용자에게 반드시 물어야 하는 경우

Codex는 다음 상황에서 임의로 진행하지 말고 사용자에게 물어야 한다.

- GitHub repo URL, 공개/비공개 여부, remote 설정이 필요한 경우
- author name, 실명/필명, affiliation, ORCID를 정해야 하는 경우
- license를 확정해야 하는 경우
- ChatGPT share URL을 공개 문서에 남길지 결정해야 하는 경우
- DOI가 필요한데 아직 Zenodo DOI가 발급되지 않은 경우
- release, tag, push, PR 생성 등 외부에 남는 작업이 필요한 경우
- 영어 번역이 원문의 의미를 바꿀 위험이 있는 경우
- 참고문헌 metadata를 실제로 검증해야 하는 경우

## 10. 추천 바로 다음 단계

현재 상태에서는 아래 순서가 가장 안전하다.

1. PR 04를 진행하기 전에 저자명, 라이선스, 버전, 릴리스 날짜를 확정한다.
2. PR 04에서 citation, license, Zenodo metadata, changelog를 추가한다.

이 문서를 갱신한 현재 작업에서는 원고, README, 참고문헌, PDF, LaTeX 원고를 변경하지 않았다.
