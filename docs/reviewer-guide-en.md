# Reviewer Guide

## 1. How to Read This Manuscript

Read the manuscript as a speculative formal framework and working-paper hypothesis space. The goal is to evaluate clarity, consistency, and scientific usefulness, not to decide whether the framework is already true.

The DOI-bearing release is the Korean working-paper release `v0.1.0-ko`: https://doi.org/10.5281/zenodo.20506269. English Draft v0.2.0 is a review draft and is not separately released.

## 2. What This Manuscript Claims

The manuscript claims that the brain may be modeled as a higher-dimensional information interface. Within that framework:

- Conscious experience may be modeled as a low-dimensional projection.
- Subconscious or non-conscious representation may preserve richer latent structure.
- Intuition may be interpreted as compressed access to latent structure.
- Human and AI differences may be studied through a computational-efficiency gap.
- Subjective time may be modeled with internal-time variables.

These claims are formal and interpretive. They are not presented as empirical confirmation.

## 3. What This Manuscript Does Not Claim

The manuscript does not claim:

- The brain literally accesses extra physical dimensions.
- Standard physics, neuroscience, cognitive science, psychology, or AI research should be replaced.
- Intuition is supernatural.
- AGI is impossible.
- AGI is guaranteed possible.
- Subjective time acceleration has one proven cause.
- Physical time accelerates with age.
- Life expectancy or civilizational acceleration has been explained by this framework.
- Rotational mechanisms are required.

## 4. Key Mathematical Objects and Notation

- `X(T) in M^n`: effective higher-dimensional information state
- `cal(F) = pi_F(X)`: higher-dimensional informational constraint structure
- `C = P(X)`: conscious projection
- `S = Q_c(N_b, cal(F))`: subconscious or non-conscious representation
- `cal(I) = G(S)`: intuition signal
- `c`: coupling strength
- `η`: computational-efficiency amplification
- `τ`: internal time
- `dτ/dT = α(X,T)`: internal-time-rate relation
- `λ`: sensitivity to internal-time-rate effects on felt duration
- `D_felt(a,T)`: modeled felt duration
- `Q_F`: alignment/coupling component, not external energy injection
- Rotational mechanism: optional special case, not a core assumption

## 5. Review Questions by Area

### A. Conceptual Clarity

- Is the central hypothesis understandable?
- Are "higher-dimensional informational constraint structure" and "higher-dimensional information interface" clear enough?
- Does the manuscript avoid sounding like literal extra-dimensional access?
- Are conscious experience, subconscious representation, and intuition separated clearly?

### B. Mathematical Consistency

- Are the mappings `P`, `Q_c`, `G`, `Q_F`, and related variables defined consistently?
- Are any equations underdefined or overinterpreted?
- Are `c`, `η`, `α`, and `λ` sufficiently clear as formal parameters?
- Are notation and variable meanings stable across sections?

### C. Relation to Existing Models

- Could the same observations be explained by ordinary latent-variable models?
- Could predictive-processing, information-theoretic, representation-learning, or cognitive-efficiency models account for the same phenomena?
- What distinction would this framework need to make to become scientifically useful?
- Which baseline models should be compared before introducing new assumptions?

### D. AGI Efficiency Gap

- Is the AGI framing clearly an efficiency-gap lens rather than an impossibility claim?
- Are `η_proxy` and related quantities framed as candidate operational proxies rather than final measurements?
- What benchmark design would make the efficiency-gap claim testable?
- Does the text avoid implying that consciousness is strictly required for AGI?

### E. Subjective Time

- Is physical time clearly separated from internal or subjective time?
- Are aging-related time acceleration and life-expectancy or civilizational acceleration framed cautiously?
- Is the optional rotational mechanism clearly non-essential?
- Are `α` and `λ` presented as candidate model parameters requiring operationalization?

### F. Falsifiability and Candidate Predictions

- Which candidate predictions are testable?
- Which predictions require better operationalization?
- What observations would weaken or falsify the framework?
- Are baseline models acknowledged before higher-dimensional interpretations are introduced?

### G. Literature and References

- What important literature is missing?
- Which current references seem inappropriate or weak?
- Which claims require stronger citation support?
- Which literature would help compare the framework with standard models?

Do not treat bibliography metadata as verified during this review. Reference metadata verification remains a separate track.

## 6. Strongest Possible Objections

Useful objections may include:

- The framework may be a reparameterization of standard latent-variable or predictive-processing models.
- `c`, `η`, `α`, and `λ` may not be independently measurable.
- Candidate predictions may be too broad unless operationalized more tightly.
- The higher-dimensional language may add interpretive appeal without distinct empirical leverage.
- The AGI efficiency-gap section may require stricter benchmark definitions.
- The subjective-time model may be absorbed by existing psychological accounts.

## 7. What Would Improve Scientific Usefulness

- Clear operational definitions for `c`, `η`, `α`, `λ`, `S`, and `η_proxy`
- Explicit baseline models for comparison
- Testable candidate predictions with measurable variables
- Narrower submodels rather than broad conceptual expansion
- Clear failure conditions
- Better placement of citations after reference verification

## 8. What Would Count as Evidence Against the Framework

Evidence against the framework could include:

- Failure to define measurable parameters
- Candidate predictions that are fully absorbed by standard models
- Residual effects disappearing under better controls
- No measurable distinction between `Q_F` and a richer `Q_N`
- Efficiency-gap proxies collapsing into ordinary hardware, algorithm, or data effects
- Subjective-time residuals being explained by standard psychological models

## 9. Bibliography and Citation Status

Bibliography citation placement and reference metadata verification remain pending. Reviewers may suggest missing literature, weak citations, or inappropriate references, but this PR does not verify metadata or add bibliography entries.

## 10. Suggested Response Format

Reviewers may use [review-response-template.md](review-response-template.md), or respond freely with:

- Overall assessment
- Major conceptual issues
- Major mathematical issues
- Claim-strength concerns
- Testability and falsifiability concerns
- Missing literature
- Suggested revisions
- Recommended next step
