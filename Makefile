cs-dl:
	wget -O "CSIT Cheatsheet.pdf" https://docs.google.com/document/d/1e_PnmOh0BwLI6l86O36q1VlMH3mvn4eiSf9kN2FUe-s/export?format=pdf
sci-dl:
	wget -O "Science-IT Cheatsheet - Data Management.pdf" https://docs.google.com/document/d/1boUsVxg8W1g_Tfx7r0wynKJe7FtE6cI3ImLpuFRpr7w/export?format=pdf
triton-dl:
	wget -O "Triton Cheatsheet.pdf" https://docs.google.com/document/d/1yeQeSqATIiodNW-S1bttNh44jAgi_FoaH7dccPPNwZ0/export?format=pdf
#git-for-normal-people:
#	wget -O git-for-normal-people-cheatsheet.pdf https://docs.google.com/document/d/12M49Zc5ldnwtyd85anVoNhWyD065IwdpbBaMBUCQsD4/export?format=pdf
git-the-way-you-need-it:
	wget -O git-the-way-you-need-it-cheatsheet.pdf https://docs.google.com/document/d/12M49Zc5ldnwtyd85anVoNhWyD065IwdpbBaMBUCQsD4/export?format=pdf


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
