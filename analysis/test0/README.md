








looking for a simple BlockQuote case in the tests in order to verify where is the problem

in the native tree there are many BlockQuote which don't appear in the
rendered DOCX

the next paragraph is indented by one, removing the indentation fixes

error in `rubric` directive, no content permitted line 26
rst2html output/test0.rst > /tmp/test0.html

directive:

.. type :: argument argument
   :option: value
   :option: value

   content

arguments, options and content make the directive block

### code

https://github.com/jgm/pandoc/pull/2079

### status

- extra blockquotes
- wrong nesting and indentation of headers
- extra indentation on the first bullet point and bold extended to the whole point
- the second point is fine
- the third point is a syntax error
