OUTDIR='./output'
OUTFILE='resume'
STYLESHEET='../style.css'

all : html

help:
	@echo 'Makefile for rst2resume'
	@echo '                                               '
	@echo 'Usage:                                         '
	@echo '    make html    Generate HTML output in OUTDIR'


html: 
	@rst2html.py --link-stylesheet --no-doc-title --stylesheet $(STYLESHEET) resume.rst > $(OUTDIR)/$(OUTFILE).html
	@echo "HTML Output succeeded"

clean:
	rm -rf $(OUTDIR)

.PHONY: clean html
