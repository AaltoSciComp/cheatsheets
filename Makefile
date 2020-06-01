cs:
	pdfnup "CSIT Cheatsheet.pdf" 1-2 --outfile cs-cheatsheet.pdf
sci:
	pdfnup  "Science-IT Cheatsheet - Data Management.pdf" --outfile sci-data-cheatsheet.pdf
cssci:
	pdfnup  "CSIT Cheatsheet.pdf" 1-2 "Science-IT Cheatsheet - Data Management.pdf" --outfile cs-sci-cheatsheet.pdf

triton:
	pdfnup Triton\ Cheatsheet.pdf 1-4 --outfile triton-cheatsheet.pdf
ipr:
	pdfnup IPR\ Cheatsheet.pdf 1-2 --outfile ipr-cheatsheet.pdf

cover:
#	pdftk C=CSITCheatsheet.pdf T=TritonCheatsheet.pdf G=git-cheatsheet-page01.pdf D=Science-ITCheatsheet-DataManagement.pdf cat C1 T1 G1 D1 output _coverB.pdf
	pdftk gitlab/git-cheatsheet-page01.pdf cat 1west output  _coverA.pdf
	pdfnup "CSIT Cheatsheet.pdf" 1 "Triton Cheatsheet.pdf" 1 _coverA.pdf 1 "Science-IT Cheatsheet - Data Management.pdf" 1  --nup 2x2 --no-landscape -o _coverB.pdf
	pdfnup 'Cheatsheet cover.pdf' _coverB.pdf -o cover.pdf

pub:
	rsync -a cs-cheatsheet.pdf sci-data-cheatsheet.pdf cs-sci-cheatsheet.pdf triton-cheatsheet.pdf ipr-cheatsheet.pdf ~/public_html/cheatsheets/
