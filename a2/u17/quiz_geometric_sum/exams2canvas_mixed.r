library("exams")
n = 30
outdir = "outcanvas"
genname = "u17_Apr10_geo_sum"

probs = c("10_inc_dec_weirdness.Rmd",
          "11_cmpnd_intrst.Rmd",
          "12_cmpnd_intrst_continuous.Rmd",
          "13_doubling_time_from_graph.Rmd",
          "14_half_life_from_graph.Rmd",
          "15_geometric_value_from_index.Rmd")

# pnts = rep(2,length(probs))
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



pm = list(
    "01_geometric_sum.Rmd",
    "01_geometric_sum.Rmd",
    "01_geometric_sum.Rmd",
    "01_geometric_sum.Rmd",
    "01_geometric_sum.Rmd"
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(1,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))