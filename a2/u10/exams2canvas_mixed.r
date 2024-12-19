library("exams")
n = 30
outdir = "outcanvas"
genname = "u10_"

probs = c("17_radical_dom_rng.Rmd")
pnts = c(3)

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


# pm = list("01_sqrt_lake_area.Rmd",
#           "17_radical_dom_rng.Rmd",
#           "07_sqrt_line_extraneous.Rmd",
#           "06_translate_flip_cbrt.Rmd",
#           "09_expndd_rational_featrs.Rmd",
#           "11_line_thru_rational_hole.Rmd",
#           ""
#           )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,1,1,1,1,1,2,1),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))