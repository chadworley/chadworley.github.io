library("exams")
n = 12
outdir = "outcanvas"

genname = "027"
probs = c("10_transpose_matrix.Rmd",
          "11_2D_rotation_matrix.Rmd",
          "12_rotate_2D_points.Rmd",
          "13_multiple_transforms.Rmd")

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