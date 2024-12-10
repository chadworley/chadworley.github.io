library("exams")
n = 30
outdir = "outcanvas"
genname = "resize_recipe"

# probs = c("01_resize_recipe.Rmd")
# 
# pnts = c(4)
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


pm = list("01_resize_recipe.Rmd",
          "01_resize_recipe.Rmd",
          "01_resize_recipe.Rmd",
          "01_resize_recipe.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3,3,3,3),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))