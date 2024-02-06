library("exams")
n = 30
outdir = "outcanvas"

genname = "026"

probs = c("03_LOS_ambig_case.Rmd")

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

# probs = c("02_estimate_amplitude.Rmd",
#           "03_estimate_period.Rmd",
#           "04_estimate_midline.Rmd",
#           "05_estimate_left_shift.Rmd",
#           "07_get_freq.Rmd")
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# 
