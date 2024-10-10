library("exams")
n = 30
outdir = "outcanvas"
genname = "u05_"

probs = c("01_base10_eval.Rmd",
          "02_base10_placevalue.Rmd",
          "03_polynomial_terminology.Rmd",
          "04_add_base10.Rmd",
          "05_add_poly.Rmd",
          "06_subtract_poly.Rmd")

pnts = c(3,3,4,3,5,5)
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
# pm = c("03_venn_probs.Rmd",
#        "04_ind_or_mut_exclu.Rmd",
#        "05_cards.Rmd",
#        "06_winlose.Rmd",
#        "07_bobhappy.Rmd",
#        "08_scratchoff_value.Rmd",
#        "09_ski_paths.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,2,5,4,4,3,2),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))