# Jaemin Cosmology / 재민 우주론

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20506269.svg)](https://doi.org/10.5281/zenodo.20506269)

이 프로젝트는 `The Brain as a Higher-Dimensional Interface: A Formal Framework for Consciousness, Intuition, Intelligence, and Subjective Time` 논문의 Typst 원고입니다.

이 저장소는 한국어 working paper 원고를 포함합니다. 이 프로젝트는 상위차원 정보 인터페이스 가설을 통해 의식, 직관, 인지 효율성, AGI 효율성 격차, 주관적 시간을 형식화하려는 사변적 수학 프레임워크입니다. 이는 경험적으로 검증된 과학 이론이 아닙니다.

본문은 한국어로 작성되었고, 논문 제목과 핵심 수학 표기는 영문 원제와 표준 수식을 유지합니다.

`paper/en/` 아래에 English Draft v0.2.0이 전체 draft 구조로 존재합니다. 이 영어 draft는 아직 별도로 release되지 않았고 DOI-bearing release로 인용하면 안 됩니다. 권위 있는 DOI-bearing 공개 원고는 한국어 working-paper release `v0.1.0-ko`입니다.

저자: Jaemin Seo

## 파일 구성

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
      main-en.typ        # English Draft v0.2.0
      translation-notes.md
    ko/
      main-ko.typ
      main-ko.pdf        # 로컬 빌드 산출물 또는 릴리스 asset
  references/
    references.bib
  docs/
    codex-release-workflow.ko.md
    abstract-en.md
    abstract-ko.md
    faq-en.md
    faq-ko.md
    external-review-request-en.md
    external-review-request-ko.md
    reviewer-guide-en.md
    reviewer-guide-ko.md
    review-checklist-en.md
    review-checklist-ko.md
    review-response-template.md
    review-email-template-en.md
    review-email-template-ko.md
    google-form-questionnaire-en.md
    google-form-questionnaire-ko.md
    reviewer-shortlist-template.md
    review-tracking-template.md
    review-distribution-checklist.md
    review-packet-manifest.md
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

`paper/ko/main-ko.typ`가 주 원고입니다. 기존 LaTeX 원고는 `legacy/latex/main.tex`에 보존되어 있습니다. 영어 첫 화면은 `README.md`이고, 이 파일은 한국어 안내문입니다.

## 필요 도구

- Typst CLI 0.14.2 이상
- 한글 폰트: `Noto Sans CJK KR`, `NanumGothic`, 또는 `Malgun Gothic`

현재 로컬 환경에서는 `typst 0.14.2`로 컴파일을 확인했습니다. 이 PC에는 `Noto Sans CJK KR`가 사용자 폰트로 설치되어 있어 기본 폰트 경고 없이 PDF 생성이 됩니다.

## 컴파일 방법

권장 명령:

```bash
make build
```

기본 `build` target은 한국어 원고를 빌드합니다. 영어 draft용 선택 target은 다음과 같습니다.

```bash
make build-en
make watch-en
make build-all
```

Typst를 직접 실행하려면:

```bash
typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
```

영어 draft를 직접 빌드하려면:

```bash
typst compile --root . paper/en/main-en.typ paper/en/main-en.pdf
```

자동 재컴파일이 필요하면:

```bash
make watch
```

영어 draft 작업 기준은 [paper/en/translation-notes.md](paper/en/translation-notes.md)에 정리했습니다.

## CI 빌드

GitHub Actions는 pull request와 `main` push에서 한국어 Typst 원고를 빌드합니다. 생성된 PDF는 workflow artifact로 업로드되며 Git에는 추적하지 않습니다.

## 내용 요약

이 논문은 현실과 인지 과정의 관련 정보 상태공간을 `n > 3`인 유효 고차원 정보 다양체 `(M^n, g)`로 모델링하고, 인간 의식을 `C = P(X)` 형태의 삼차원 투영으로 정리합니다. 최신 구조에서는 시간 가속을 출발점으로 두되, 핵심 명제를 "뇌는 상위차원 정보 제약 구조와 3차원 의식 사이의 인터페이스"로 재정렬했습니다.

잠재의식은 `S = Q_c(N_b,F)`인 고차원 표현으로 정의됩니다. 여기서 `N_b = pi_b(X)`는 신경 상태, `F = pi_F(X)`는 고차원 정보 제약 구조, `c in [0,1]`는 결합 강도, `eta >= 1`은 계산 효율 증폭 계수입니다. 직관은 `cal(I) = G(S)`인 압축 신호로 정의됩니다.

이 프레임워크는 직관이 불확실성을 줄일 수는 있지만 완전한 예측을 제공하지 않는다는 점을 정보이론식으로 표현합니다. 또한 지능 차이를 신경 연결 복잡도, 고차원 결합 강도, 계산 효율 증폭의 결합으로 모델링하고, AGI 문제를 불가능성이 아니라 효율성 격차로 해석합니다. v1.0에서는 초록을 압축하고, 범위와 비목표 섹션을 추가했으며, AGI를 기능적 일반지능으로 정의해 의식 문제와 분리했습니다. 또한 불필요한 `beta_eff` 보조식을 제거하고, 후보 예측을 관측 변수와 비교 대상 중심으로 정리했습니다.

## AI 사용 고지

이 원고와 저장소를 준비하는 과정에서 AI 도구가 개념 정리, 구조 편집, 문장 다듬기, 저장소 준비에 사용되었습니다. 모든 주장, 수식, 인용, 해석, 공개 결정은 저자가 검토하고 책임집니다. AI 대화는 독립적인 학술 출처로 취급하지 않습니다.

자세한 내용은 [docs/ai-assistance-note.md](docs/ai-assistance-note.md)를 참고하세요.

## 주의

이 문서는 검증된 물리 이론이나 경험적으로 확인된 과학 이론이 아닙니다. `references/references.bib`의 metadata는 PR 14까지 DOI registry, arXiv, 출판사, WorldCat, Google Books, EuDML, ETH e-rara 등 확인 가능한 출처 기준으로 점검했습니다. 학술지나 제출처별 스타일 요구가 있으면 그 형식에 맞춰 재정렬하되, 가짜 DOI, 가짜 페이지, 확인되지 않은 출판 정보는 넣지 않습니다.

공개 범위와 비목표는 다음 문서에 분리해 정리했습니다.

- [범위와 비목표](docs/scope-and-nongoals.ko.md)
- [Scope and Non-Goals](docs/scope-and-nongoals.en.md)

## 참고문헌 Metadata 상태

참고문헌 metadata는 `v0.1.0-ko` 릴리스 준비를 위한 PR 14 정합성 확인을 완료했습니다. 감사 문서는 verified 19개, partially verified 0개, unresolved 0개로 정리되어 있습니다. `riemann1854`는 기존 citation key를 유지하되 1868년 Abhandlungen article을 main bibliographic record로 사용하도록 정리했습니다.

[docs/reference-audit.md](docs/reference-audit.md)를 참고하세요.

## 공개 요약 문서

- 영문 초록: [docs/abstract-en.md](docs/abstract-en.md)
- 한국어 초록: [docs/abstract-ko.md](docs/abstract-ko.md)
- 영문 1페이지 요약: [docs/one-page-summary-en.md](docs/one-page-summary-en.md)
- 한국어 1페이지 요약: [docs/one-page-summary-ko.md](docs/one-page-summary-ko.md)
- 영문 FAQ: [docs/faq-en.md](docs/faq-en.md)
- 한국어 FAQ: [docs/faq-ko.md](docs/faq-ko.md)
- 외부 리뷰 요청서 영문: [docs/external-review-request-en.md](docs/external-review-request-en.md)
- 외부 리뷰 요청서 한국어: [docs/external-review-request-ko.md](docs/external-review-request-ko.md)
- Reviewer guide 영문: [docs/reviewer-guide-en.md](docs/reviewer-guide-en.md)
- Reviewer guide 한국어: [docs/reviewer-guide-ko.md](docs/reviewer-guide-ko.md)
- Review checklist 영문: [docs/review-checklist-en.md](docs/review-checklist-en.md)
- Review checklist 한국어: [docs/review-checklist-ko.md](docs/review-checklist-ko.md)
- Review response template: [docs/review-response-template.md](docs/review-response-template.md)
- Review email template 영문: [docs/review-email-template-en.md](docs/review-email-template-en.md)
- Review email template 한국어: [docs/review-email-template-ko.md](docs/review-email-template-ko.md)
- Google Form 질문지 초안 영문: [docs/google-form-questionnaire-en.md](docs/google-form-questionnaire-en.md)
- Google Form 질문지 초안 한국어: [docs/google-form-questionnaire-ko.md](docs/google-form-questionnaire-ko.md)
- Reviewer shortlist template: [docs/reviewer-shortlist-template.md](docs/reviewer-shortlist-template.md)
- Review tracking template: [docs/review-tracking-template.md](docs/review-tracking-template.md)
- Review distribution checklist: [docs/review-distribution-checklist.md](docs/review-distribution-checklist.md)
- Review packet manifest: [docs/review-packet-manifest.md](docs/review-packet-manifest.md)
- 영어 번역 노트: [paper/en/translation-notes.md](paper/en/translation-notes.md)
- AI 사용 고지: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- 릴리스 노트: [docs/release-notes/v0.1.0-ko.md](docs/release-notes/v0.1.0-ko.md)
- 릴리스 체크리스트: [docs/release-checklist-v0.1.0-ko.md](docs/release-checklist-v0.1.0-ko.md)
- 인용 안내: [docs/citation.md](docs/citation.md)

## 인용과 라이선스

- 인용 메타데이터: [CITATION.cff](CITATION.cff)
- 라이선스: [LICENSE](LICENSE)
- 라이선스 설명: [docs/license-note.md](docs/license-note.md)
- AI 사용 고지: [docs/ai-assistance-note.md](docs/ai-assistance-note.md)
- 참고문헌 감사 문서: [docs/reference-audit.md](docs/reference-audit.md)
- 릴리스 체크리스트: [docs/release-checklist-v0.1.0-ko.md](docs/release-checklist-v0.1.0-ko.md)
- 인용 안내: [docs/citation.md](docs/citation.md)
- 변경 기록: [CHANGELOG.md](CHANGELOG.md)
- 영어 README: [README.md](README.md)

Zenodo DOI: [10.5281/zenodo.20506269](https://doi.org/10.5281/zenodo.20506269)
