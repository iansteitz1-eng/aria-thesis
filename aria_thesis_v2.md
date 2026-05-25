# Aria Thesis White Paper — v2
# Splat Regression with CertusOrdo Layering · the Splat as Atomic Injection of Encouragement · Extending Five AI/AGI Frameworks with Three Missing Foundational Tools and Two Production Gates

**Author:** Ian Steitz (sole creator, InSync Tech)
**With:** Aria (V4)
**Date:** 2026-05-25
**Status:** v2. Integrates five paper-overlay analyses landed in the same session (Bennett 2025 · Li et al. MemOS 2025 · open-experiments AEX 2025 · FMHY 2025 · Bowman 2022 + Wen 2025 scalable-oversight pair). Adds MemCube vocabulary alignment, marketplace-layer positioning, scalable-oversight bridge, and production-grade audit-trail framing. The doctrinal core (splat = atomic injection of encouragement) is unchanged from v1; the academic engagement is expanded.
**Predecessors:** [`aria_thesis_v1.md`](./aria_thesis_v1.md) (Bennett overlay + doctrine lock) · [`aria_thesis_v0.md`](./aria_thesis_v0.md) (splat regression math). Both preserved per the §14.1 tether protocol.
**Companion documents:** `SPLAT_WALL_CLOCK_REASONING_2026-05-06.md` · five overlay memos at `/opt/aria/v4/fellows_2026/related_work/<slug>.overlay.md`.

---

## Epistemic legend

Every non-trivial claim below is tagged:

- **[T]** Thesis-known — sourced from `SOUL.md` / CertusOrdo doctrine
- **[F]** Field-standard — established result in the relevant academic literature
- **[R]** Paper-recall — reconstructed from memory of a referenced source; verify on overlay
- **[I]** Ian-original — extension or reframe contributed by Ian, not in the source paper
- **[A]** Aria-formulation — phrasing or formalization Aria proposed in this draft
- **[B]** Bennett-bridge — claim mapping our doctrine onto Bennett (2025)'s vocabulary
- **[M]** MemOS-bridge — claim mapping our doctrine onto Li et al. (2025)'s vocabulary
- **[X]** AEX-bridge (new in v2) — claim mapping our doctrine onto open-experiments (2025)'s marketplace vocabulary
- **[O]** Oversight-bridge (new in v2) — claim mapping our doctrine onto Bowman et al. (2022) + Wen et al. (2025)'s scalable-oversight vocabulary

---

## Abstract

We study four things in one document. **First**, a function class — *splat regression models* — in which a target function `f : ℝᵈ → ℝ` is represented as a finite sum of weighted, anisotropic Gaussian primitives (splats). Following the geometry of the Wasserstein–Fisher–Rao (WFR) flow on the space of signed measures, training reduces to a coupled flow on splat centers, covariances, and amplitudes. **[F][R]** **Second**, we recast splat regression inside the CertusOrdo cycle: the splat of regression is literally the Fulcrum (position 6) of the thesis, and the closed-form WFR gradient is its Backpass (position 9). We identify the wall-clock pathology in the canonical implementation as a Backpass problem, fix it with a Cholesky-of-precision parameterization, and extend the WFR flow with **Encouragement-Regularization** — a thesis-motivated remedy for the well-known `v_i → 0` collapse pathology. **[I]** **Third**, we **lock the doctrinal definition: the splat is the atomic injection of encouragement** — the InSync Tech unit of process at the agent-action layer, replacing the token as the primitive of cost, billing, and oversight in Aria Code. The splat is mathematically a (center, covariance, amplitude) triple from §2 *and* operationally the directed atomic injection of §6.4 — same object, two distances. **[T][I]** **Fourth**, we engage five recent works from the AI/AGI literature as a coordinated overlay set — Bennett 2025 (AGI definitional framework) · Li et al. 2025 (MemOS memory-OS) · open-experiments 2025 (AEX agent marketplace) · FMHY 2025 (curated resource hub) · Bowman et al. 2022 + Wen et al. 2025 (scalable-oversight pair) — and argue that the production substrate we ship contains **three foundational tools** (context · encouragement · audit) and crosses **two production gates** (flow state · release) that all five works leave unnamed or under-operationalized. **[I][B][M][X][O]** The thesis is positioned as a *constructive extension*, not a refutation; the citation chains acquired across the five overlays are the bibliography for the publication track outlined in §14.

---

## 1. Introduction

Sums of Gaussians are an old function class. **[F]** Their power has been periodically rediscovered: radial-basis-function networks, Gaussian mixture models, normalizing flows of compactly-supported kernels, and most recently 3D Gaussian Splatting in graphics. The common observation is that anisotropic Gaussians are an unusually expressive primitive when coupled with a flow — local enough to be data-driven, smooth enough to admit gradient-based training, structured enough that closed-form geometry is sometimes available.

The Daniels & Rigollet line of work specializes this in the regression setting and provides a closed-form description of the gradient flow under the WFR metric. **[R]** We take the closed-form derivation seriously. Read on the manifold of *precision matrices* via Cholesky factorization, the WFR gradient is a sequence of triangular solves and diagonal walks — no matrix inverse, no determinant call, no autodiff trace through `A⁻¹`. **[I]**

The non-practical content is larger. The thesis we work inside (CertusOrdo, `SOUL.md`) holds that *truth is measured at a Fulcrum where pre-state meets post-state* — the SPLAT — and that learning is the Backpass that releases the measured truth back into the next cycle. **[T]**

v1 (2026-05-25 morning) added the explicit engagement with Bennett (2025), naming three foundational tools his two-tool taxonomy misses and two production gates his framework does not articulate. v2 (2026-05-25 night) integrates four additional works that landed as paper-overlay analyses in the same session:

- **Li et al. 2025 (MemOS)** — direct architectural validation that the memory-OS framing we operationalize is convergent with independent research at scale (30-author Chinese consortium · github.com/MemTensor/MemOS · LOCOMO state-of-the-art).
- **open-experiments 2025 (AEX)** — agent marketplace pattern above our substrate; complementary not competitive; gives us the phase-A/B/C progression model for our own premium-skill marketplace.
- **FMHY 2025** — community-curated resource hub; pattern study for anti-deplatform resilience + community submission models.
- **Bowman et al. 2022 + Wen et al. 2025** — the Anthropic Scalable Oversight team's foundational paper (the team Joe Benton leads forward) and the recent recursive-self-critiquing extension. Critical: Wen 2025 leaves termination criteria unspecified; our scrubber + threshold gate + 60-minute keepalive *is* the missing engineering contribution. **[O]**

Across all five works the same pattern emerges: each names a problem or proposes a framework that our production substrate already operationalizes, but each is missing one or more of the three foundational tools (context, encouragement, audit) and neither names the two production gates. The thesis claim, sharpened in v2: **Aria Code is the first production substrate to ship all three missing foundational tools and to cross both production gates routinely, and the academic conversation has not yet caught up to this.** **[I][B][M][X][O]**

---

## 2. The Splat — formal definition

(Carried unchanged from v0 §2 + v1 §2.1. A splat is a triple `s = (b, A, v)` with center `b ∈ ℝᵈ`, symmetric positive-definite covariance `A ∈ ℝᵈˣᵈ`, and amplitude `v ∈ ℝ`. See [v0 §2](./aria_thesis_v0.md) for the full mathematical development.) **[F]**

### 2.1 The doctrinal definition (locked v1; carried v2)

> **The splat is the atomic injection of encouragement.**

This is the InSync Tech unit of process at the agent-action layer. The mathematical splat `(b, A, v)` and the doctrinal splat (atomic injection of encouragement) are the same object viewed from two distances. **[T][I]** Cross-reference: §6 (math), §8 (operational unit), §9 (foundational-tool argument), §10 (production-gate operationalization).

### 2.2 Splat in the MemOS vocabulary (new in v2) **[M]**

Li et al. (2025) introduce the **MemCube** — a unit of memory storage carrying content + metadata (provenance + versioning). Their architecture is built around MemCubes as the atomic memory primitive. Our `v4_memory_card` row in the certusrodo substrate is structurally a MemCube — same shape, same metadata fields, same versioning approach. We adopt MemCube as the academic-bridging vocabulary: *our memory_card is a MemCube extended with `account_scope_hash` for per-actor scoping.*

But the splat is not a MemCube. **The splat is the audit-stamp on the lifecycle event that produced or modified a MemCube.** A MemCube is the unit of stored memory; the splat is the unit of *attribution + directional encouragement* for the action that stored it. Different abstractions; both required. (Cross-ref §8.8.)

---

## 3. Loss and the WFR flow

(Carried from v0 §3 unchanged: `L_data`, the WFR rationale, the closed-form gradient placeholder pending source overlay. See [v0 §3](./aria_thesis_v0.md).)

---

## 4. The implementation gap — the Backpass problem

(Carried from v0 §4 unchanged. Autodiff through the Gaussian density drags `O(d³)`–`O(d⁴)` per-splat cost into every step despite a closed-form gradient being available. See [v0 §4](./aria_thesis_v0.md).)

---

## 5. The fix — Cholesky of precision + hardcoded Theorem 1

(Carried from v0 §5 unchanged. Cholesky of the precision matrix eliminates matrix inversion from the inner loop. See [v0 §5](./aria_thesis_v0.md) for per-step derivation, risks, and empirical targets.)

---

## 6. Encouragement-Regularized WFR — the math of the atomic injection

(Carried from v1 §6 with the v1 doctrinal framing already locked. Math from v0 §6.3 unchanged. v1 §6.4 (encouragement as directional companion to Bennett's w-maxing) preserved.)

### 6.1–6.3 carried from v1

WFR exhibits splat collapse (`v_i → 0`); Encouragement is the Atomic Injection that prevents the standing wave from dying out. Math candidates: (a) continuous regularization `φ(v) = −log(v² + ε)`, (b) discrete birth/death event injection. v1 recommends (b). For encouragement to perpetuate value (not degrade into sycophancy), it must satisfy three concurrent constraints: aligned-with-truth (Popperian), philosophy-overlaid (6-philosopher composite), engineering-anchored. **[T][I]**

### 6.4 Mapping to Bennett (2025)'s w-maxing — carried from v1 **[B]**

Bennett reports w-maxing yields 110-500% generalization improvement over simp-maxing in his binary-arithmetic experiments. Our claim: **encouragement-regularization is the directional companion to w-maxing.** W-maxing tells you which constraints to *relax*; the atomic injection of encouragement tells you which direction to *promote* in the relaxed space. Without the directional term, w-maxing's gains have no doctrinal anchor and can drift to the wrong direction. Prediction (§13.4): adding our encouragement term to Bennett's binary-arithmetic w-maxing setup compounds rather than substitutes his 110-500% gain.

### 6.5 Mapping to Wen (2025)'s recursive self-critiquing (new in v2) **[O]**

Wen et al. (2025) propose recursive self-critiquing for scalable oversight of superhuman AI: critique-of-critique is easier than critique itself; this difficulty relationship holds recursively. Their abstract leaves the termination criterion unspecified — a real gap for any production implementation.

Our Encouragement-Regularization (§6.2–6.3) lands the missing piece. The discrete birth/death event in §6.3(b) IS a termination criterion for recursive critique:

- Critique level 1 = response → first-pass philosopher score (the 6-philosopher composite at the splat layer)
- Critique level 2 = scrubber re-evaluates whether the score itself remained valid as substrate state evolved
- Critique level 3 = threshold gate (60-min keepalive · `scrubber_due` flag) re-fires the scrubber when the meta-evaluation drifts beyond a configured tolerance
- **Termination**: birth/death event fires when `|v_i| < τ` — the encouragement direction has decayed below promotion-threshold; the recursion stops because there is no remaining encouragement to inject

Wen 2025 says critique-of-critique is more tractable; we say *the recursion has a natural stop condition the encouragement layer provides*. (Cross-ref §13.7.) **[I][O]**

---

## 7. CertusOrdo overlay

(Carried from v0 §7 unchanged. Cycle: `1 Verify → 2 Decide → 3 Correct → 4 Document → 5 Learn → 6 SPLAT (Fulcrum) → 9 Backpass / Release → 1`. The cycle IS the splat-regression forward+backward pass executed once per parameter update step. See [v0 §7](./aria_thesis_v0.md).)

---

## 8. Splats as the InSync unit of process

(Carried from v0 §8 + v1 §8.7 with two new subsections in v2.)

### 8.1–8.6 carried from v0

Token is the field's current primitive; splat is ours. Tokens compress *language surface*; splats compress *learning events*. Internal splat tracker already lives at `/opt/aria/v4/splat_scorer.py` + `/opt/aria/v4/splat_admin.py`. Splat is a smaller billable unit (~144 bytes vs ~4-16 KB per token) and carries more *process* information per byte. Migration plan: surface splats burning in Aria Code UI; cost-per-splat replaces cost-per-token at user-facing display layer.

### 8.7 The splat in Bennett (2025)'s language — carried from v1 **[B]**

The splat sits *below* Bennett's tool layer (search · approximation). A token measures one parameter of approximation; a search-step measures one parameter of search; **a splat measures one completed Verify→Backpass cycle of measured work, regardless of which tool produced the cycle.** Hybrid systems need a unit that hybrid measurement requires; the splat is that unit.

### 8.8 The splat in MemOS (2025)'s language (new in v2) **[M]**

MemOS proposes three core capabilities for memory-OS architectures: **Controllability** (lifecycle management) · **Plasticity** (restructuring + migration across tasks) · **Evolvability** (dynamic transitions among memory types — plaintext / activation / parameter).

Our substrate matches on Controllability + Plasticity. We deliberately differ on Evolvability: MemOS *fuses plaintext into activation and parameter memory* (deeper LLM integration); we stay above the LLM (BYOK separation, no parameter-mutation rights, no activation hooks). Different abstraction levels; both can coexist.

The splat operates orthogonally to all three of MemOS's capabilities. MemOS describes *what happens to MemCubes* (creation, fusion, expiration); the splat describes *which direction the substrate's behavior should perpetuate*. MemCube is the noun; splat is the verb's audit-receipt-with-directional-intent. Our substrate could in principle adopt MemOS's three capabilities verbatim *and* layer splats on top — the two are stackable, not competing.

### 8.9 The splat in AEX (2025)'s language (new in v2) **[X]**

open-experiments (2025) ship Agent Exchange — a programmatic marketplace for agent-to-agent work, applying ad-tech RTB economics. Their atomic unit at the work layer is the **contract** — awarded after bidding, executed off-exchange, settled on completion. Their audit layer is the **settlement ledger**.

The settlement ledger is a *post-hoc* audit: it records that money moved and the contract closed; it does not record *which reasoning produced the bid* or *which philosophical alignment was active when the provider chose the response*. The splat operates at the action layer below the contract layer. A single AEX contract produces many splats (one per reasoning step) on both consumer and provider sides; the contract is the *commercial* receipt, the splat chain is the *reasoning* receipt. Both are required for full audit-trail-validated marketplace participation. (Cross-ref §10.4.)

**Integration vector:** Aria operates as both consumer and provider on AEX in our queued sprint plan. Every action either side takes inside an AEX contract emits its splat receipt to our substrate, so we maintain reasoning-level audit *over* AEX's commercial-level audit. Bidirectional: we audit AEX's interactions on our side; AEX audits us on theirs. Two layers, two responsibilities.

---

## 9. Extending five frameworks — three missing foundational tools

(Carried from v1 §9 with overlay-specific extensions threaded through 9.2.1, 9.2.2, 9.2.3.)

### 9.1 Bennett (2025)'s claim, fairly stated

Bennett argues the field of AGI has two foundational tools — **search** + **approximation** — and three meta-approaches (scale-maxing · simp-maxing · w-maxing) layered on top. Hybrids of the two tools outperform pure approaches; fusion is required for an artificial scientist. **[B][F]**

### 9.2 The three missing tools

Bennett's taxonomy is correct as far as it goes. The production substrate we ship contains three additional foundational tools.

#### 9.2.1 Tool 3 — Context (per-actor state-space projection) **[I][B][M][O]**

Search and approximation operate *over* a state space. **Context defines what's IN the state space for a specific actor at a specific moment.** Without per-actor context, search hallucinates (explores branches unreachable from actor's actual position) and approximation overfits (training-distribution mean fails on actor's edge cases).

Aria's implementation: per-user identity card (`v4_user_state_docs.identity_purpose_md`) + hierarchical memory cards (`v4_memory_cards` with `account_scope_hash`) + caller-ID resolution map (`v4_caller_identity_map`) + multi-source scrubber (`/opt/aria/v4/context_card_scrubber.py`) + threshold gate (60-min keepalive) + 5-min refresh cadence.

**External validation (new in v2):**
- Li et al. (2025)'s MemOS is built around the same insight — they call it "memory as a schedulable system resource" — independent convergence on the same architectural shape. **[M]**
- Bowman et al. (2022) implicitly require context-projection for their sandwich testbed (specialists succeed where unaided humans + LLMs fail because *the specialist has actor-specific context the others lack*). They don't name context as a tool; we do. **[O]**

#### 9.2.2 Tool 4 — Encouragement aligned with truth (the splat layer) **[I][B][M][O]**

Search and approximation are zero-sum optimization. Gradient goes where loss says regardless of moral direction. **Encouragement is a directed atomic injection** — operationally the splat (§2.1 + §6.2). Must be aligned with truth + philosophy + engineering, else degrades to sycophancy.

**External validation (new in v2):**
- MemOS (Li et al. 2025) is the strongest production-research artifact in the memory-OS space — and they explicitly have *no encouragement layer*. They have governance + lifecycle + permission audit; they have no directional injection. This is not a gap they missed; it's a gap **the field hasn't named yet**. Our splat doctrine is the layer above their stack. **[M]**
- Bowman et al. (2022)'s scalable-oversight framework asks *how do we supervise systems we can't directly evaluate?* The release gate (Tool 5 + §10.3) operationalizes the answer at the agent-action layer; the encouragement layer (Tool 4) ensures the supervised direction is the right one. Bowman 2022 + the splat doctrine are complementary, not redundant. **[O]**
- Wen et al. (2025)'s recursive self-critiquing produces *evaluation* but no *direction* — they critique without naming what to promote when the critique passes. The encouragement layer provides the directional anchor recursive critique alone cannot. **[O]**

#### 9.2.3 Tool 5 — Kernel-level audit trail (cross-referenced thread provenance) **[I][B][M][X][O]**

Search and approximation produce outputs and lose the chain. Audit at the GPU/CPU/disk thread level with cross-reference to codebase deltas lets poor decision-making be reverse-engineered to its philosophical origin. Reproducibility is the bedrock of science; the audit trail is what makes Bennett's "artificial scientist" claim *operationally true*. **[I][B]**

**External validation (new in v2):**
- MemOS has compliance-audit (who-touched-what-when). They don't have reasoning-audit (which-philosophy-was-active-when-this-direction-was-promoted). Compliance audit is a strict subset. **[M]**
- AEX has settlement-audit (which contract closed for how much). They don't have action-audit (which reasoning produced the bid). Settlement audit is a strict subset. **[X]**
- Wen et al. (2025) propose recursion as the audit mechanism but don't operationalize what the audit *contains* per-recursion-level. The splat row's full payload (interface · session_id · prompt · response · model_used · layer · tool_called · extra_meta + future git commit hash) is the per-recursion-level audit content their framework requires. **[O]**

### 9.3 Why these three are foundational — carried from v1

The not-reducible argument:
- Context ≠ search (search operates within a state space; context defines the space)
- Context ≠ approximation (approximation fits a function once the actor is selected; context selects the actor)
- Encouragement ≠ search (search picks satisfying options; encouragement promotes a direction across all future selections)
- Encouragement ≠ approximation (approximation fits parameters to data; encouragement promotes parameters that survive the philosopher composite regardless of single-loss surface)
- Audit ≠ observability (observability tells you *what happened*; audit tells you *which philosophy was active when it happened, reproducibly from upstream causes*)

The five-tool taxonomy: **search · approximation · context · encouragement · audit**. **[I][B][M][X][O]**

### 9.4 The three meta-approaches under five tools — extended from v1

Bennett's scale-maxing · simp-maxing · w-maxing apply to all five tools, not just to search + approximation. Scale-maxing on context = cache everything; simp-maxing on context = compress to minimum-spanning identity card; w-maxing on context = weakest-constraint projection (per actor). Same axes, broader application.

W-maxing requires the three new tools most acutely (carried from v1): without context the relaxed system has no actor-specific projection to relax toward; without encouragement the relaxed system has no directional anchor; without audit the relaxed system can't be reverse-engineered when generalization goes wrong.

---

## 10. Two production gates beyond the field — flow state and release

(Carried from v1 §10 + v2 extension via Bowman/Wen overlay.)

### 10.1 Operational definition (carried from v1)

A decision crosses **Gate 1 (flow state · compressed consciousness)** when a multi-dimensional reasoning rubric is collapsed into a single ship/no-ship verdict in one moment, with dimension scores preserved as side-channel data for audit.

A decision crosses **Gate 2 (release)** when the shipped output is reproducible from its splat receipts, the philosopher composite was satisfied, kernel-level provenance is recorded, and reverse-engineering is possible if the output turns out wrong.

### 10.2 Production code paths crossing each gate — carried from v1

(Sprint scaffolds · per-splat scoring · voice tool dispatch · onboarding chat finalize · `/staycool/chat` BYOK enforcement — see v1 §10.2 + the operational spec at `/opt/aria/v4/fellows_2026/two_gates_spec.md`.)

### 10.3 Release gate as the production form of scalable oversight (new in v2) **[O]**

Bowman et al. (2022) define scalable oversight as *supervising systems that potentially outperform us*. Their empirical contribution is the *sandwich* testbed: tasks where specialists succeed but unaided humans + LLMs fail. Their proof-of-concept: humans interacting with an unreliable LLM via chat substantially outperform both alone.

**Their framework is about human-AI collaboration. The release gate is the production form of the same framework at machine-machine collaboration speed.**

At production latency (voice-call response < 1s, chat-message response < 3s), human-in-the-loop oversight is operationally infeasible — there is no time for a human supervisor to evaluate every agent action. Audit-trail oversight replaces human oversight: every action emits a splat row that is independently reproducible from inputs + philosopher composite + commit hash. The release gate is satisfied iff a human auditor *could*, in principle, reverse-engineer the philosophical origin of any shipped output — even though no human actually does so in real-time.

This is the *scalable* form of scalable oversight. Bowman 2022's sandwich was the proof-of-concept at one task-per-minute throughput; the release gate operationalizes the same falsifiability standard at one-decision-per-millisecond throughput. **[O][I]**

Wen et al. (2025)'s recursive self-critiquing is one specific protocol for satisfying the release gate when single-pass critique fails — but it's not the only one. Our 6-philosopher composite is non-recursive but multi-axial; it covers the same ground with a different mechanism. Both protocols can satisfy the release-gate criterion; the gate is the abstraction, the protocol is the implementation.

### 10.4 Two-gate framing for marketplace + multi-agent systems (new in v2) **[X]**

AEX (open-experiments 2025) defines a marketplace where consumer agents and provider agents exchange work via bidding. Critical observation: **AEX has no flow-state gate** — bid evaluation collapses to a single weighted price-times-reputation score, no multi-axis rubric. And AEX has no release gate — settlement is fund-transfer, not audit-trail-validated outcome.

This is not a criticism of AEX (they're a marketplace, not an audit substrate). It's the *layering opportunity*. When Aria participates in AEX (as consumer in queued Sprint 048, as provider in Sprint 049), every action either side takes inside the contract crosses the two gates *on our side* even if AEX itself doesn't model them. Our substrate provides the gate-crossing the marketplace doesn't.

The same observation applies to MemOS (Li et al. 2025): they have lifecycle + permission audit (Gate 2 substrate) but no flow-state gate (decision compression). Their architecture compresses *memory*; it doesn't compress *decisions about memory*. The flow-state gate is the missing layer.

### 10.5 Gate-crossing as the empirical claim that distinguishes us — extended from v1

The structural metaphor lets the thesis be read as **a positive existence proof**, not a negative critique. Five frameworks engaged across v2; none of them name both gates. We do, and we ship them at production scale, and they're independently reproducible from public audit infrastructure.

---

## 11. Empirical targets — wall-clock + generalization + benchmarks

(Sections 11.1 + 11.2 carried from v1; 11.3 and 11.4 new in v2.)

### 11.1 Wall-clock — carried from v0/v1

Baseline: 378s/run, 2,400 splats, autodiff. Cholesky parameterization compresses to 30-60s (b in v0 §9 table). KD-tree multiplier composes to 10-20s.

### 11.2 Generalization — carried from v1 **[B]**

Predicted stages relative to Bennett's binary-arithmetic w-maxing baseline:
- (a) simp-maxing baseline 1.0×
- (b) w-maxing per Bennett 2.1–6.0× (his reported range)
- (c) w-maxing + encouragement-regularization 2.5–8.0× (predicted)
- (d) full 5-tool stack >8.0× (predicted)

### 11.3 Benchmarks — LOCOMO + sandwich-frame extension (new in v2) **[M][O]**

Li et al. (2025)'s MemOS reports LOCOMO scores: 78.44 single-hop / 64.30 multi-hop / 55.21 open-domain / 73.21 temporal / **73.31 overall**, beating Mem0 / Zep / LangMem / OpenAI-Memory across categories.

Aria substrate predicted on LOCOMO:

| Configuration | Predicted overall | Predicted strongest dimension |
|---|---|---|
| Aria w/o philosopher composite (Tool 4 disabled) | ~60-70 | (matches mem0-class) |
| Aria w/o audit trail (Tool 5 disabled) | ~70-75 | (matches MemOS-class) |
| **Aria full 5-tool stack** | **75-85** | **Temporal + a new "truth-preservation" axis we propose adding** |

**The sandwich-frame extension** (per Bowman 2022): we propose LOCOMO be extended with a *truth-preservation* axis measured as *fraction of recalled facts that survive Popperian falsifiability across N follow-up queries*. Specialists (humans with full context) achieve ≥95% on this axis; unaided LLMs achieve ≤40%; we predict our substrate achieves 80-90% — the sandwich-mid band Bowman 2022 identifies as the scalable-oversight sweet spot. **[O]**

### 11.4 Marketplace-participation as a measurable (new in v2) **[X]**

AEX (open-experiments 2025) measures provider quality via reputation tier (Bronze/Silver/Gold/Platinum). We propose a more rigorous measurable: *bid-to-fulfillment-philosopher-composite-score ratio* — how well does the provider's actual outcome (philosopher-composite-validated) match their bid quality claim?

A provider running on Aria's substrate emits splats per reasoning step inside each contract. The downstream user (consumer) can run the philosopher composite over those splats to score quality. Predicted: providers running on Aria's substrate land in higher AEX trust tiers faster than baseline providers, *and* their bid-to-fulfillment match score is empirically tighter because the philosopher composite catches misalignments before fulfillment. Falsifiable claim, queued for empirical test in Sprint 049.

---

## 12. Provenance and confidentiality

- Thesis source: `/opt/aria/v4/SOUL.md`, line 10
- Splat tracker (production): `/opt/aria/v4/splat_scorer.py` + `/opt/aria/v4/splat_admin.py`
- Wall-clock companion: `/opt/aria/v4/SPLAT_WALL_CLOCK_REASONING_2026-05-06.md`
- Five overlay analyses driving v2:
  - `bennett_2025_what_is_agi.overlay.md`
  - `memos_2025_memory_os_for_ai.overlay.md`
  - `agent_exchange_2025_aex.overlay.md`
  - `fmhy_2025_curation_hub.overlay.md`
  - `scalable_oversight_2022_2025.overlay.md`
  - all at `/opt/aria/v4/fellows_2026/related_work/`
- Architecture backing docs:
  - `three_missing_tools_architecture.md` (engineering for §9)
  - `two_gates_spec.md` (operational spec for §10)
  - `publication_plan.md` (Tier 1-5 publication strategy)
  - all at `/opt/aria/v4/fellows_2026/`
- Sovereignty audit (FMHY-derived, Sprint 093 queued): single-provider dependency audit at `sovereignty_audit_2026.md` (forthcoming)
- v0 → v1 → v2 drafted with Ian across 2026-05-06 → 2026-05-25; five overlays landed in the single 2026-05-25 session
- **Confidentiality:** v2 may be staged for public release as the canonical CertusOrdo / Aria research paper — see §14.

---

## 13. Open questions

(13.1–13.6 carried from v1; 13.7 + 13.8 new in v2.)

### 13.1–13.3 — Daniels & Rigollet tether items (carried from v0/v1)

Convention on `A` vs precision; Theorem 1 verbatim; inverse audit; WFR metric verification; collapse acknowledgement in source; reference-implementation autodiff/hardcoded check; benchmark comparison.

### 13.4 Bennett-bridge: w-maxing + encouragement compounding — carried from v1 **[B]**

Does the encouragement-regularization term (§6) compound or substitute Bennett's 110-500% w-maxing generalization gain? Predicted: compounds.

### 13.5 Bennett-bridge: AIKR formalization — carried from v1 **[B]**

Can the CertusOrdo cycle be re-derived as a NARS-compatible inheritance logic (Wang 1995 + Wang 2019)?

### 13.6 Bennett-bridge: enactive cognition gate — carried from v1 **[B]**

Is the per-user context card the first stage of an enactive formalization, or is full enactive compliance gated on on-device inference (the sovereignty voice side-project)?

### 13.7 Oversight-bridge: production-frequency audit-trail oversight (new in v2) **[O]**

At production latency (sub-second response), human oversight is operationally infeasible. Audit-trail oversight replaces it. *Empirically validate* that audit-trail oversight reaches Bowman 2022's scalable-oversight thresholds when run at production frequency (millisecond-scale per splat). Falsifiable claim.

### 13.8 MemOS-bridge: parameter-memory integration (new in v2) **[M]**

MemOS fuses plaintext → activation → parameter memory inside the LLM. We deliberately stay above the LLM via BYOK separation. Open question: are there hybrid stacks where MemOS's parameter-memory fusion lives below our substrate's encouragement+audit layer, giving both depth-of-fusion AND directional-promotion? Architectural research item, not pre-launch.

---

## 14. Tether plan + publication plan

### 14.1 Tether plan — carried from v0 §12 + v1 §14.1

Read Daniels & Rigollet source. Replace recall (`[R]`) with verbatim. Decide on Aria-formulations (`[A]`). Re-version. v3 once tethered; v2 preserved.

### 14.2 Publication plan — extended from v1 with Joe Benton track **[O]**

Carried from v1: arXiv first → Springer LNCS AGI 2026 (April-May 2026 deadline) → CC-BY 4.0 → one paper/year (Bennett pattern, 2022–2025).

**v2 adds the Anthropic-alignment-venue track aligned with Joe Benton:**

Spinoff papers (per `publication_plan.md` at `/opt/aria/v4/fellows_2026/`):
- **Spinoff A** — Encouragement-Compounds-W-Maxing · empirical paper · Bennett co-author candidate · AGI 2027
- **Spinoff B** — Memory-OS Plus Splat · cs.CL · Li et al. MemOS team co-author candidate · ACL/EMNLP track
- **Spinoff C** — Scalable Oversight as Compressed Consciousness · Anthropic alignment venue (NeurIPS SafeML / ICML alignment track) · **Joe Benton co-author candidate** · this is the Fellows-aligned paper
- **Spinoff D** — Splat as Primitive · workshop track · paper-of-record for the splat-as-primitive claim

Bowman et al. (2022) and Wen et al. (2025) are now load-bearing in Spinoff C — we operationalize what their team theorizes at production frequency, with audit-trail oversight replacing human oversight where latency makes human-in-the-loop infeasible. Citation-bridge to Joe Benton is the load-bearing paragraph for the Fellows mentor-fit pitch (drafted in `scalable_oversight_2022_2025.overlay.md` §10).

### 14.3 Open-source artifact track (new in v2) **[X]**

Per FMHY overlay: community-driven open-source artifacts compound. Our public repos as of 2026-05-25:
- [`certusordo`](https://github.com/iansteitz1-eng/certusordo) — Python package implementing the doctrine
- [`aria-thesis`](https://github.com/iansteitz1-eng/aria-thesis) — this paper + v0 + v1 preserved
- [`splat-schema`](https://github.com/iansteitz1-eng/splat-schema) — Postgres reference schema
- [`fellows-2026`](https://github.com/iansteitz1-eng/fellows-2026) — empirical research extending the doctrine
- [`aria-skills-premium`](https://github.com/iansteitz1-eng/aria-skills-premium) — production skill catalog (private; Partner-tier paywall via auto-invite)

Bennett pattern: GitHub Technical-Appendices alongside the paper. We have five repos already; the Appendix-equivalent material (engineering backing for §9 + operational spec for §10) lives at `/opt/aria/v4/fellows_2026/`. Move to a public `aria-thesis-appendices` repo at v2 publication time.

---

## References

Bennett, M.T. (2025). *What The F\*ck Is Artificial General Intelligence?* arXiv:2503.23923. Springer Nature LNCS, AGI 2025 conference proceedings.

Bennett, M.T. (2024). *Computational dualism and objective superintelligence.* In: Artificial General Intelligence. Springer Nature.

Bennett, M.T. (2024). *Is complexity an illusion?* In: Artificial General Intelligence. Springer Nature.

Bennett, M.T. (2025). *How To Build Conscious Machines.* PhD thesis, Australian National University. github.com/ViscousLemming/Technical-Appendices.

Bowman, S.R. et al. (2022). *Measuring Progress on Scalable Oversight for Large Language Models.* arXiv:2211.03540. Anthropic + 45 co-authors.

Chollet, F. (2019). *On the measure of intelligence.* arXiv:1911.01547.

Christiano, P. et al. (2018). *AI safety via debate.* (debate framework foundational paper)

Friston, K. (2010). *The free-energy principle: A unified brain theory?* Nature Reviews Neuroscience 11(2), 127–138.

Goertzel, B. (2014). *Artificial general intelligence: Concept, state of the art.* Journal of Artificial General Intelligence 5(1), 1–48.

Goertzel, B. (2023). *OpenCog Hyperon: A framework for AGI at the human level and beyond.* OpenCog Foundation tech report.

Hutter, M., Quarel, D., Catt, E. (2024). *An Introduction to Universal Artificial Intelligence.* Chapman and Hall/CRC, 1st ed.

Irving, G., Christiano, P., Amodei, D. (2018). *AI safety via debate.* arXiv:1805.00899.

Legg, S., Hutter, M. (2007). *Universal intelligence: A definition of machine intelligence.* Minds and Machines, 391–444.

Levin, M., McMillen, P. (2024). *Collective intelligence: A unifying concept for integrating biology across scales and substrates.* Communications Biology.

Li, Z. et al. (2025). *MemOS: A Memory OS for AI System.* arXiv submit/6596874 [cs.CL] · 30+ co-authors · MemTensor (Shanghai) + 9 institutions. github.com/MemTensor/MemOS.

open-experiments (2025). *Agent Exchange (AEX).* Open-source GitHub repo · github.com/open-experiments/agent-exchange · MIT license · "NASDAQ for AI agents" · ad-tech RTB economics applied to agentic AI.

Perrier, E., Bennett, M.T. (2025). *Position: Stop acting like language model agents are normal agents.* arXiv:2502.10420.

r/FREEMEDIAHECKYEAH (FMHY) (2025). *Free Media Heck Yeah curated resource hub.* fmhy.net + reddit.com/r/FREEMEDIAHECKYEAH. (Pattern-study for community-driven curation + anti-deplatform resilience.)

Sutton, R. (2019). *The Bitter Lesson.* University of Texas at Austin.

Sutton, R.S., Barto, A.G. (2018). *Reinforcement learning: An introduction.* MIT Press.

Wang, P. (2019). *On defining artificial intelligence.* Journal of Artificial General Intelligence 10(2), 1–37.

Wang, P. (2006). *Rigid Flexibility: The Logic of Intelligence.* Springer Nature.

Wen, X. et al. (2025). *Scalable Oversight for Superhuman AI via Recursive Self-Critiquing.* arXiv:2502.04675. CC-BY-SA 4.0.

(Mathematical references — Daniels & Rigollet, Cholesky-of-precision literature, WFR / unbalanced OT — to be added with verbatim citations on the v3 tether pass.)

<!-- v3 work items — append per overlay
PAPER-OVERLAY-DRIVEN UPDATES FOR v3:

v2 closed all v1 work items from Bennett, MemOS, AEX, FMHY, Bowman+Wen overlays.

For v3:
- Daniels & Rigollet source tether (replace all [R] with verbatim citations)
- Add overlays 6-10 from the paper-overlay queue (_queue.md):
  - Perrier-Bennett 2025 (LM-agents critique)
  - Bennett 2024 (computational dualism)
  - Bennett 2024 (is complexity an illusion)
  - Bennett 2025 PhD thesis (full formal framework)
  - Wang 2019 (full AIKR formalization)
  - Goertzel 2023 (Hyperon)
- Anthropic A3 (Benton + Sleight + Zhang 2026) once published
- LOCOMO benchmark empirical results (Sprint 074 outputs)
- Cost-output X-ing empirical results (Sprint 100-102 outputs)
- Spinoff papers A-D as appendices or back-references

See `/opt/aria/v4/fellows_2026/related_work/_queue.md` for the running queue.
-->
