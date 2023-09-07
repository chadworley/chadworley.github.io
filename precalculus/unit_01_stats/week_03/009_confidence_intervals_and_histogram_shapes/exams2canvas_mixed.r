library("exams")
n = 30
outdir = "outcanvas"

genname = "009_"

probs = c("01_make_histogram_and_identify_shape.Rmd",
          "02_CI_mean_MC.Rmd",
          "03_CI_mean_raw_MC.Rmd",
          "04_CI_prop_MC.Rmd",
          "05_CI_prop_raw_MC.Rmd",
          "06_CI_interpret_MC.Rmd",
          "07_CI_paired_data_raw_MC.Rmd",
          "08_CI_2_means_raw_MC.Rmd",
          "09_CI_2_props_raw_MC.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml")
}


exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml")


myhtml = paste0('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>SQ ',genname,'</title>
<style type="text/css">
body{font-family: Arial, Helvetica, Sans;}
</style>
<meta charset="utf-8" />
</head>
<script type="text/javascript">
function loader(){
  qs = document.body.getElementsByTagName("h4");
  lnk = document.getElementById("linksies");
  console.log(qs);
  for(let i=0;i<qs.length;i++){
    if(i%2==0){
      qs[i].innerHTML = "QUESTION  "+(i/2+1).toString();
      qs[i].id = "Q"+(i/2+1).toString();
      lnk.innerHTML += "<a href=\'#Q"+(i/2+1).toString()+"\'>Question "+(i/2+1).toString()+"</a><br>";
                }
}
}
</script>
<body onLoad="loader()">
<h2>Shared Qs (',genname,')</h2>
<div id="linksies"></div>
##\\exinput{exercises}##
</body>
</html>
')

fileConn<-file("mytemplate.html")
writeLines(myhtml, fileConn)
close(fileConn)

set.seed(111)
exams2html(probs,
           n=1,
           dir=outdir,
           name=paste0(genname,"_shared"),
           converter = "pandoc-mathjax",
           mathjax = TRUE,
           template = "mytemplate.html")

# set.seed(111)
# exams2pdf(probs,
#           n=1,
#           dir=outdir,
#           name=paste0(genname,"_shared"))

