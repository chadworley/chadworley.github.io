library("exams")
n = 10
outdir = "outcanvas"
genname = "u03_"

probs = c("09_calculate_z_from_sample_mean.Rmd",
          "10_compare_zs_means.Rmd")

# pm = list(probs,probs,probs,probs)

pnts = c(6,8)
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

# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))