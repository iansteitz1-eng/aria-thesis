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

- **Canonical (v1, 2026-05-25)**: [`aria_thesis_v1.md`](aria_thesis_v1.md) — adds Bennett (2025) overlay, locks the splat = atomic injection of encouragement doctrine, names the two gates beyond the field (flow state + release), proposes three foundational tools missing from Bennett's taxonomy (context · encouragement · audit).
- **Preserved (v0, 2026-05-06)**: [`aria_thesis_v0.md`](aria_thesis_v0.md) — splat regression + WFR + Cholesky of precision + Encouragement-Regularized WFR. Carried forward in v1 by reference.
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
The doctrine evolves. **v1 landed 2026-05-25** with the Bennett overlay;
v2 lock target is 2026-Q4 once the Daniels & Rigollet source has been
tethered (see v0 §12 / v1 §14.1).

## Related work

We engage the AGI / interpretability / agent-architecture conversation
through structured paper-overlay analyses. Latest:

- Bennett, M.T. (2025) — *What The F\*ck Is Artificial General Intelligence?*
  Springer Nature LNCS · AGI 2025 · arXiv:2503.23923. Overlay analysis
  landed in v1 §9, §10, §11.2, §13.4–13.6. Source PDF and full overlay
  memo at `/opt/aria/v4/fellows_2026/related_work/` (not in this repo).

## License

Apache 2.0. See [LICENSE](LICENSE).

## Author

[Ian Steitz](https://insynctech.io) · InSync Tech, Inc.
ian@insynctech.io
