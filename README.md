# template-ieee-conference
Template repo for IEEE conference template

## Build

Requires a LaTeX distribution with `latexmk` (e.g. TeX Live).

```sh
make            # compile main.tex -> main.pdf
make view       # recompile on save + open the PDF
make clean      # remove auxiliary files
make distclean  # remove auxiliary files and the PDF
```

To get full science latex distro: `sudo apt install texlive-science`