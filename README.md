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

- **Markdown source**: [`aria_thesis_v0.md`](aria_thesis_v0.md)
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
The doctrine evolves; the v1 lock target is 2026-Q4.

## License

Apache 2.0. See [LICENSE](LICENSE).

## Author

[Ian Steitz](https://insynctech.io) · InSync Tech, Inc.
ian@insynctech.io
