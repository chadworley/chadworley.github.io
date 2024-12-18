library("exams")
n = 30
outdir = "outcanvas"
genname = "u10_"

probs = c("12_add_rationals.Rmd",
          "13_subtract_rationals.Rmd",
          "14_mult_rationals.Rmd",
          "15_div_rationals.Rmd",
          "16_inverse_rational.Rmd")
pnts = c(4,4,5,5,3)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=pnts[i],
               maxattempts = 10,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}


# pm = list("08_intervals_check.Rmd",
#           "03_translate_table.Rmd",
#           "04_stretch_table.Rmd",
#           "12_identify_transformation.Rmd",
#           "07_compose_graphs.Rmd",
#           "13_AROC_from_graph.Rmd",
#           "15_aroc_table.Rmd",
#           "17_AROC_dimensions.Rmd"
#           )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,1,1,1,1,1,2,1),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))