library("exams")
n = 50
outdir = "outcanvas"

### Entrance ticket
pm = list("GCF.Rmd",
          "LCM.Rmd",
          "GCF.Rmd",
          "LCM.Rmd",
          c("GCF.Rmd","LCM.Rmd"))
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2,2),
             maxattempts = 10,
             name="ET_09_18",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))



# # Classwork 1
# pm = list("11_even_or_odd_polynomial.Rmd",
#           "12_even_or_odd_graph.Rmd",
#           "13_use_even_prop.Rmd",
#           "14_use_odd_prop.Rmd"
#           )
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_0909_even_odd_funcs",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
