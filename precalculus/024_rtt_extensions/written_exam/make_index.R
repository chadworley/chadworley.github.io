sss = "<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title>024 Written Exams</title>
</head>
<body>

"


#ddd = list.dirs("./",TRUE,TRUE)
for(dir in c("out_exams/","out_sols/","out_2_exams","out_2_sols")){
  fls = list.files(dir)
  for(fl in fls){
    #if(grepl(".html",fl,fixed=T) || grepl(".pdf",fl,fixed=T)){
    if(grepl(".pdf",fl,fixed=T)){
      s1 = paste0(dir,fl,collapse="")
      sss = paste0(sss,"<a href=https://chadworley.github.io/precalculus/024_rtt_extensions/written_exam/",s1,">",s1,"</a><br>")
    }
  }
}

sss = paste0(sss,"</body>")

fileConn<-file("we024practice.html")
writeLines(sss, fileConn)
close(fileConn)

