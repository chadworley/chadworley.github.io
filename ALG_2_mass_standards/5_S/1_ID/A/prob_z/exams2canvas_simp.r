library("exams")
n = 30
outdir = "outcanvas"

probs = c("01_leftarea_from_z.Rmd",
          "02_rightarea_from_z.Rmd",
          "03_centralarea_from_z.Rmd",
          "04_twotailarea_from_z.Rmd",
          "05_area_between_two_zs.Rmd",
          "06_z_from_left_area.Rmd",
          "07_z_from_right_area.Rmd",
          "08_z_from_central_area.Rmd",
          "09_z_from_twotail_area.Rmd")

# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0("003_",stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=2,
#                maxattempts = 15,
#                name=names[i],
#                template = "canvas_qti12.xml")
# }


exams2canvas(probs,
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 10,
               name="z_and_P_mixed",
               template = "canvas_qti12.xml")