library("exams")
n = 30
outdir = "outcanvas"

genname = "011"

probs = c("01_perm.Rmd",
          "02_comb.Rmd",
          "03_probdist.Rmd",
          "04_binomial.Rmd")

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

# probs = c("comb_perm_mix.Rmd",
#           "comb_perm_mix.Rmd",
#           "comb_perm_mix.Rmd",
#           "03_probdist.Rmd",
#           "04_binomial.Rmd",
#           "04_binomial.Rmd",
#           "04_binomial.Rmd")
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

