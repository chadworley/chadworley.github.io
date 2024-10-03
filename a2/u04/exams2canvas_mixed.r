library("exams")
n = 30
outdir = "outcanvas"
genname = "u04_"

probs = c("01_venn_rects.Rmd",
          "02_venn_clubs.Rmd",
          "03_venn_probs.Rmd",
          "04_ind_or_mut_exclu.Rmd",
          "05_cards.Rmd",
          "06_winlose.Rmd",
          "07_bobhappy.Rmd",
          "08_scratchoff_value.Rmd",
          "09_ski_paths.Rmd")

pnts = c(5,5,5,3,6,5,7,4,3)
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

 
# pm = list(c("06_norm_fit_less.Rmd","07_norm_fit_more.Rmd","08_norm_fit_between.Rmd"),
#           c("11_ave_less.Rmd","12_ave_more.Rmd"),
#           c("13_binomial_exact_approx.Rmd"))
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5,5,5),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))