# zk-microstructure

Companion source for the paper
**The Privacy Subsidy: Kyle's λ under Noise-Perturbed Order-Flow
Observation**
by Yuki Nakamura (The Open University of Japan).

## Abstract

Privacy-preserving cryptocurrency exchanges (shielded AMMs,
batched swap auctions, sealed-bid order-flow auctions) alter what
the pricing mechanism observes about order flow. We derive the
unique linear Kyle equilibrium when a committed Bayesian market
maker observes order flow perturbed by independent Gaussian
privacy noise. The price-impact coefficient and informed-trader
strategy both rescale by a single factor in the privacy
parameter, and their product is invariant. A welfare decomposition
then identifies a closed-form per-period transfer from the
protocol's LP pool to traders — the *privacy subsidy*, the
break-even fee any privacy-aggregated exchange must charge. The
result is the single-period closed-form privacy-noise analog of
Loss-Versus-Rebalancing (Milionis et al. 2022). The primary
application is shielded AMMs with explicit additive-noise
injection (e.g., differential privacy); related designs (batched
swaps, sealed-bid auctions, oracle-pegged crossings) require
separate frameworks that we leave to future work.

## Repository

```
paper/
├── main.tex          LaTeX source (LNCS class)
├── references.bib    bibliography
├── abstract.txt      plaintext abstract
├── make-arxiv.sh     bundles tarball for arXiv submission
└── .gitignore
LICENSE
README.md
```

## Build

```bash
cd paper
tectonic main.tex     # downloads required LaTeX packages automatically
```

Produces `paper/main.pdf` (~15 pages, A4 LNCS). Standard pdflatex
+ bibtex also works once LNCS and pgfplots packages are
installed.

## Preprint / citation

Preprint: [arXiv:2605.15746](https://arxiv.org/abs/2605.15746).

```bibtex
@misc{nakamura2026privacy,
  author        = {Nakamura, Yuki},
  title         = {The Privacy Subsidy: Kyle's $\lambda$ under
                   Noise-Perturbed Order-Flow Observation},
  year          = {2026},
  eprint        = {2605.15746},
  archivePrefix = {arXiv},
  primaryClass  = {cs.GT}
}
```

## License

CC-BY-4.0. See `LICENSE`.

## Contact

ORCID: [0009-0001-7174-6737](https://orcid.org/0009-0001-7174-6737)
