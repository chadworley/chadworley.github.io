library("exams")
n = 30
outdir = "outcanvas"

genname = "ABS"

probs = c("trans_refl_abs_graph_MC.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

probs = c("trans_refl_abs_graph_MC.Rmd",
          "trans_refl_abs_graph_MC.Rmd",
          "trans_refl_abs_graph_MC.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

