sss = "<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title>029 Practice Exams</title>
</head>
<body>

<p>
These exams will be taken without a calculator and without any reference sheets. To prepare, I'd recommend looking at <a href='https://openstax.org/books/precalculus-2e/pages/10-1-the-ellipse'>the textbook</a>.
</p>

"

#ddd = list.dirs("./",TRUE,TRUE)
for(dir in c("out_practice/","out_practice_sol/")){
  fls = list.files(dir)
  for(fl in fls){
    #if(grepl(".html",fl,fixed=T) || grepl(".pdf",fl,fixed=T)){
    if(grepl(".pdf",fl,fixed=T)){
      s1 = paste0(substring(dir,3),"/",fl,collapse="")
      sss = paste0(sss,"<a href=https://chadworley.github.io/precalculus/029_conic_sections_written_exam",s1,">",s1,"</a><br>")
    }
  }
}

sss = paste0(sss,"</body>")

fileConn<-file("we029practice.html")
writeLines(sss, fileConn)
close(fileConn)

