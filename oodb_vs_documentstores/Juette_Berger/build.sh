cd Kapitel
pandoc --bibliography=../quellen.bib -cls=../din-1505-2-numeric-alphabetical.csl --toc -V lang=de *.md -o ../Ausarbeitung.pdf
cd ..
