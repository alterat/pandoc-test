
version = frankenstein

tests/test4.rst:tests/test4.docx
	./$(version) --wrap none $< -o $@

tests/test3.rst:tests/test3.docx filter.hs
	./$(version) --filter filter.hs $< -o $@

tests/%.rst:tests/%.docx
	./$(version) $< -o $@

tests/%.native:tests/%.docx
	./$(version) $< -o $@

tests/%.html:tests/%.rst
	rst2html $< > $@
