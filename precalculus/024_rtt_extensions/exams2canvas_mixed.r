library("exams")
n = 30
outdir = "outcanvas"

genname = "024"

probs = c("01_trig_ratios_from_sides.Rmd",
          "02_approaching_height.Rmd",
          "03_base_from_alttd_angs.Rmd",
          "04_plr_vect_add_simp.Rmd",
          "05_slope_from_angle.Rmd",
          "06_angle_from_gradient.Rmd",
          "07_polar_to_rect.Rmd")

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

# probs = rep(list(probs),10)
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

