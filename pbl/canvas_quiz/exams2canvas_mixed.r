library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("add_4_digs.Rmd",
          "sub_4_digs.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(5,length(pm)),
             maxattempts = 8,
             name="pbl1117entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# # Classwork 1
# pm = list("complete_the_square_A.Rmd",
#           "complete_the_square_B.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(3,3),
#              maxattempts = 7,
#              name="at1117canvas_A",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
# # Classwork 2
# 
# pm = list("complete_the_square_C.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5),
#              maxattempts = 7,
#              name="at1117canvas_B",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# pm = list("complete_the_square_E.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(6),
#              maxattempts = 7,
#              name="at1117canvas_C",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


