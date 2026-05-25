# aria-thesis

> The Aria Thesis White Paper — source repository.

The Aria Thesis is the doctrine document that underpins the
[CertusOrdo](https://github.com/iansteitz1-eng/certusordo) substrate and the
production AI agent platform at [InSync Tech](https://insynctech.io). It
sets out the case for **structured action receipts as the unit of agent
oversight**, the **six-philosopher composite rubric**, and the underlying
3·6·9 lattice + BIRDS cycle.

The thesis is also published in HTML/PDF at
[insynctech.io/docs/aria-thesis-white-paper.html](https://insynctech.io/docs/aria-thesis-white-paper.html).
This repository holds the markdown source so it is `git clone`-able,
citeable by commit hash, and open to issue-based feedback.

---

## Read the thesis

- **Canonical (v2, 2026-05-25 night)**: [`aria_thesis_v2.md`](aria_thesis_v2.md) — integrates five paper-overlay analyses landed in the same session: Bennett (2025) · Li et al. MemOS (2025) · open-experiments AEX (2025) · FMHY (2025) · Bowman et al. (2022) + Wen et al. (2025) scalable-oversight pair. Adds MemCube vocabulary alignment, marketplace-layer positioning via AEX, scalable-oversight bridge to Joe Benton's team, and production-grade audit-trail framing. The doctrinal core is unchanged from v1; the academic engagement is substantially expanded.
- **Preserved (v1, 2026-05-25 morning)**: [`aria_thesis_v1.md`](aria_thesis_v1.md) — Bennett overlay + the locked doctrinal definition that the splat IS the atomic injection of encouragement + the three missing foundational tools + the two production gates.
- **Preserved (v0, 2026-05-06)**: [`aria_thesis_v0.md`](aria_thesis_v0.md) — splat regression math · WFR flow · Cholesky-of-precision parameterization · Encouragement-Regularized WFR.
- **Built PDF / HTML**: run `make` (see below)
- **Live HTML**: [insynctech.io/docs/aria-thesis-white-paper.html](https://insynctech.io/docs/aria-thesis-white-paper.html)

## Build

Requires [pandoc](https://pandoc.org/) and a LaTeX engine (xelatex):

```bash
# Ubuntu / Debian
sudo apt install pandoc texlive-xetex texlive-fonts-recommended

# Build both PDF + HTML
make

# Or just one
make pdf
make html
```

Outputs land alongside the source.

## Cite

If you reference the thesis in your work, please cite by commit hash:

```
Steitz, I. (2026). The Aria Thesis: Structured Action Receipts as a
Scalable Oversight Substrate. InSync Tech, Inc.
https://github.com/iansteitz1-eng/aria-thesis (commit: <hash>)
```

## Related repos

- [`InSyncTech/certusordo`](https://github.com/iansteitz1-eng/certusordo) —
  the Python package implementing the doctrine
- [`iansteitz1-eng/fellows-2026`](https://github.com/iansteitz1-eng/fellows-2026) —
  the empirical research project extending the doctrine
- [`iansteitz1-eng/splat-schema`](https://github.com/iansteitz1-eng/splat-schema) —
  Postgres reference schema for the splat ledger

## Feedback

Issues are welcome — open one against this repo with section references.
The doctrine evolves. **v1 landed 2026-05-25 morning** with the Bennett overlay;
**v2 landed 2026-05-25 night** integrating four additional paper-overlay
analyses (MemOS, AEX, FMHY, Bowman+Wen). v3 lock target is 2026-Q4 once
the Daniels & Rigollet source is tethered (see v2 §14.1).

## Related work

We engage the AI/AGI/alignment/interpretability conversation through
structured paper-overlay analyses (the "paper-overlay habit"). As of v2:

| # | Paper / artifact | Overlay landed in v2 sections |
|---|---|---|
| 1 | Bennett, M.T. (2025) — *What The F\*ck Is Artificial General Intelligence?* (arXiv:2503.23923) | §6.4, §9, §10, §11.2, §13.4-13.6 |
| 2 | Li et al. (2025) — *MemOS: A Memory OS for AI System* (arXiv submit/6596874 + github.com/MemTensor/MemOS) | §2.2, §8.8, §9.2.1, §9.2.2, §9.2.3, §11.3 |
| 3 | open-experiments (2025) — *Agent Exchange (AEX)* (github.com/open-experiments/agent-exchange) | §8.9, §10.4, §11.4 |
| 4 | FMHY (2025) — curated resource hub (fmhy.net) | §14.3 (open-source artifact track) |
| 5 | Bowman et al. (2022) + Wen et al. (2025) — *Measuring Progress on Scalable Oversight* + *Scalable Oversight via Recursive Self-Critiquing* | §6.5, §9.2.1-9.2.3, §10.3, §11.3, §13.7, §14.2 |

Full overlay memos at `/opt/aria/v4/fellows_2026/related_work/` (internal
working memos, not in this public repo).

## License

Apache 2.0. See [LICENSE](LICENSE).

## Author

[Ian Steitz](https://insynctech.io) · InSync Tech, Inc.
ian@insynctech.io
