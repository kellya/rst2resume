all : html

html: 
	@rst2html.py --link-stylesheet --no-doc-title --stylesheet style.css resume.rst > resume.html
	@echo "HTML Output succeeded"
