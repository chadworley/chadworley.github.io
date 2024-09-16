library("exams")
n = 30
outdir = "outcanvas"
genname = "u02_"

probs = c("03_simulated_means.Rmd",
          "05_resample_mean_ME.Rmd",
          "07_CI_mean_raw.Rmd",
          "09_reshuffle_two_mean.Rmd",
          "10_hyptest_2_means_data.Rmd")

pnts = c(5,5,5,5,5)

# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 10,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }


exams2canvas(probs,
             n=n,
             dir=outdir,
             points=pnts,
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))