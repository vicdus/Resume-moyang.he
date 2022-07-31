docker pull ghcr.io/cmhughes/latexindent.pl
find $(pwd -P) -name "*.tex" | xargs -I {} docker run -v {}:/current.tex --rm  ghcr.io/cmhughes/latexindent.pl -s -w current.tex
find $(pwd -P) -name "*.cls" | xargs -I {} docker run -v {}:/current.tex --rm  ghcr.io/cmhughes/latexindent.pl -s -w current.tex
find $(pwd -P) -name "*.sty" | xargs -I {} docker run -v {}:/current.tex --rm  ghcr.io/cmhughes/latexindent.pl -s -w current.tex
