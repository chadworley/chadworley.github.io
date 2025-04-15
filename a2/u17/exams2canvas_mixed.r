library("exams")
n = 30
outdir = "outcanvas"
genname = "s17_"

probs = c("27_geom_dist.Rmd",
          "28_geom_dist_cumulative.Rmd")

pnts = rep(3,length(probs))

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

##############################################################
# genname = "s17_annuity_"
# 
# pm = list(
#     "23_life_annuity.Rmd",
#     "23_life_annuity.Rmd"
# )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))