library("exams")
n = 12
outdir = "outcanvas"

genname = "scattered"

# probs = c("mcas23_sch_samp.Rmd")
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

f = list.files()
x = numeric()

for(fi in f){
  if(substr(fi,1,1)=="Q" && substr(fi,7,10)==".Rmd"){
    x = c(x,fi)
  }
}

probs = list(x,x,x,x,x)

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=5,
             maxattempts = 10,
             name=paste0(genname,"_practice"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

