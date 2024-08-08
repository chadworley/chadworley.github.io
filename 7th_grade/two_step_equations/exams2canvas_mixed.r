library("exams")
n = 50
outdir = "outcanvas"
genname = "solve"

probs = c("01_EZ_two-step_equations.Rmd")
pnts = c(4)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
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


n = 30
probs = rep(list(probs),5)

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(4,4,4,4,4),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))