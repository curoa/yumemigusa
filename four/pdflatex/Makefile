file_name = template

.PHONY: all
all:
	rm -f t.tex # KEY_BT it is bothersome to omit t.tex from *.tex
	sed -i -e 's/、/，/g' *.tex
	sed -i -e 's/。/．/g' *.tex
	ln -s template.tex t.tex # KEY_BT it is bothersome to omit t.tex from *.tex
	#platex $(file_name).tex
	#dvipdfmx $(file_name).dvi
	pdflatex $(file_name).tex
	evince pdf &

pdf: $(file_name).dvi
	dvipdfmx $(file_name).dvi

.PHONY: clean
clean: 
	rm -f $(file_name).[^t]* $(file_name).toc

.PHONY: cln
cln: clean

