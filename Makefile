
version = frankenstein

# following bunch of rules are all the same

tests/test4.rst:tests/test4.docx
	./$(version) --wrap none $< -o $@

tests/test4-reduced-2.rst:tests/test4-reduced-2.docx
	./$(version) --wrap none $< -o $@

tests/test-complex-table.rst:tests/test-complex-table.docx
	./$(version) --wrap none $< -o $@

# end repeated rules

tests/test3.rst:tests/test3.docx 7.hs
	./$(version) --filter 7.hs $< -o $@

tests/%.rst:tests/%.docx
	./$(version) $< -o $@

tests/%.native:tests/%.docx
	./$(version) $< -o $@

tests/%.html:tests/%.rst
	rst2html $< > $@

update:
	touch tests/*.docx
	make tests/*
