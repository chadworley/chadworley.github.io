library("exams")
n = 30
outdir = "outcanvas"
genname = "may16_"

# probs = c("01_eval_expo_base2.Rmd",
#           "02_eval_expo_base10.Rmd",
#           "03_solve_expo_base2.Rmd",
#           "04_solve_expo_base10.Rmd",
#           "05_eval_log_base2.Rmd",
#           "06_eval_log_base10.Rmd",
#           "07_eval_log_base_2_3_10.Rmd")
# 
# pnts = rep(4,length(probs))
# 
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

##############################################################
genname = "may16"

pm = list(
    c("03_solve_expo_base2.Rmd","04_solve_expo_base10.Rmd"),
    "07_eval_log_base_2_3_10.Rmd"
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))