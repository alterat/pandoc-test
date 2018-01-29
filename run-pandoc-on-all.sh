ls input/ | while read f; do pandoc input/$f -t rst -o output/${f%docx}rst; done
