library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = list("01_sam_stat_pop_param.Rmd",
             c("02_survey_experi_obsstu.Rmd","03_sample_bias.Rmd","04_corr_or_cause.Rmd"),
             "06_big_data_analysis.Rmd",
             "09_read_histogram.Rmd",
             "11_make_hist_see_shape.Rmd",
             "12_sample_percentiles.Rmd")

pnts = c(2,2,4,4,4,4)

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