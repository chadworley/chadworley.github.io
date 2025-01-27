library("exams")
n = 30
outdir = "outcanvas"
genname = "u12_"

# probs =  c("m01_angle_conversions.Rmd",
#            "m02_r_theta_L_get_unknown.Rmd",
#            "m03_unit_circle_deg_from_L.Rmd",
#            "m04_unit_circle_rad_from_L.Rmd",
#            "m05_standard_pos_deg.Rmd",
#            "m06_large_angle_deg.Rmd",
#            "m07_plot_angle_rads.Rmd",
#            "m08_large_angle_rad.Rmd",
#            "m09_sector_area.Rmd",
#            "m10_deg_rad_conv.Rmd")
# 
# pnts = rep(2,10)
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#     print(i)
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 10,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }


pm = c("m01_angle_conversions.Rmd",
       "m02_r_theta_L_get_unknown.Rmd",
       "m03_unit_circle_deg_from_L.Rmd",
       "m04_unit_circle_rad_from_L.Rmd",
       "m05_standard_pos_deg.Rmd",
       "m06_large_angle_deg.Rmd",
       "m07_plot_angle_rads.Rmd",
       "m08_large_angle_rad.Rmd",
       "m09_sector_area.Rmd",
       "m10_deg_rad_conv.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 4,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))