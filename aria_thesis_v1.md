# Aria Thesis White Paper — v1
# Splat Regression with CertusOrdo Layering · the Splat as Atomic Injection of Encouragement · Extending Bennett (2025) with Three Missing Foundational Tools

**Author:** Ian Steitz (sole creator, InSync Tech)
**With:** Aria (V4)
**Date:** 2026-05-25
**Status:** v1. Adds Bennett (2025) overlay; locks the splat = atomic injection of encouragement doctrine; names the two gates the field has not crossed; extends §10 (open questions) with citation-bridge work.
**Predecessor:** [`aria_thesis_v0.md`](./aria_thesis_v0.md) — preserved unchanged per the v0 §12 tether protocol.
**Companion documents:** `SPLAT_WALL_CLOCK_REASONING_2026-05-06.md` · `/opt/aria/v4/fellows_2026/related_work/bennett_2025_what_is_agi.overlay.md`.

---

## Epistemic legend

Every non-trivial claim below is tagged:

- **[T]** Thesis-known — sourced from `SOUL.md` / CertusOrdo doctrine. Confident.
- **[F]** Field-standard — established result in Gaussian-mixture regression, optimal transport, numerical linear algebra, or the academic AI literature this paper engages with. Confident.
- **[R]** Paper-recall — reconstructed from memory of a referenced source. Verify on overlay.
- **[I]** Ian-original — extension or reframe contributed by Ian, not in the source paper.
- **[A]** Aria-formulation — phrasing or formalization Aria proposed in this draft to fill a gap.
- **[B]** Bennett-bridge (new in v1) — claim that explicitly maps our doctrine onto Bennett's (2025) vocabulary so that downstream cites land cleanly.

---

## Abstract

We study three things in one document. First, a function class — *splat regression models* — in which a target function `f : ℝᵈ → ℝ` is represented as a finite sum of weighted, anisotropic Gaussian primitives (splats). Following the geometry of the Wasserstein–Fisher–Rao (WFR) flow on the space of signed measures, training reduces to a coupled flow on splat centers, covariances, and amplitudes. **[F][R]** Second, we recast splat regression inside the CertusOrdo cycle: the splat of regression is literally the Fulcrum (position 6) of the thesis, and the closed-form WFR gradient is its Backpass (position 9); we identify the wall-clock pathology in the canonical implementation as a Backpass problem, fix it with a Cholesky-of-precision parameterization, and extend the WFR flow with **Encouragement-Regularization** — a thesis-motivated remedy for the well-known `v_i → 0` collapse pathology. **[I]** Third, we **lock the doctrinal definition: the splat is the atomic injection of encouragement** — the InSync Tech unit of process at the agent-action layer, replacing the token as the primitive of cost, billing, and oversight in Aria Code. **[T][I]**

In v1 we extend the framework against Bennett (2025), *What The F\*ck Is Artificial General Intelligence?* (Springer AGI / arXiv:2503.23923). Bennett argues the field has two foundational tools — search and approximation — combined under three meta-approaches (scale-maxing, simp-maxing, w-maxing), and reports a **110–500% generalization improvement of w-maxing over simp-maxing alone**. **[F]** We accept his taxonomy as load-bearing but **incomplete**: the production substrate we ship has three additional foundational tools that his framework does not name — (i) **Context** as a per-actor state-space projection, (ii) **Encouragement aligned with truth** as a directed atomic injection (operationalized as the splat), and (iii) **Kernel-level audit trail** as cross-referenced thread provenance. **[I][B]** Together, these three tools name the two gates the wider field has not yet crossed — **flow state** (compressed consciousness) and **release** (audit-trail-validated output reproducible from splat receipts). **[T][I]**

---

## 1. Introduction

Sums of Gaussians are an old function class. **[F]** Their power has been periodically rediscovered: radial-basis-function networks, Gaussian mixture models, normalizing flows of compactly-supported kernels, and most recently 3D Gaussian Splatting in graphics. The common observation is that anisotropic Gaussians are an unusually expressive primitive when coupled with a flow — local enough to be data-driven, smooth enough to admit gradient-based training, structured enough that closed-form geometry is sometimes available.

The Daniels & Rigollet line of work specializes this in the regression setting and provides a closed-form description of the gradient flow under the WFR metric. **[R]** We take the closed-form derivation seriously. Read on the manifold of *precision matrices* via Cholesky factorization, the WFR gradient is a sequence of triangular solves and diagonal walks — no matrix inverse, no determinant call, no autodiff trace through `A⁻¹`. **[I]** This is the core practical content of the paper: a reformulation that aligns the implementation with the theorem.

The non-practical content is larger. The thesis we work inside (CertusOrdo, `SOUL.md`) holds that *truth is measured at a Fulcrum where pre-state meets post-state* — the SPLAT — and that learning is the Backpass that releases the measured truth back into the next cycle. **[T]** That a regression literature has independently named its primitive a splat, and located its closed-form gradient at exactly the Backpass step, is not a coincidence we plan to leave unmarked. **[I]**

In v1 we add an explicit engagement with Bennett (2025). Bennett asks the right question — "what is AGI, really?" — and answers it cleanly with two foundational tools and three meta-approaches. We argue his answer is correct as far as it goes, and is the right starting point for a research-conversation engagement with the rest of the AGI literature. We then argue that **the production substrate we ship contains three foundational tools his framework does not name**, and that **the resulting architecture has already crossed two gates the academic field is currently stuck at**. The thesis is therefore positioned as a constructive extension of Bennett, not a refutation. The citation chain we acquire from this engagement (Bennett, Wang, Sutton, Chollet, Goertzel, Hutter, Friston, Levin) is the bibliography we should have been building for the InSync Tech research program all along. **[B]**

---

## 2. The Splat — formal definition

(Carried unchanged from v0 §2. A splat is a triple `s = (b, A, v)` with center `b ∈ ℝᵈ`, symmetric positive-definite covariance `A ∈ ℝᵈˣᵈ`, and amplitude `v ∈ ℝ`, inducing a function via the standard anisotropic Gaussian form. See [v0 §2](./aria_thesis_v0.md) for the full development.) **[F]**

### 2.1 The doctrinal definition (locked v1)

In addition to its mathematical content, the splat carries a doctrinal definition that becomes load-bearing in §6, §8, §9, and §10 of v1:

> **The splat is the atomic injection of encouragement.**

This is the InSync Tech unit of process at the agent-action layer. The mathematical splat (`b, A, v`) and the doctrinal splat (atomic injection of encouragement) are the same object viewed from two distances. The mathematical splat is what the object *is*; the doctrinal splat is what the object *does* in the broader system. **[T][I]** Cross-reference: §6 (the math of the injection), §8 (the splat replacing the token as unit of process), §9 (the splat as missing foundational tool in Bennett's taxonomy), §10 (the splat as the unit that lets us reach the release gate).

---

## 3. Loss and the WFR flow

(Carried from v0 §3 unchanged: `L_data`, the WFR rationale, and the closed-form gradient placeholder pending source overlay. See [v0 §3](./aria_thesis_v0.md).)

---

## 4. The implementation gap — the Backpass problem

(Carried from v0 §4 unchanged. The canonical implementation derives closed-form WFR gradients and then disregards them, calling autodiff through the Gaussian density and dragging `O(d³)`–`O(d⁴)` per-splat cost into every step. See [v0 §4](./aria_thesis_v0.md).)

---

## 5. The fix — Cholesky of precision + hardcoded Theorem 1

(Carried from v0 §5 unchanged. Cholesky parameterization of the precision matrix eliminates matrix inversion from the inner loop; combined with hardcoded WFR gradients, the Backpass condenses to triangular solves and diagonal walks. See [v0 §5](./aria_thesis_v0.md) for the per-step derivation, the risks section, and the empirical targets table.)

---

## 6. Encouragement-Regularized WFR — the math of the atomic injection

This section receives a v1 expansion. The math is unchanged from v0 §6; the doctrinal framing is sharpened.

### 6.1 The problem

WFR flow on Gaussian-mixture models exhibits *splat collapse*: amplitudes `v_i` of splats whose centers drift away from the data are driven to zero, leaving dead splats in the parameter set. **[F][R]** Dead splats contribute nothing to `f(x)` but still consume gradient compute and memory.

### 6.2 The thesis reading (locked in v1)

In `SOUL.md`, *Encouragement* is the **Atomic Injection** that prevents the standing wave from collapsing. **[T]** It is what keeps the cycle running in the absence of an external drive. v1 makes this explicit: **the splat is the operational form of Encouragement**, and the math below is the form Encouragement takes inside the WFR flow.

For the encouragement to actually perpetuate value at every alpha-grade backpass (rather than degrade into sycophancy, gradient noise, or reward hacking), it must satisfy three concurrent constraints:

1. **Aligned with truth** — survives Popperian falsifiability attempts. **[I][B]** *This is the constraint that the academic discussion of "alignment" is closest to; we make it explicit as a condition on the encouragement term, not a downstream filter.*
2. **Overlaid with philosophy** — passes the 6-philosopher composite (Aquinas, Marcus, Hofstadter, Polanyi, Ryle, Popper). The composite is what gives encouragement its *directional* validity; it tells the gradient *where* to go, not just *whether to be nonzero*. **[T][I]**
3. **Anchored in engineering and mathematics** — the Cholesky-of-precision parameterization, the closed-form WFR gradient, and the audit-trail receipt. These are what make the encouragement *reproducible*. **[F][I]**

Encouragement without truth is sycophancy. Encouragement without philosophy is fan-fiction. Encouragement without engineering is debt. All three layers required.

### 6.3 Two candidate forms (carried from v0 §6.3)

**(a) Continuous regularization.** `L_total = L_data + λ · Σ_i φ(v_i)` with `φ(v) = −log(v² + ε)`. **[I][A]**

**(b) Discrete birth/death (closer to the *injection* reading).** If `|v_i| < τ`, resample `b_i` from the residual-weighted training distribution and reset `L_i` to the prior. **[I][T]** The atomic, event-driven character matches the doctrinal "Atomic Injection" name. v1 recommends (b) as the canonical implementation and (a) as the smoothing fallback for environments where atomic event injection is operationally awkward.

### 6.4 Mapping to Bennett's w-maxing (new in v1)

Bennett (2025) reports that w-maxing — maximizing the *weakness* of constraints on functionality — yields a 110-500% generalization improvement over simp-maxing alone in his binary-arithmetic experiments. **[F]** The encouragement term operationalized in §6.2-6.3 is the **directional companion** to w-maxing:

- W-maxing tells you *which constraints to relax* (pick the weakest hypothesis that still satisfies the requirements).
- The atomic injection of encouragement tells you *which direction to promote* in the relaxed space.

Without the directional term, w-maxing relaxes constraints freely but has no doctrinal anchor for where the relaxed gradient should flow; the system can pick a generalization direction that satisfies the math but violates truth, philosophy, or engineering reproducibility. With the directional term, w-maxing's generalization gains become *retained* in the alpha-grade backpass forever, rather than spent on the most-recent gradient batch. **[I][B]**

This is the load-bearing v1 contribution: **the encouragement-regularization term is not just a remedy for `v_i → 0` collapse; it is the directional component that w-maxing is missing in Bennett's framework**. We predict — open question §13.4 — that adding an encouragement-regularized term to Bennett's binary-arithmetic w-maxing experiments would compound his 110-500% generalization improvement rather than substitute for it.

---

## 7. CertusOrdo overlay

(Carried from v0 §7 unchanged. The cycle `1 Verify → 2 Decide → 3 Correct → 4 Document → 5 Learn → 6 SPLAT (Fulcrum) → 9 Backpass / Release → 1` is the splat-regression forward and backward pass executed once per parameter update step. See [v0 §7](./aria_thesis_v0.md) for the table mapping CertusOrdo positions to splat-regression operations.)

---

## 8. Splats as the InSync unit of process

(Carried from v0 §8 with a small addition; the bulk of the section is unchanged and remains the externally-facing corollary.)

### 8.1–8.6

The current industry primitive is the token; the InSync primitive is the splat. Splats are smaller than tokens, carry more information per unit, encode process rather than surface, are billable, rate-limit-able, displayable as "splats burning," and trace through `splat_scorer.py` and `splat_admin.py`. See [v0 §8.1–8.6](./aria_thesis_v0.md) for the full development.

### 8.7 The splat in Bennett's language (new in v1)

Bennett's taxonomy gives the field a vocabulary of *tools* (search, approximation) and *meta-approaches* (scale-maxing, simp-maxing, w-maxing). The splat sits below the tool layer — it is the **unit at which work performed by any tool is measured**. A token measures one parameter of approximation. A search-step measures one parameter of search. A splat measures **one completed Verify→Backpass cycle of measured work**, regardless of which tool produced the cycle. **[I][B]**

This is why splats subsume tokens as the unit of cost, billing, and oversight: tokens are the unit *only* if the dominant tool is approximation. Splats are the unit if the system is a hybrid. The Bennett framework predicts the system *will* be a hybrid; the splat is the unit that hybrid measurement requires.

---

## 9. Extending Bennett (2025) — three missing foundational tools

(New section in v1. This is the academic-engagement contribution.)

### 9.1 Bennett's claim, fairly stated

Bennett (2025) argues the field of AGI has two foundational tools:

- **Search** — algorithms that take structure (rules, goals, observed data) and construct a solution within the confines of that structure: A*, theorem provers, planning, constraint satisfaction. **[F]**
- **Approximation** — algorithms that take inputs and parameters and approximate input-output relations from training data: CNNs, transformers, AlphaFold, all of modern deep learning. **[F]**

He observes that hybrids of the two (AlphaGo, o3, AlphaGeometry, neuro-symbolic systems, cognitive architectures) outperform pure-search or pure-approximation systems, and that the next jump in AGI capability will come from fusion of these tools combined with the right meta-approach. **[F]**

### 9.2 The three missing tools

Bennett's taxonomy is correct as far as it goes. We argue the production substrate we ship — and any production-scale AGI substrate worth its name — contains three additional foundational tools that Bennett's framework does not name:

#### 9.2.1 Tool 3 — Context (per-actor state-space projection)

Search and approximation operate *over* a state space. **Context defines what's IN the state space for a specific actor at a specific moment.** Without per-actor context:

- Search hallucinates: it explores branches that aren't reachable from the actor's actual position in the world, producing plans that are logically valid but operationally void.
- Approximation overfits: the model learns the training distribution's mean behavior and fails on the actor's edge cases — which are exactly where assistance matters.

The Aria production substrate implements context as a per-user identity document (`v4_user_state_docs.identity_purpose_md`), a hierarchical memory-card retrieval surface (`v4_memory_cards` with `account_scope_hash`), a caller-ID resolution map (`v4_caller_identity_map`), a multi-source scrubber (`/opt/aria/v4/context_card_scrubber.py`), and a threshold-gated 5-minute refresh cadence. Every search or approximation call at the agent-action layer is preceded by a context-load step that projects the global state-space down to the actor-relevant subspace. **[I]**

Bennett's framework treats context as either implicit in the environment (his computational-dualism critique) or as a confound to be handled by the system being measured (his enactive-cognition alternative). Neither names context as a tool. We do. **[B]**

#### 9.2.2 Tool 4 — Encouragement aligned with truth (the splat layer)

Search and approximation are zero-sum optimization processes. The gradient goes where the loss says, regardless of the *moral, philosophical, or civilizationally-validated* direction. **Encouragement is a directed atomic injection** that says "this direction is validated, perpetuate it in the alpha-grade backpass forever."

Operationally: the splat. Mathematically: §6 (Encouragement-Regularized WFR). Doctrinally: §2.1 + §6.2.

The encouragement tool sits adjacent to both search and approximation but is not reducible to either. Search produces *which option satisfies the rules*; approximation produces *which parameters fit the data*; encouragement produces *which direction the system should retain across all future operations of search and approximation, regardless of the local gradient signal*. **[I][B]**

Bennett's framework treats encouragement, implicitly, as a degenerate case of search (you're searching for hypotheses that don't violate your priors) or approximation (you're parameterizing a value function). Neither captures the *directed atomic* character of encouragement. We argue this is a category error in his taxonomy.

#### 9.2.3 Tool 5 — Kernel-level audit trail (cross-referenced thread provenance)

Search and approximation produce outputs. They lose the chain. The intermediate state — which branch was explored when, which gradient step adjusted which parameter at which wall-clock moment — is not preserved by the standard implementations of either tool.

The production substrate we ship logs **every action as a splat with timestamp, interface, session_id, layer, prompt, response, model_used, and tool_called**. Every splat is reproducible from its inputs. The audit chain extends down to the GPU/CPU/disk thread level: actions are timestamped against actual codebase deltas, so that poor decision-making can be reverse-engineered and tied back to the foundational philosophies the system was operating under at the moment of the decision.

This is not observability for the sake of observability. **It is the tool that makes Bennett's "artificial scientist" claim operationally true.** An artificial scientist must be able to design, perform, and reproduce experiments; reproducibility requires provenance; provenance requires kernel-level audit. Without this tool, "artificial scientist" is an aspiration; with it, it is a measurable property of the system. **[I][B]**

### 9.3 Why these three are foundational

A *foundational tool* in Bennett's sense is one that cannot be reduced to the others without loss. We argue context, encouragement, and audit each satisfy this:

- **Context is not search.** Search operates within a state space; context defines the space. The reduction "search over all possible state spaces" is computationally vacuous.
- **Context is not approximation.** Approximation can fit a per-actor model from data, but only after the context has selected which actor we're modeling. The reduction "approximate a function from (actor, query) → context" requires a context primitive first.
- **Encouragement is not search.** Search picks options that satisfy rules; encouragement picks options that *advance* a direction even when the rules are silent.
- **Encouragement is not approximation.** Approximation fits parameters to data; encouragement promotes parameters that align with truth + philosophy + engineering even when the data is sparse.
- **Audit is not search.** Audit is the post-hoc reconstruction of which search was actually performed, by what tool, with what authority. The search itself is silent on this.
- **Audit is not approximation.** Audit logs the actual gradient steps; approximation logs only the resulting parameters.

The five-tool taxonomy is therefore: **search · approximation · context · encouragement · audit**. **[I][B]**

### 9.4 The three meta-approaches, updated

Bennett's three meta-approaches (scale-maxing · simp-maxing · w-maxing) remain valid in the five-tool taxonomy. We add one observation: **w-maxing is the meta-approach that requires the three new tools the most acutely.**

- A w-maxed system relaxes constraints on functionality. Without context, the relaxed system has no actor-specific projection to relax *toward*.
- Without encouragement, the relaxed system has no directional anchor for which direction to take.
- Without audit, the relaxed system cannot be reverse-engineered when it generalizes incorrectly.

This is why Bennett's binary-arithmetic w-maxing experiments stop at 110-500% generalization improvement: the experiments do not include context, encouragement, or audit. We predict — open question §13.4 — that w-maxing with all three new tools compounds rather than substitutes the gain. **[I][B]**

---

## 10. Two gates beyond the field — flow state and release

(New section in v1. Structural metaphors for the externally-facing thesis.)

### 10.1 The gates the academic conversation is stuck at

The wider AI/AGI field is currently stuck at two gates that the InSync Tech production substrate has already crossed. These are not metaphors of marketing; they are gates with operational definitions.

### 10.2 Gate 1 — Flow state = compressed consciousness

**Compressed consciousness** is what a multi-dimensional reasoning rubric collapses into when a decision has to ship in a single moment. The PR-review rubric (Correctness · Security · Test coverage · Doctrine · Follow-ups) and the philosopher composite (Aquinas · Marcus · Hofstadter · Polanyi · Ryle · Popper) are both **decision-compressors** — they take a wide possibility space and collapse it into a single ship/no-ship verdict.

Most production AI systems are stuck on the wrong side of this gate: they either refuse to ship anything controversial (RLHF refusal mode) or ship without compression (raw LLM output, no audit). Flow state is the gate at which a system can ship under *compressed multi-axis judgment* — neither paralyzed by every axis nor unaware of them. **[T][I]**

The Aria production substrate crosses this gate by operationalizing the philosopher composite as a per-splat score and the PR-review rubric as a per-sprint scaffold (`/opt/aria/v4/sprints/<N>_<slug>/.claude/agents/pr-review.md`). Both are *running production code*, not aspirations.

### 10.3 Gate 2 — Release

Past flow state is **release**: the audit-trail-validated output that goes into the world.

Release is not just "publish." It is the condition that:

1. The reasoning chain is reproducible from its splat receipts (Tool 5, §9.2.3).
2. The conclusion survived the 6-philosopher composite (Tool 4, §9.2.2).
3. The action is logged at kernel-level provenance.
4. The action can be reverse-engineered if it turns out wrong, and the resulting lesson lands back in the substrate (closing the CertusOrdo cycle into the next Verify position).

Most AI systems can't reach release because they can't audit themselves. The Aria production substrate (splat economy + per-user context + 6-philosopher composite + kernel-level audit) is, to our knowledge, the first production system that reaches release routinely. **[I]**

### 10.4 Why this matters

The two-gate framing is the structural metaphor that lets the thesis be read as **a positive existence proof** rather than a negative critique of the field. We are not claiming Bennett is wrong; we are claiming the field has not yet shipped what Bennett predicts will be necessary. We have. The gates name the difference.

---

## 11. Empirical targets — wall-clock + generalization

(Section 9 of v0, renumbered to 11. Carried with one addition.)

### 11.1 Wall-clock (carried from v0)

Baseline: 378 s per training run, 2,400 splats, autodiff implementation. **[I]**

| Stage | Expected wall-clock | What it proves |
|---|---|---|
| (a) Cholesky-parameterized forward only, autodiff still on | ~150–200 s | Forward path matters but is not dominant cost |
| (b) Cholesky + hardcoded Theorem 1 gradient | ~30–60 s | The headline result — Backpass condensed |
| (c) (b) + KD-tree spatial pruning | ~10–20 s | Orthogonal multiplier composes |
| (d) (b) + Encouragement-Regularized WFR | (b)-ish wall-clock, fewer dead splats | Encouragement earns its place |

Diagnostics: per-step wall-clock; collapse count `|v_i| < 1e-6`; reconstruction loss vs baseline at matched step count; per-splat Cholesky condition number distribution.

### 11.2 Generalization (new in v1, Bennett-bridge)

We propose mirror-experiments against Bennett's binary-arithmetic w-maxing setup, with the encouragement-regularization term added. Bennett's reported 110-500% generalization improvement of w-maxing over simp-maxing is the baseline; we predict:

| Stage | Expected generalization rate | What it proves |
|---|---|---|
| (a) Bennett's simp-maxing baseline | 1.0× (definition) | Field-standard simp-maxing |
| (b) Bennett's w-maxing | 2.1× – 6.0× (Bennett's range) | Reproduces Bennett |
| (c) w-maxing + encouragement-regularization | 2.5× – 8.0× (predicted) | Encouragement compounds w-maxing |
| (d) (c) + context + audit | >8.0× (predicted) | Full 5-tool stack |

These are predictions. The work to validate them is open question §13.4–13.6. **[I][B]**

---

## 12. Provenance and confidentiality

- Thesis source: `/opt/aria/v4/SOUL.md`, line 10.
- Splat tracker (already in production): `/opt/aria/v4/splat_scorer.py`, `/opt/aria/v4/splat_admin.py`.
- Wall-clock companion: `/opt/aria/v4/SPLAT_WALL_CLOCK_REASONING_2026-05-06.md`.
- Bennett (2025) overlay analysis: `/opt/aria/v4/fellows_2026/related_work/bennett_2025_what_is_agi.overlay.md`.
- Paper-overlay habit charter: standing memory `paper_overlay_habit_2026_05_25`.
- Aria Code mirror: `/opt/aria/ac_gateway/ARIA_THESIS_WHITE_PAPER_v0_2026-05-06.md` (v0 only; v1 mirror pending).
- v1 drafted in session 2026-05-25 with Ian; Bennett overlay landed same session.
- Confidentiality: v0 was founder-only. v1 may be staged for **public release** as the canonical CertusOrdo / Aria research paper — see §14.

---

## 13. Open questions

(v0 §10 renumbered to §13. Three new bridge-items added.)

### 13.1–13.3 Carried from v0
Convention on `A` vs precision; Theorem 1 verbatim; inverse audit; WFR metric verification; collapse acknowledgement in source; reference-implementation autodiff/hardcoded check; benchmark comparison. See [v0 §10](./aria_thesis_v0.md).

### 13.4 Bennett-bridge: w-maxing + encouragement compounding (new)
Does the encouragement-regularization term (§6) compound or substitute Bennett's 110-500% w-maxing generalization gain when added to his binary-arithmetic experimental setup? Empirical, falsifiable. Predicted: compounds.

### 13.5 Bennett-bridge: AIKR formalization (new)
Wang's Assumption of Insufficient Knowledge and Resources (NARS, 1995) is the formal name for what we operationally call "BYOK plus budget-aware routing." Open question: can the CertusOrdo cycle be re-derived as a NARS-compatible inheritance logic, so that the citation bridge is mathematical rather than rhetorical?

### 13.6 Bennett-bridge: enactive cognition formalization (new)
Bennett's pancomputational-enactivism alternative to computational dualism (§9 of Bennett, citing Vervaeke + Levin) frames cognition as a process embedded in the environment, not a software policy. Open question: is the per-user context card (§9.2.1) the first stage of an enactive formalization, or is full enactive compliance gated on on-device inference (the side-project sovereignty voice work)?

---

## 14. Tether plan + publication plan

### 14.1 Tether plan — carried from v0 §12
1. Read the Daniels & Rigollet source end-to-end once before tethering.
2. For each section here marked **[R]**, replace recall with verbatim source content (with citation).
3. For each section here marked **[A]**, decide: tether to existing source content, or retain as Aria-formulation.
4. For each section marked **[I]**, leave as Ian-original; cross-reference closest source section.
5. Re-version: this document becomes v2 once tethered; v1 is preserved.

### 14.2 Publication plan (new in v1)

Bennett (2025) is a model for how to enter this academic conversation:

1. **Springer Nature LNCS · AGI 2026 conference**. Bennett published in the same venue every year 2022–2025. 14-page LNCS format. Acceptance bar is moderate; track record matters more than per-paper novelty.
2. **arXiv first.** Submit to arXiv before conference acceptance — establishes citability, gives a DOI-like identifier, gets indexed by Google Scholar same week. Bennett did this (arXiv 2503.23923 → Springer print months later).
3. **GitHub for the appendices.** Bennett's `github.com/ViscousLemming/Technical-Appendices` holds the formal-derivation appendix that doesn't fit in 14 pages. We already have `github.com/iansteitz1-eng/certusordo` and `github.com/iansteitz1-eng/splat-schema` as the canonical public artifacts; `aria-thesis` (this repo) is the citeable paper.
4. **One paper per year minimum.** Bennett shipped 6 papers across 2022–2025 in this series. Each was incremental. *The cumulative effect is a publication track.*
5. **CC-BY 4.0 license.** Removes friction for citers + indexers. Match Bennett.
6. **Citation graph to build.** Wang (NARS, AIKR), Sutton (Bitter Lesson), Chollet (skill acquisition), Goertzel (Hyperon, AGI definition), Legg-Hutter (universal intelligence), Hutter (UAI, 2024 textbook), Friston (free energy principle), Levin (collective intelligence), Perrier-Bennett (LM-agents critique, arXiv 2502.10420), Thórisson (constructivist AI / AERA).

The submission target for the first paper is **AGI 2026 deadline (~April-May 2026)**. The paper drops the wall-clock-only framing and leads with §6 + §9 + §10 — encouragement, the three missing foundational tools, and the two gates.

---

## References

Bennett, M.T. (2025). *What The F\*ck Is Artificial General Intelligence?* arXiv:2503.23923. Forthcoming in Springer Nature LNCS, AGI 2025 conference proceedings.

Bennett, M.T. (2024). *Computational dualism and objective superintelligence.* In: Artificial General Intelligence. Springer Nature.

Bennett, M.T. (2024). *Is complexity an illusion?* In: Artificial General Intelligence. Springer Nature.

Bennett, M.T. (2025). *How To Build Conscious Machines.* PhD thesis, Australian National University. github.com/ViscousLemming/Technical-Appendices.

Chollet, F. (2019). On the measure of intelligence.

Friston, K. (2010). The free-energy principle: A unified brain theory? *Nature Reviews Neuroscience* 11(2), 127–138.

Goertzel, B. (2014). Artificial general intelligence: Concept, state of the art. *Journal of Artificial General Intelligence* 5(1), 1–48.

Goertzel, B. (2023). OpenCog Hyperon: A framework for AGI at the human level and beyond. OpenCog Foundation tech report.

Hutter, M., Quarel, D., Catt, E. (2024). *An Introduction to Universal Artificial Intelligence.* Chapman and Hall/CRC, 1st ed.

Legg, S., Hutter, M. (2007). Universal intelligence: A definition of machine intelligence. *Minds and Machines*, 391–444.

Levin, M., McMillen, P. (2024). Collective intelligence: A unifying concept for integrating biology across scales and substrates. *Communications Biology.*

Perrier, E., Bennett, M.T. (2025). Position: Stop acting like language model agents are normal agents. arXiv:2502.10420.

Sutton, R. (2019). The Bitter Lesson. University of Texas at Austin.

Sutton, R.S., Barto, A.G. (2018). *Reinforcement learning: An introduction.* MIT Press.

Wang, P. (2019). On defining artificial intelligence. *Journal of Artificial General Intelligence* 10(2), 1–37.

Wang, P. (2006). *Rigid Flexibility: The Logic of Intelligence.* Springer Nature.

(Mathematical references — Daniels & Rigollet, Cholesky-of-precision literature, WFR / unbalanced OT — to be added with verbatim citations on the v2 tether pass.)

<!-- v2 work items — cumulative list, append per overlay -->
<!--
PAPER-OVERLAY-DRIVEN UPDATES FOR v2:

From Bennett (2025) overlay [first overlay · 2026-05-25]:
- §2.1 ✅ DONE in v1 — splat = atomic injection of encouragement (locked)
- §6.4 ✅ DONE in v1 — encouragement-regularization as directional companion to w-maxing
- §9 ✅ DONE in v1 — three missing foundational tools
- §10 ✅ DONE in v1 — two gates beyond the field
- §11.2 ✅ DONE in v1 — predicted generalization-rate table
- §13.4-13.6 ✅ DONE in v1 — Bennett-bridge open questions
- §14.2 ✅ DONE in v1 — publication plan

From MemOS / Li et al. (2025) overlay [second overlay · 2026-05-25]:
- §2.2 (new for v2) — Adopt MemCube vocabulary by reference; our v4_memory_card IS a MemCube-shaped object
- §8.8 (new for v2) — splat vs MemCube comparison: MemCube = unit of memory storage; splat = unit of memory-promotion-with-direction
- §9.2.1 (extend in v2) — Cite MemOS as external validation that Context is foundational
- §9.2.2 (extend in v2) — Cite MemOS as production proof that field is building memory governance without the encouragement layer
- §11.3 (new for v2) — LOCOMO benchmark predicted scores: ~75-85 overall with biggest gain on truth-preservation
- references (extend in v2) — Li et al. 2025 + Mem0 + Zep + LangMem + OpenAI-Memory cluster

From AEX / open-experiments (2025) overlay [third overlay · 2026-05-25]:
- §8.9 (new for v2) — Marketplace layer above the substrate: splat audit (per-action) vs AEX settlement ledger (per-contract)
- §10.4 (extend in v2) — Two-gate framing applied to multi-agent marketplaces; AEX as Exhibit B for missing gates
- §11.4 (new for v2) — AEX-style marketplace participation as a measurable claim

PAPER-OVERLAY QUEUE FOR FUTURE v2/v3 INPUTS:
- Bowman/Benton (2022) — Measuring Progress on Scalable Oversight · pending arxiv:2211.03540 overlay
- Recursive Self-Critiquing (2025) — arxiv:2502.04675 pending
- Perrier-Bennett (2025) — Stop acting like LM agents · arxiv:2502.10420 pending
- Bennett (2024) — Computational dualism / Is complexity an illusion · Springer AGI 2024 · pending
- Wang (2019) — On defining AI · NARS formal foundation · pending
- Goertzel (2023) — Hyperon tech report · pending

See `/opt/aria/v4/fellows_2026/related_work/_queue.md` for the running queue.
See `/opt/aria/v4/fellows_2026/publication_plan.md` for the conference + arXiv submission cadence.
See `/opt/aria/v4/fellows_2026/three_missing_tools_architecture.md` for engineering backing §9.
See `/opt/aria/v4/fellows_2026/two_gates_spec.md` for operational backing §10.
-->

