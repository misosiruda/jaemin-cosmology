# Reviewer Guide

## 1. 이 원고를 읽는 방법

이 원고는 사변적 formal framework이자 working-paper hypothesis space로 읽어야 합니다. 목표는 이 프레임워크가 이미 참인지 판단하는 것이 아니라, 명료성, 일관성, 과학적 유용성을 검토하는 것입니다.

DOI-bearing release는 한국어 working-paper release `v0.1.0-ko`입니다: https://doi.org/10.5281/zenodo.20506269. English Draft v0.2.0은 review draft이며 별도로 release되지 않았습니다.

## 2. 이 원고가 주장하는 것

이 원고는 뇌를 higher-dimensional information interface로 모델링할 수 있다는 형식적 가설을 다룹니다. 이 프레임워크 안에서:

- 의식 경험은 저차원 투영으로 모델링될 수 있습니다.
- 잠재의식 또는 비의식 표현은 더 풍부한 latent structure를 보존할 수 있습니다.
- 직관은 latent structure에 대한 압축된 접근으로 해석될 수 있습니다.
- 인간과 AI의 차이는 computational-efficiency gap으로 연구될 수 있습니다.
- 주관적 시간은 internal-time variable로 모델링될 수 있습니다.

이 주장들은 formal and interpretive claim입니다. 경험적 확증으로 제시되지 않습니다.

## 3. 이 원고가 주장하지 않는 것

이 원고는 다음을 주장하지 않습니다.

- 뇌가 문자 그대로 추가 물리 차원에 접근한다.
- 표준 물리학, 신경과학, 인지과학, 심리학, AI 연구를 대체해야 한다.
- 직관은 초자연적 능력이다.
- AGI는 불가능하다.
- AGI는 반드시 가능하다.
- 주관적 시간 가속에는 검증된 단일 원인이 있다.
- 노화에 따라 물리적 시간이 빨라진다.
- 기대수명 또는 문명 가속이 이 프레임워크로 설명되었다.
- 회전 메커니즘이 필수다.

## 4. 핵심 수학 객체와 표기

- `X(T) in M^n`: 유효 상위차원 정보 상태
- `cal(F) = pi_F(X)`: 상위차원 정보 제약 구조
- `C = P(X)`: 의식 투영
- `S = Q_c(N_b, cal(F))`: 잠재의식 또는 비의식 표현
- `cal(I) = G(S)`: 직관 신호
- `c`: 결합 강도
- `η`: 계산 효율 증폭
- `τ`: 내부 시간
- `dτ/dT = α(X,T)`: 내부 시간율 관계
- `λ`: internal-time-rate effect가 felt duration에 반영되는 민감도
- `D_felt(a,T)`: 모델상의 체감 지속시간
- `Q_F`: alignment/coupling component이며 외부 에너지 주입이 아님
- 회전 메커니즘: optional special case이며 핵심 가정이 아님

## 5. 영역별 리뷰 질문

### A. 개념적 명료성

- 중심 가설이 이해 가능한가?
- "higher-dimensional informational constraint structure"와 "higher-dimensional information interface"가 충분히 명확한가?
- 원고가 literal extra-dimensional access처럼 들리지 않도록 충분히 조심하는가?
- conscious experience, subconscious representation, intuition이 명확히 구분되는가?

### B. 수학적 일관성

- `P`, `Q_c`, `G`, `Q_F`와 관련 변수가 일관되게 정의되는가?
- 어떤 식이 과소정의되었거나 과잉 해석되고 있는가?
- `c`, `η`, `α`, `λ`가 formal parameter로 충분히 명확한가?
- 섹션 사이에서 표기와 변수 의미가 안정적으로 유지되는가?

### C. 기존 모델과의 관계

- 같은 관측이 ordinary latent-variable model로 설명될 수 있는가?
- predictive-processing, information-theoretic, representation-learning, cognitive-efficiency model이 같은 현상을 설명할 수 있는가?
- 이 프레임워크가 과학적으로 유용해지려면 어떤 구분을 만들어야 하는가?
- 새 가정을 도입하기 전에 어떤 baseline model과 비교해야 하는가?

### D. AGI 효율성 격차

- AGI framing이 impossibility claim이 아니라 efficiency-gap lens로 명확히 읽히는가?
- `η_proxy`와 관련 수량이 최종 측정값이 아니라 candidate operational proxy로 제시되는가?
- 효율성 격차 주장을 testable하게 만들려면 어떤 benchmark design이 필요한가?
- 의식이 AGI에 엄격히 필요하다는 식으로 읽히지 않는가?

### E. 주관적 시간

- physical time과 internal/subjective time이 명확히 분리되는가?
- aging-related time acceleration과 life-expectancy 또는 civilizational acceleration이 조심스럽게 framing되는가?
- optional rotational mechanism이 비필수로 명확히 제시되는가?
- `α`와 `λ`가 operationalization이 필요한 candidate model parameter로 제시되는가?

### F. 반증가능성과 후보 예측

- 어떤 candidate prediction이 testable한가?
- 어떤 prediction이 더 나은 operationalization을 요구하는가?
- 어떤 관측이 이 프레임워크를 약화하거나 반증할 수 있는가?
- higher-dimensional interpretation 전에 baseline model이 충분히 인정되는가?

### G. 문헌과 참고문헌

- 어떤 중요한 문헌이 누락되었는가?
- 현재 참고문헌 중 부적절하거나 약한 항목은 무엇인가?
- 어떤 주장에 더 강한 citation support가 필요한가?
- 표준 모델과 비교하는 데 도움이 될 문헌은 무엇인가?

이 리뷰 과정에서 bibliography metadata를 verified로 취급하지 않습니다. Reference metadata verification은 별도 트랙입니다.

## 6. 가능한 가장 강한 반론

유용한 반론 예시는 다음과 같습니다.

- 이 프레임워크는 standard latent-variable model 또는 predictive-processing model의 재매개화일 수 있다.
- `c`, `η`, `α`, `λ`가 독립적으로 측정 불가능할 수 있다.
- Candidate prediction이 더 엄격히 operationalize되지 않으면 너무 넓을 수 있다.
- Higher-dimensional language가 distinct empirical leverage 없이 해석적 매력만 더할 수 있다.
- AGI efficiency-gap section은 더 엄격한 benchmark definition이 필요할 수 있다.
- Subjective-time model은 기존 심리학적 설명에 흡수될 수 있다.

## 7. 과학적 유용성을 높이는 조건

- `c`, `η`, `α`, `λ`, `S`, `η_proxy`의 명확한 operational definition
- 비교할 explicit baseline model
- 측정 가능한 변수가 있는 testable candidate prediction
- 넓은 개념 확장보다 좁은 submodel
- 명확한 failure condition
- Reference verification 이후 더 나은 citation placement

## 8. 이 프레임워크에 불리한 증거

다음은 이 프레임워크를 약화할 수 있습니다.

- 측정 가능한 parameter 정의 실패
- Candidate prediction이 표준 모델에 완전히 흡수됨
- 더 나은 통제 하에서 residual effect가 사라짐
- `Q_F`와 더 복잡한 `Q_N` 사이에 측정 가능한 차이가 없음
- Efficiency-gap proxy가 일반 hardware, algorithm, data effect로 환원됨
- Subjective-time residual이 표준 심리학 모델로 설명됨

## 9. Bibliography와 citation 상태

Bibliography citation placement와 reference metadata verification은 아직 pending입니다. 리뷰어는 누락 문헌, 약한 citation, 부적절한 reference를 제안할 수 있지만, 이 PR에서는 metadata를 검증하거나 bibliography entry를 추가하지 않습니다.

## 10. 권장 응답 형식

리뷰어는 [review-response-template.md](review-response-template.md)를 사용하거나, 자유 형식으로 다음 항목을 보내도 됩니다.

- Overall assessment
- Major conceptual issues
- Major mathematical issues
- Claim-strength concerns
- Testability and falsifiability concerns
- Missing literature
- Suggested revisions
- Recommended next step
