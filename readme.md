This is a simple thesis template for the LaTeX typesetting system. It is configured to fulfill the [faculty thesis regulations][regulations] and improve on the [official .docx template][template]. The output is also configured to be *PDF/A-2u* compliant.

The original template was created back in early 2022 and could be improved in several ways, mainly in moving to a better citation solution and improving source-code environments.

## Requirements & Building

You need a working installation of `texlive` and `latexmk`. Full thesis can be built by running `make`.

All make targets:

| Target     | Description                                              |
|------------|----------------------------------------------------------|
| `pdf`      | Build the entire thesis                                  |
| `clean`    | Remove all build files except the output PDF             |
| `cleanall` | Remove all build files including the output PDF          |
| `vlna`     | Run `vlna` for adding Czech & Slovak non-breaking spaces |

The default make targets are `vlna` and `pdf`.

[regulations]: https://wwwmod.pedf.cuni.cz/udeska/files/opatreni_dekana/opad_k_podrobnostem_zaverecne_prace_2020.pdf
[template]: https://wwwmod.pedf.cuni.cz/udeska/files/opatreni_dekana/priloha_c_1_bakalarska_prace.docx
