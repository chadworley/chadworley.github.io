library("exams")
n = 5
outdir = "outcanvas"

genname = "028"
probs = c("16_cramers_rule.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=10,
               maxattempts = 3,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

# probs = c("01_pfd_2_linear.Rmd",
#           "03_3x3_lin_sys.Rmd",
#           "07_can_mats_mult.Rmd",
#           "08_mult_mats.Rmd",
#           "10_transpose_matrix.Rmd",
#           "11_2D_rotation_matrix.Rmd",
#           "13_multiple_transforms.Rmd",
#           "14_oblique_projection.Rmd")
# 
# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=3,
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))