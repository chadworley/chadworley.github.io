library("exams")
n = 30
outdir = "outcanvas"

genname = "022"

probs = c("01_standard_pos_deg.Rmd",
          "02_large_angle_deg.Rmd",
          "03_coterminal_degs.Rmd",
          "04_convert_degs_to_rots.Rmd",
          "05_convert_rots_to_degs.Rmd",
          "06_convert_degs_to_rads.Rmd",
          "07_convert_rads_to_degs.Rmd",
          "08_arc_length_degs.Rmd",
          "09_arc_length_rads.Rmd",
          "10_plot_angle_rads.Rmd",
          "11_plot_coterminal_rads.Rmd",
          "12_large_angle_rad.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

# 
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# 
