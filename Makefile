output/%.rst:input/%.docx
	pandoc $< -o $@

rst2html/%.html:output/%.rst
	rst2html $< > $@
