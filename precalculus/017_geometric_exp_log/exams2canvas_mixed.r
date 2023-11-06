library("exams")
n = 30
outdir = "outcanvas"

genname = "017"

probs = c("01_geometric_value_from_index.Rmd",
          "02_equal_temperament_get_freq.Rmd",
          "03_equal_temperament_get_key.Rmd",
          "04_cents.Rmd",
          "05_f2_from_cents.Rmd",
          "06_equal_temperament_fifth_error.Rmd",
          "07_compound_interest_periodic.Rmd",
          "08_compound_interest_continuous.Rmd")

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


exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

