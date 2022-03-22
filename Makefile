.PHONY: all
all:
	texfot pdflatex main

.PHONY: index
index:
	makeindex main.idx -s StyleInd.ist

.PHONY: bibliography
bibliography:
	biber main

.PHONY: update
update:
	@make all
	@make index
	@make bibliography
	texfot pdflatex main x 2
	@make all


.PHONY: clean
clean:
	rm main.aux main.bcf main.idx main.log main.ptc main.run.xml main.toc
