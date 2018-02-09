
tests/test4.rst:tests/test4.docx
	pandoc --wrap none $< -o $@

tests/test3.rst:tests/test3.docx filter.hs
	pandoc --filter filter.hs $< -o $@

tests/%.rst:tests/%.docx
	pandoc $< -o $@

tests/%.native:tests/%.docx
	pandoc $< -o $@

tests/%.html:tests/%.rst
	rst2html $< > $@
