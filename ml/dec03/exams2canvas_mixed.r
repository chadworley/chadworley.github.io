library("exams")
n = 30
outdir = "outcanvas"
genname = "dec03_"

probs = c("01_circle_measures.Rmd",
          "02_car_force_power.Rmd")

pnts = c(3,3)

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