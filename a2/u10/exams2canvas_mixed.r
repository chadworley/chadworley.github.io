library("exams")
n = 30
outdir = "outcanvas"
genname = "u10_"

# probs = c("01_sqrt_lake_area.Rmd",
#           "02_points_on_sqrtx.Rmd",
#           "03_translate_flip_sqrt.Rmd",
#           "04_sqrt_shift_points.Rmd",
#           "05_points_on_cbrtx.Rmd",
#           "06_translate_flip_cbrt.Rmd",
#           "07_sqrt_line_extraneous.Rmd",
#           "08_factrd_rational_featrs.Rmd",
#           "09_expndd_rational_featrs.Rmd",
#           "10_find_rational_hole.Rmd",
#           "11_line_thru_rational_hole.Rmd",
#           "12_distance_formula.Rmd",
#           "13_trilateration.Rmd")

# pnts = c(2,3,3,3,3,3,5,4,5,5,5,4,4)


probs = c("05_points_on_cbrtx.Rmd")
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


# pm = list("08_intervals_check.Rmd",
#           "03_translate_table.Rmd",
#           "04_stretch_table.Rmd",
#           "12_identify_transformation.Rmd",
#           "07_compose_graphs.Rmd",
#           "13_AROC_from_graph.Rmd",
#           "15_aroc_table.Rmd",
#           "17_AROC_dimensions.Rmd"
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