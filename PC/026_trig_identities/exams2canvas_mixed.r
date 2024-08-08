library("exams")
n = 12
outdir = "outcanvas"

genname = "026"

# probs = c("10_string_animation.Rmd")
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,"_",stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=2,
#                maxattempts = 20,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }

probs = c("01_area_of_triangle.Rmd",
          "02_law_of_sines.Rmd",
          "03_LOS_ambig_case.Rmd",
          "04_LOC_get_side.Rmd",
          "05_LOC_get_angle.Rmd",
          "06_angle_sum_ident.Rmd",
          "07_ang_sum_proof.Rmd",
          "08_ang_sum_proof_alg.Rmd",
          "09_match_animations.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=3,
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))