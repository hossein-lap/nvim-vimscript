.ig
  _  _ ___    
 | || | __|   H
 | __ | _|    A
 |_||_|___|   P

..

\" Page appearance (font, size and width) {{{
\".ds FAM Sans        \" font family
.nr PS 12           \" font size
.nr PO 3c           \" page width (effects on next page)
\" }}}
\" Page header and footer {{{
.ds LH \(gr       \" show pagenumber on buttom-center
.ds CH Title      \" title on top-center
.ds RH \(dg       \" show pagenumber on buttom-center
.ds LF Author     \" author name on top-left
.ds CF -%-        \" show pagenumber on buttom-center
.ds RF \*(DY      \" current date on top-right
\" }}}

\" First Page {{{
.TL
.LG
.LG
Title

.AU
.LG
Author

.AI
.LG
Institution

.AB no
This is the Abstract Section.
.AE
\" }}}
.bp
\" beginning {{{
.SH
.LG
Header.

.LP
.LG
Paragraph.

\" }}}

