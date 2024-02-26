choices = c("a","b","c","d")
f = list.files("./")

for(fi in f){
  if(sum(substr(fi,5,5)==c("a","b","c","d"))==1 && substr(fi,6,9)==".png"){
    sol = paste0(1*(substr(fi,5,5)==c("a","b","c","d")),collapse="")
    fileConn = file(paste0("gah/Q",substr(fi,1,5),".Rmd"))
    s = paste0("```{r}\ninclude_supplement('",fi,"')\n```\n",
               "\nQuestion\n========\n\n![](",
               fi,
               ")\n\nAnswerlist\n--------\n* a\n* b\n* c\n* d\n\nSolution\n========\n\n",
               "Meta-information\n============\nextype: schoice\n",
               "exsolution: ",sol,"\n",
               "exname: mcas23_sch_samp",
               collapse="")
    writeLines(s, fileConn)
    close(fileConn)
    file.copy(fi,paste0("gah/",fi,collapse=""))
  }
}



