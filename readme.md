This is a simple thesis template for the LaTeX typesetting system. It is configured to fulfill the [faculty thesis regulations][regulations] and improve on the [official .docx template][template]. The output is also configured to be *PDF/A-2u* compliant.

## Requirements & Building

You need a working installation of:

- `texlive`
- `latexmk`
- `biber`
- `make`

Full thesis can be built by running `make`.

All make targets:

| Target     | Description                                              |
|------------|----------------------------------------------------------|
| `pdf`      | Build the entire thesis                                  |
| `clean`    | Remove all build files except the output PDF             |
| `cleanall` | Remove all build files including the output PDF          |
| `vlna`     | Run `vlna` for adding Czech & Slovak non-breaking spaces |
| `remake`   | Runs `cleanall`, `vlna` and `pdf` targets                |

The default make targets are `vlna` and `pdf`.

## Resources

- [ISO 690 biblatex style](https://mirrors.nic.cz/tex-archive/macros/latex/contrib/biblatex-contrib/biblatex-iso690/biblatex-iso690.pdf)
- [ISO 690 biblatex examples](https://github.com/michal-h21/biblatex-iso690/blob/master/biblatex-iso690-examples.bib)

[regulations]: https://wwwmod.pedf.cuni.cz/udeska/files/opatreni_dekana/opad_k_podrobnostem_zaverecne_prace_2020.pdf
[template]: https://wwwmod.pedf.cuni.cz/udeska/files/opatreni_dekana/priloha_c_1_bakalarska_prace.docx
