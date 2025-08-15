#!/bin/bash

cp paracasa-gabarito.tex paracasa.tex
latexmk
/usr/share/texlive/texmf-dist/scripts/pythontex/pythontex3.py paracasa-gabarito.tex

/usr/share/texlive/texmf-dist/scripts/pythontex/pythontex3.py paracasa.tex
latexmk
