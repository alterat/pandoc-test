
output/%.rst : input/%.docx
	pandoc $< -t docx -o $@
