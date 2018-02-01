
output/test4.rst:input/test4.docx
	pandoc --wrap=none $< -o $@

output/%.rst:input/%.docx
	pandoc $< -o $@

rst2html/%.html:output/%.rst
	rst2html $< > $@
