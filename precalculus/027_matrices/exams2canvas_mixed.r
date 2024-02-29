library("exams")
n = 12
outdir = "outcanvas"

genname = "027"
probs = c("01_pfd_2_linear.Rmd",
          "02_pfd_linear_sqrd.Rmd",
          "03_3x3_lin_sys.Rmd",
          "04_4x4_lin_sys.Rmd")

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


# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=3,
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))