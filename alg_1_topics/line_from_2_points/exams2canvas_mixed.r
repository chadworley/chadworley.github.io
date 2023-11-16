library("exams")
n = 30
outdir = "outcanvas"

genname = "line"

probs = c("m_and_b_from_2_pnts.Rmd")

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


probs = c("m_and_b_from_2_pnts.Rmd",
          "m_and_b_from_2_pnts.Rmd",
          "m_and_b_from_2_pnts.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 10,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

