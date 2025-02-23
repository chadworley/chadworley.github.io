s = "\\documentclass[border=5pt]{standalone}
\\begin{document}
$8+\\frac{10}{11}$
\\end{document}"

fileConn<-file("tester.tex")
writeLines(s, fileConn)
close(fileConn)

xelatex("tester.tex")
system("magick -density 600 tester.pdf -background white -flatten a.png")

