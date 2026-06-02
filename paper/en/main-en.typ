#set document(
  title: "The Brain as a Higher-Dimensional Information Interface",
  author: "Jaemin Seo",
)

#set page(paper: "a4", margin: 1in)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

#let todo(body) = block(
  breakable: true,
  inset: 8pt,
  stroke: 0.7pt + luma(190),
  radius: 4pt,
)[#body]

#align(center)[
  #text(size: 20pt, weight: "bold")[
    The Brain as a Higher-Dimensional Information Interface
  ]

  #v(0.6em)

  #text(size: 13pt)[
    A Speculative Formal Framework for Consciousness, Intuition, Cognitive Efficiency, and Subjective Time
  ]

  #v(1em)

  Jaemin Seo

  #v(0.6em)

  English Draft v0.2.0
]

#v(1em)

#block(inset: 10pt, stroke: 0.7pt + luma(190), radius: 4pt)[
  This English draft is derived from the Korean working-paper release v0.1.0-ko. It is not yet the authoritative full English translation.

  Source release DOI: #link("https://doi.org/10.5281/zenodo.20506269")[10.5281/zenodo.20506269]
]

= Abstract

This paper proposes a speculative formal framework in which the brain is modeled as an interface between higher-dimensional informational constraint structures and low-dimensional conscious experience. Conscious experience is represented as a projection $C = P(X)$, subconscious processing as a high-dimensional representation $S = Q_c(N_b, cal(F))$, and intuition as a compressed signal $cal(I) = G(S)$. The framework further interprets the gap between human intelligence and artificial general intelligence not as a principled impossibility, but as a difference in computational efficiency. It also sketches a variable internal-time model for subjective time experience.

The paper does not claim empirical confirmation. It does not claim that the brain literally accesses extra physical dimensions, and it does not claim to replace standard physics, neuroscience, cognitive science, psychology, or AI research. Instead, it aims to define a structured hypothesis space from which testable candidate predictions may later be derived.

#outline(title: [Contents])

= Introduction

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Scope and Non-Goals

This working-paper manuscript is a speculative formal framework. It is not an empirically confirmed theory of physics, neuroscience, consciousness, cognitive science, psychology, or artificial intelligence.

The framework asks whether conscious experience may be modeled as a low-dimensional interface to higher-dimensional informational constraint structures. This is a formal and conceptual modeling proposal. It does not claim that the brain literally accesses extra physical dimensions, and it does not turn higher-dimensional language into an ontological claim about reality.

The manuscript is not a replacement for standard physics, neuroscience, cognitive science, psychology, or AI research. It is intended to organize candidate hypotheses that would need to be compared against ordinary latent-variable models, predictive-processing models, information-theoretic models, representational models, and standard AI baselines.

The framework does not claim that intuition is supernatural. Intuition can be interpreted as compressed, lossy access to latent structure or subconscious representation, not as prophecy or certain knowledge.

The framework also does not claim that AGI is impossible. Its AGI discussion concerns a possible efficiency gap between biological cognition and artificial systems, not a proof that artificial general intelligence cannot be built.

This draft does not provide a complete neuroscientific implementation. It defines a hypothesis space and a cautious vocabulary for later submodels, operational definitions, and candidate predictions.

= Core Hypothesis

The central hypothesis of this draft is the following:

#quote(block: true)[
  The brain may be modeled as an interface between higher-dimensional informational constraint structures and low-dimensional conscious experience.
]

This is a formal modeling hypothesis. It is not an established ontological claim about hidden physical dimensions, and it does not claim that conscious experience has direct access to the full higher-dimensional structure.

Several derivative modeling hypotheses follow from this central statement:

- Conscious experience can be interpreted as a low-dimensional projection of a higher-dimensional information state.
- Subconscious or non-conscious representation may preserve a higher-dimensional representation than conscious experience.
- Intuition can be interpreted as a signal obtained by compressing a higher-dimensional subconscious representation into a conscious-level form.
- Differences in intelligence may depend not only on neural connection complexity, but also on higher-dimensional informational coupling and computational-efficiency amplification.
- The difference between human cognition and AI can be framed as an efficiency-gap problem rather than as an impossibility claim about AGI.
- Subjective time acceleration and internal-time acceleration are application-level problems derived from this structure, not the primary claim of the framework.

= Motivating Analogy: The Two-Dimensional Ant

Consider an ant that moves and senses only on a two-dimensional plane. The ant may perceive distances, directions, and boundaries within the plane, but it does not directly experience a third axis outside that plane. A three-dimensional observer could bend the plane, observe the ant's position from outside the plane, or create changes that appear sudden from the ant's restricted perspective.

This thought experiment is a heuristic analogy for the limits of dimensional perception. It does not claim that humans are literally like two-dimensional ants. Its point is more modest: the dimensions available to perception need not be identical to the full dimensional structure used in a formal model. Human three-dimensional conscious experience may be modeled as a cognitive projection of a richer information state.

The analogy is not evidence for higher-dimensional informational coupling. It is only a motivating device for separating the structure of experience from the structure of a proposed state space.

= Mathematical Setup

*Higher-dimensional information manifold.* In this framework, the relevant information state space for reality and cognition is modeled as an effective information manifold $(M^n, g)$ with $n > 3$. Rather than specifying a complete physical state space, $M^n$ is used here as a coarse-grained higher-dimensional information state space for cognitive and informational modeling. The metric $g$ is included so that distance, curvature, and later special cases involving rotation can be discussed. At higher-dimensional reference time $T$, the effective state is

$ X(T) in M^n. $

In this model, brain state and higher-dimensional informational constraint structure are not introduced as independent external objects. They are defined as components extracted from the effective information state $X(T)$.

*Brain state space.* Let $cal(N)$ be the space of possible neural brain states. The concrete brain state at time $T$ is written as $N_b(T) in cal(N)$ and is obtained from $X(T)$ by the projection

$ π_b: M^n -> cal(N), $

$ N_b(T) = π_b(X(T)). $

*Space of informational constraint structures.* Let $cal(U)$ be the space of possible higher-dimensional informational constraint structures. The concrete informational constraint structure at time $T$ is written as $cal(F)(T) in cal(U)$ and is obtained by

$ π_F: M^n -> cal(U), $

$ cal(F)(T) = π_F(X(T)). $

Here $N_b$ denotes the internal neural state of the brain, and $cal(F)$ denotes the higher-dimensional informational constraint structure. The calligraphic notation $cal(F)$ is used to avoid confusing this structure with entropy notation such as $H(dot)$.

*Minimal structure.* The minimal mathematical structure of the framework is

$ cal(J) = (M^n, g, X, π_b, π_F, c, η, P, Q_c, R, G, α). $

Here $c in [0,1]$ is the coupling strength with the higher-dimensional informational constraint structure; $η >= 1$ is the effective computational-efficiency amplification factor; $P$ is the conscious projection; $Q_c$ is the subconscious representation map including coupling strength $c$; $R$ is the compression map from subconscious representation to conscious representation; $G$ is the intuition-compression map; and $α$ is the internal-time-rate function.

#table(
  columns: (1fr, 3fr),
  inset: 6pt,
  stroke: 0.5pt + luma(180),
  [*Symbol*], [*Meaning*],
  [$M^n$], [Higher-dimensional information manifold with $n > 3$.],
  [$g$], [Metric on $M^n$.],
  [$X(T)$], [Effective or coarse-grained higher-dimensional information state at reference time $T$.],
  [$cal(N)$], [Space of possible neural brain states.],
  [$N_b$], [Internal neural brain state, $N_b = π_b(X)$.],
  [$cal(F)$], [Higher-dimensional informational constraint structure, $cal(F) = π_F(X)$.],
  [$cal(U)$], [Space of possible higher-dimensional informational constraint structures.],
  [$cal(J)$], [Minimal mathematical structure of the framework.],
  [$T$], [Higher-dimensional reference time.],
  [$τ$], [Internal time used by an internal observer.],
  [$c$], [Coupling strength with the higher-dimensional informational constraint structure, $0 <= c <= 1$.],
  [$η$], [Effective computational-efficiency amplification factor, $η >= 1$.],
  [$Γ$], [Neural connectivity structure or connection complexity.],
  [$P$], [Conscious projection map from $M^n$ to $ℝ^3$.],
  [$C$], [Low-dimensional conscious interface, $C = P(X)$.],
  [$Q_c$], [Subconscious representation map that includes coupling strength $c$.],
  [$S$], [Higher-dimensional subconscious or non-conscious representation.],
  [$R$], [Map that compresses subconscious representation into conscious representation.],
  [$G$], [Map that compresses subconscious representation into an intuition signal.],
  [$cal(I)$], [Intuition signal, $cal(I) = G(S)$.],
  [$H(·)$], [Entropy.],
  [$I(·;·)$], [Mutual information.],
  [$α(X,T)$], [Positive time-rate function connecting internal time and reference time.],
  [$Y$], [Event or decision target to be predicted or judged.],
)

= Core Postulates

*Postulate 1: Higher-dimensional state space.* The relevant information state space for describing reality and cognitive processes may be modeled as an effective information manifold $(M^n,g)$ with $n > 3$.

*Postulate 2: Conscious projection.* Human conscious experience is represented as a low-dimensional projection that maps the effective information state $X$ into a three-dimensional cognitive interface:

$ C = P(X), quad P: M^n -> ℝ^3. $

*Postulate 3: Higher-dimensional subconscious representation.* Subconscious or non-conscious representation is given by a map that includes brain state $N_b$, higher-dimensional informational constraint structure $cal(F)$, and coupling strength $c$:

$ S = Q_c(N_b, cal(F)), quad Q_c: cal(N) times cal(U) -> ℝ^m, quad m > 3. $

In a simple projection model, one may set $m <= n$. In a representation-learning or feature-expansion model, $m$ need not be smaller than $n$.

*Postulate 4: Conscious compression.* Conscious representation can also be modeled as a low-dimensional compression of the higher-dimensional subconscious representation:

$ C = R(S), quad R: ℝ^m -> ℝ^3. $

*Compatibility assumption.* The conscious representation $C$ may be described both as a direct projection $P(X)$ of the effective information state $X$ and as a compression $R(S)$ of the subconscious representation $S$. If both descriptions refer to the same conscious state, the following consistency condition is required:

$ P(X) = R(Q_c(π_b(X), π_F(X))). $

This is a model-consistency condition, not an empirical confirmation.

*Postulate 5: Compression of intuition.* Intuition is a signal compressed from the higher-dimensional subconscious representation into a conscious-level form:

$ cal(I) = G(S), quad G: ℝ^m -> ℝ^k. $

*Postulate 6: Variable internal time.* Internal time $τ$ and higher-dimensional reference time $T$ are connected by

$ d τ / d T = α(X,T), quad α(X,T) > 0. $

*Postulate 7: Internal invariance.* Since internal measuring devices and internal physical processes are described in terms of $τ$, an internal observer cannot directly detect a uniform scaling factor $α$ using only internal clocks if all relevant internal processes scale by the same ratio.

*Postulate 8: Interface efficiency.* Intelligence, insight, and creativity may be interpreted as effects of neural connectivity complexity $Γ$, coupling strength $c$, and computational-efficiency amplification $η$, rather than as functions of neural computation alone. This is an interpretive assumption of the framework, not an established neuroscientific claim.

= Consciousness and Subconscious Representation

Conscious experience is not modeled as a full copy of reality. It is modeled as a cognitively usable interface:

$ C = P(X), quad P: M^n -> ℝ^3. $

Here $P$ is a map that extracts from the effective information state only the structures needed for action, perception, and spatial navigation. The map $P$ need not be linear. Nonlinear maps, stochastic maps, and maps involving information bottlenecks are also allowed.

Under this interpretation, conscious experience does not directly access the whole higher-dimensional informational structure. The equations $C = P(X)$ and $C = R(S)$ reinterpret low-dimensionality and compression within the higher-dimensional information-interface hypothesis.

Subconscious or non-conscious representation may have a higher-dimensional form:

$ S = Q_c(N_b, cal(F)). $

This expression does not imply a supernatural capacity. Contemporary cognitive science and neuroscience already use high-dimensional state representations in discussions of neural state spaces, latent variables, representation learning, and predictive processing. The additional interpretive assumption here is that such high-dimensional neural representations may be partially coupled to a higher-dimensional informational constraint structure.

*Interpretive assumption: ontological status of high-dimensional neural representation.* This draft does not treat the existence of high-dimensional neural state spaces as evidence for a physical higher dimension. It only introduces the interpretive assumption that such state spaces may be partially coupled to an effective higher-dimensional information manifold.

To separate coupling strength from ordinary neural computation, this section uses the following mixture model as one possible concrete form of $Q_c$.

*Assumption: common latent representation space.* In the mixture model, the ordinary neural-computation component and the higher-dimensional informational-coupling component are both mapped into the same latent representation space $ℝ^m$:

$ Q_N: cal(N) -> ℝ^m, $

$ Q_F: cal(N) times cal(U) -> ℝ^m, $

$ ξ in ℝ^m. $

The mixture model is therefore

$ Q_c(N_b, cal(F)) := (1 - c) Q_N(N_b) + c Q_F(N_b, cal(F)) + ξ. $

Here $Q_N$ is the ordinary neural-computation component, $Q_F$ is the higher-dimensional informational-coupling component, and $ξ$ is noise or distortion. The term $Q_F$ does not mean that the brain reads out the entire effective information state $X$. It denotes only a component in which brain state $N_b$ is partially coupled to the higher-dimensional informational constraint structure $cal(F)$. It also does not imply that $cal(F)$ injects external energy or information into the brain; rather, it represents a possible alignment between some degrees of freedom in brain state space and the informational constraint structure. If $c = 0$, the model approaches a standard neural-computation model. If $c > 0$, the higher-dimensional informational-coupling term contributes to the subconscious representation.

= Intuition and Information Theory

Intuition is defined as

$ cal(I) = G(S), quad G: ℝ^m -> ℝ^k. $

Here $cal(I)$ is the intuition signal, while $I(Y;S)$ denotes mutual information. The two notations are kept distinct to avoid confusing intuition with information-theoretic mutual information. Intuition is not modeled as perfect prediction or error-free judgment. It is a compressed and lossy summary that appears when a higher-dimensional subconscious representation is compressed into conscious-level form.

To interpret intuition as uncertainty reduction, this draft uses entropy and mutual information. If conscious representation can be written as $C = R(S)$, then under suitable conditions the data-processing inequality gives

$ I(Y;S) >= I(Y;C). $

Therefore one may have

$ H(Y | S) <= H(Y | C). $

In general, conditional entropy also satisfies

$ H(Y | S) >= 0. $

To preserve the interpretation that intuition is not complete prediction, this draft further assumes that in nontrivial judgment situations,

$ H(Y | S) > 0. $

Thus intuition may reduce uncertainty, but it does not remove uncertainty. It remains fallible.

The two-dimensional-ant analogy can also be read in this information-theoretic way. Suppose an ant with two-dimensional conscious experience lives in three-dimensional space. Its conscious representation is limited to $C = (x,y)$, so it cannot directly perceive the $z$-direction approach of a water droplet from above. If some sensory system forms a latent representation $S = (x,y,ε z + ξ)$ that weakly includes $z$-direction information, the ant may detect a danger possibility earlier even without predicting the exact landing point or time of the droplet.

In this analogy, intuition is not a complete future prediction. It is uncertainty reduction of the form $H(Y | S) <= H(Y | C)$. Higher-dimensional cues may assist decision-making, but in nontrivial judgment contexts $H(Y | S) > 0$, so they do not provide prophetic certainty. The thought experiment is a conceptual illustration of the information-theoretic meaning of intuition, not empirical evidence for higher-dimensional informational coupling.

*Proposition: uncertainty reduction by latent representation.* If $C = R(S)$, if $R$ compresses the information in $S$, and if $S$ preserves information relevant to $Y$, then subconscious representation can reduce conditional uncertainty relative to conscious representation:

$ H(Y | S) <= H(Y | C). $

*Proof sketch.* If $C = R(S)$, one can place the information-processing relation in the form $Y -> S -> C$. The data-processing inequality gives $I(Y;S) >= I(Y;C)$. Applying the entropy identity $I(Y;Z) = H(Y) - H(Y | Z)$ yields $H(Y | S) <= H(Y | C)$. This does not imply $H(Y | S) = 0$, so intuition continues to allow error.

= Toy Model

As the simplest illustrative case, let $M^4 = ℝ^4$ and write the state as

$ X = (x,y,z,w). $

The conscious projection removes the fourth coordinate $w$:

$ P(x,y,z,w) = (x,y,z). $

Thus the conscious representation $C$ does not directly perceive $w$. A subconscious representation may nevertheless contain a weak trace of $w$.

In this toy model, the notation $Q_c(π_b(X),π_F(X))$ is abbreviated as $Q_c(X)$ for simplicity:

$ S = Q_c(X) = (x,y,z,c ε w + ξ_w). $

Here $ε$ is the transmission strength of the fourth coordinate, $c$ is the higher-dimensional coupling strength, and $ξ_w in ℝ$ is scalar noise acting on the fourth-coordinate component. The notation $ξ_w$ distinguishes this scalar noise from the vector noise $ξ in ℝ^m$ used in the general model.

If an event $Y$ partially depends on $w$, then the conscious representation $C = (x,y,z)$ alone may not be sufficient to predict $Y$. Since $S$ contains weak information about $w$, it may reduce conditional uncertainty:

$ H(Y | S) <= H(Y | C). $

This toy model does not establish the existence of higher-dimensional informational coupling. It is only an illustrative minimal formalization of the core intuition behind the framework.

= Intelligence and Interface Efficiency

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= AGI and the Efficiency Gap

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Variable Internal Time

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Subjective Time Acceleration with Aging

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Life Expectancy and Civilizational Acceleration

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Generalized Model Without Mandatory Rotation

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Optional Rotational Mechanism as a Special Case

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Physical Causality and Conservation

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Identifiability Problem

The central identifiability problem is whether the higher-dimensional informational-coupling term $c Q_F$ or the efficiency-amplification term $η$ can be observationally distinguished from a highly efficient ordinary neural-computation model $Q_N$.

If two models make the same predictions for all relevant observations, then $c$ and $η$ do not function as independent explanatory variables. They remain reparameterization terms rather than scientifically useful quantities.

This problem is especially important because ordinary latent-variable models, predictive-processing models, representational learning models, and information-theoretic models may explain similar observations without invoking a distinct higher-dimensional informational-coupling term.

To develop into an empirical research program, the framework therefore requires the following:

- A model with $c > 0$ or $η > 1$ must produce predictions that differ from standard neural-computation models.
- Such predictions must be testable using at least one class of observable data, such as behavioral data, neural dynamics, information-bottleneck measures, energy efficiency, learning curves, or subjective-time data.
- The framework must produce predictions that cannot simply be absorbed by adding a more complex $Q_N$ to a standard neural-computation model.
- If every difference can be absorbed after the fact by increasing the complexity of $Q_N$, then the framework risks remaining an interpretive restatement rather than an independent theory.

= Candidate Predictions

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Discussion

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Limitations

No direct empirical validation is provided in this draft. The framework should therefore be read as a structured hypothesis space rather than an established empirical theory.

Core parameters and functions such as $c$, $η$, $λ$, $α$, coupling strength, and computational-efficiency amplification require operational definitions before they can be treated as measurable scientific quantities.

The model faces an identifiability problem. Its proposed coupling and efficiency terms may be difficult to distinguish from ordinary latent-variable models, predictive-processing models, information-theoretic accounts, representational learning models, or more efficient neural computation models.

Candidate predictions require comparison against standard neuroscience, cognitive science, psychology, and AI baselines. Without such comparisons, the framework may remain an interpretive reformulation rather than an empirically constrained model.

The current English draft is incomplete. Only the frontmatter, abstract, scope and non-goals, limitations, and conclusion have been drafted at this stage; the remaining sections still require translation and adaptation from the Korean release.

Bibliographic metadata verification remains a separate audit track. This English draft does not newly verify reference metadata and should not silently treat bibliography metadata as complete beyond the existing repository audit status.

= Future Work

#todo[
  [TODO: Translate and adapt this section from `paper/ko/main-ko.typ`.]
]

= Conclusion

This English draft frames the project as a speculative formal framework in which conscious experience may be modeled as a low-dimensional projection or interface related to higher-dimensional informational constraint structures. Its contribution is a structured hypothesis space for organizing questions about consciousness, intuition, cognitive efficiency, AGI efficiency gaps, and subjective internal time, not an established empirical theory.

The most promising development paths are narrower than the full framework. Future work should refine intuition as compressed access to latent structure, specify measurable forms of cognitive efficiency and the AGI efficiency gap, formalize subjective internal-time modeling, and operationalize parameters such as $c$, $η$, $λ$, and $α$.

The next stage should narrow the framework into testable submodels. Those submodels should make candidate predictions that can be compared against standard neuroscience, cognitive science, psychology, and AI explanations. The framework should be judged by whether it can produce operational definitions and empirically distinguishable predictions, not by the appeal of higher-dimensional language alone.
