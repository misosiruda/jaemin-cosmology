# English Translation Notes

## Translation Status

- Status: partial English draft.
- Source manuscript: `paper/ko/main-ko.typ`.
- Source release: Korean working-paper release `v0.1.0-ko`.
- English scaffold: `paper/en/main-en.typ`.
- Full English translation: still pending.
- This scaffold is not yet the authoritative English translation.

## PR 18 Status

- Frontmatter, abstract, scope/non-goals, limitations, and conclusion drafted.
- Full translation still pending.
- Claim-strength rules remain active.

## PR 19 Status

- Core mathematical framework sections drafted.
- Filled sections: Core Hypothesis; Motivating Analogy; Mathematical Setup; Core Postulates; Consciousness and Subconscious Representation; Intuition and Information Theory; Toy Model; Identifiability Problem.
- Full translation still pending.
- Sections outside PR 19 remain TODO unless previously drafted in PR 18.
- Claim-strength rules remain active.

## PR 19 Terminology and Notation Decisions

- `cal(F)` is used for the higher-dimensional informational constraint structure, following the Korean source notation.
- `cal(I)` is used for the intuition signal, following the Korean source notation and avoiding conflict with mutual information notation `I(Y;S)`.
- `C = P(X)` is retained for conscious projection.
- `S = Q_c(N_b, cal(F))` is retained for subconscious or non-conscious representation.
- `Q_c` retains the subscript `c` to mark coupling strength.
- `N_b` is retained for the internal neural brain state.
- `G` is retained as the map that compresses subconscious representation into the intuition signal.
- The English abstract was aligned with the formal source notation by using `cal(F)` rather than plain `F`.

## PR 19 Author-Review Questions

- Confirm that the English draft should consistently use `cal(F)` in formal sections rather than simplifying it to `F`.
- Confirm that `cal(I)` is visually acceptable in the rendered English PDF as the intuition signal.
- Confirm whether future English sections should include formal bibliography citations, or keep citations deferred until the full translation pass.

## PR 20 Status

- Intelligence, cognitive-efficiency, AGI efficiency-gap, and physical-causality sections drafted.
- Added a partial Candidate Predictions entry for the efficiency-gap candidate prediction.
- Full translation still pending.
- Claim-strength rules remain active.

## PR 20 Terminology and Notation Decisions

- `η` is retained as the computational-efficiency amplification factor.
- `η_"human"` and `η_"AI"` are retained for the efficiency-gap model.
- `η_"proxy"` is retained for cautious empirical proxy variables.
- `Q_F` is rendered as an alignment/coupling component, not as external injection.
- `Q_c(N_b, cal(F))` remains the coupled subconscious or non-conscious representation map.
- `cal(F)` remains the higher-dimensional informational constraint structure.
- `cal(I)` remains the intuition signal.
- `K_"bio"`, `K_"AI"`, and `R_"task"` are retained for direct biological computation, direct AI hardware computation, and task requirement.

## PR 20 Author-Review Questions

- Confirm that the hardware-ratio equation should remain framed as a candidate modeling implication rather than a prediction by itself.
- Confirm that `η_"proxy"` examples are acceptable as early operational proxies.
- Confirm that the partial Candidate Predictions section should keep the remaining-section TODO until the full candidate-prediction translation pass.

## PR 21 Status

- Subjective-time and internal-time sections drafted.
- Filled sections: Variable Internal Time; Subjective Time Acceleration with Aging; Life Expectancy and Civilizational Acceleration; Generalized Model Without Mandatory Rotation; Optional Rotational Mechanism as a Special Case.
- Full translation still pending.
- Candidate Predictions, Discussion, and Future Work remain pending.
- Claim-strength rules remain active.

## PR 21 Terminology and Notation Decisions

- `T` is retained as higher-dimensional reference time or external reference time.
- `τ` is retained as internal time.
- `d τ / d T = α(X,T)` is retained as the internal-time-rate equation.
- `α(T) := α(X(T),T)` is retained as the trajectory-level abbreviation.
- `α` is described as a candidate internal-time modulation function requiring operationalization.
- `D_"felt"(a,T)` is retained for felt duration.
- `a` is retained for biological age.
- `μ(a)` is retained for memory-density or novelty-density.
- `λ` is retained as the sensitivity parameter for internal-time-rate effects on felt duration.
- `B(τ)` is retained for biomedical technology level in internal time.
- `L_τ` is retained for life expectancy measured in internal time.
- The rotational mechanism is treated as optional, not mandatory.

## PR 21 Author-Review Questions

- Confirm that `λ` should remain defined as sensitivity to internal-time-rate changes rather than as a decay parameter.
- Confirm that `D_"felt"(a,T)` is acceptable as the English notation for felt duration.
- Confirm that life-expectancy and civilizational-acceleration material should remain a speculative heuristic extension.
- Confirm that the optional rotational mechanism should remain an illustrative special case rather than a required mechanism.

## DOI Reference

The authoritative released manuscript remains the Korean working-paper release `v0.1.0-ko`.

- Zenodo DOI: `10.5281/zenodo.20506269`
- DOI URL: https://doi.org/10.5281/zenodo.20506269

## Source Mapping to Korean v0.1.0-ko

| English scaffold section | Korean source section in `paper/ko/main-ko.typ` |
| --- | --- |
| Introduction | `서론 (Introduction)` |
| Scope and Non-Goals | `범위와 비목표 (Scope and Non-Goals)` |
| Core Hypothesis | `중심 명제 (Core Thesis)` |
| Motivating Analogy: The Two-Dimensional Ant | `동기 부여 비유: 이차원 개미 (Motivating Analogy: The Two-Dimensional Ant)` |
| Mathematical Setup | `수학적 기본 구조 (Mathematical Setup)` |
| Core Postulates | `핵심 공리 (Core Postulates)` |
| Consciousness and Subconscious Representation | `의식과 잠재의식 (Consciousness and Subconscious Representation)` |
| Intuition and Information Theory | `직관과 정보이론 (Intuition and Information Theory)` |
| Toy Model | `장난감 모형: 4차원 정보공간 (Toy Model)` |
| Intelligence and Interface Efficiency | `지능과 인터페이스 효율 (Intelligence and Interface Efficiency)` |
| AGI and the Efficiency Gap | `AGI와 효율성 격차 (AGI and the Efficiency Gap)` |
| Variable Internal Time | `가변 내부 시간 (Variable Internal Time)` |
| Subjective Time Acceleration with Aging | `노화와 주관적 시간 가속 (Subjective Time Acceleration with Aging)` |
| Life Expectancy and Civilizational Acceleration | `수명 기대와 문명 가속 (Life Expectancy and Civilizational Acceleration)` |
| Generalized Model Without Mandatory Rotation | `필수 회전 없는 일반화 모형 (Generalized Model Without Mandatory Rotation)` |
| Optional Rotational Mechanism as a Special Case | `선택적 회전 메커니즘 (Optional Rotational Mechanism as a Special Case)` |
| Physical Causality and Conservation | `물리적 인과와 보존 법칙 문제 (Physical Causality and Conservation)` |
| Identifiability Problem | `식별 문제 (Identifiability Problem)` |
| Candidate Predictions | `후보 예측 (Candidate Predictions)` |
| Discussion | `논의 (Discussion)` |
| Limitations | `한계 (Limitations)` |
| Future Work | `향후 연구 (Future Work)` |
| Conclusion | `결론 (Conclusion)` |

## Terminology Table

| Korean term | Translation decision |
| --- | --- |
| 상위차원 | higher-dimensional informational constraint structure |
| 상위차원 정보 제약 구조 | higher-dimensional informational constraint structure |
| 상위차원 정보 인터페이스 | higher-dimensional information interface |
| 고차원 정보 다양체 | higher-dimensional information manifold |
| 의식 | conscious experience |
| 의식 투영 | conscious projection |
| 잠재의식 | subconscious representation or non-conscious representation |
| 직관 | intuition as compressed access to latent structure |
| 결합 강도 | coupling strength |
| 지능 | intelligence |
| 인지 효율성 | cognitive efficiency |
| 계산 효율 | computational efficiency |
| 계산 효율 증폭 | computational-efficiency amplification |
| 기능적 일반지능 | functional general intelligence |
| 자원 제약 | resource constraint |
| 표본 효율성 | sample efficiency |
| 데이터 효율성 | data efficiency |
| 에너지 효율성 | energy efficiency |
| 일반화 능력 | generalization capacity |
| 물리적 인과성 | physical causality |
| 보존 법칙 | conservation law |
| 외부 주입 | external injection |
| 정렬/결합 성분 | alignment/coupling component |
| 정보 압축 | information compression |
| 불확실성 감소 | uncertainty reduction |
| 식별가능성 문제 | identifiability problem |
| AGI 효율성 격차 | AGI efficiency gap |
| 주관적 시간 | subjective time or internal time |
| 내부 시간 | internal time |
| 외부 기준 시간 | reference time or external reference time |
| 시간 체감 | subjective time experience |
| 시간 가속 | subjective time acceleration |
| 노화에 따른 시간 가속 | subjective time acceleration with aging |
| 기대수명 | life expectancy |
| 문명 가속 | civilizational acceleration |
| 정보율 | information rate |
| 사건 밀도 | event density |
| 기억 밀도 | memory density |
| 회전 메커니즘 | rotational mechanism |
| 필수 회전 없음 | without mandatory rotation |
| 선택적 회전 메커니즘 | optional rotational mechanism |

## Claim-Strength Rules

- Use "speculative formal framework", not "verified theory".
- Use "may be modeled as", not "is proven to be".
- Use "candidate prediction", not "confirmed prediction".
- Do not imply that the brain literally accesses extra physical dimensions.
- Do not claim replacement of standard physics, neuroscience, cognitive science, or AI research.
- Do not frame the AGI section as AGI impossibility.

## Translation Rules for Future PRs

- Preserve the cautious framing of the Korean release.
- Do not introduce ORCID, affiliation, new DOI metadata, journal metadata, or publication claims.
- Do not treat bibliography metadata as newly verified during translation work.
- Prefer conceptual fidelity over literal sentence-by-sentence translation when English clarity requires restructuring.
- Keep speculative claims clearly separated from definitions, assumptions, candidate predictions, and limitations.
