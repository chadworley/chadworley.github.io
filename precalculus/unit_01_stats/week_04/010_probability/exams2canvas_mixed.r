library("exams")
n = 30
outdir = "outcanvas"

genname = "010_prob"

probs = c("01_cards.Rmd",
          "02_cards_shuffled.Rmd",
          "03_winlose.Rmd",
          "04_bobhappy.Rmd")

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
#                cloze = list(enumerate = FALSE)
#   )
# }
# 
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE)
#              )


nvers = 10
ps = character(0)
for(prob in probs){
  ps = c(ps,rep(prob,nvers))
}

main = function(){
  exams2html_interact(ps,
                      dir="./",
                      name=paste0(genname,"_shared"),
                      converter = "pandoc-mathjax",
                      mathjax = TRUE,
                      template = "mytemplate.html")
}


myhtml = paste0('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>SQ ',genname,'</title>
<style type="text/css">
body{font-family: Arial, Helvetica, Sans;}
h4.qqq {
  background-color: black;
  color: white;
}
ol.outermostlist{
    list-style-type: none;
    padding:0px;
    margin:0px;
}
</style>
<meta charset="utf-8" />
</head>
<script type="text/javascript">
const nv = ',nvers,';
function loader(){
  qs = document.body.getElementsByTagName("h4");
  lnk = document.getElementById("linksies");
  qs[0].parentElement.parentElement.classList.add("outermostlist");
  for(let i=0;i<qs.length;i++){
    if(i%2==0){
      qs[i].innerHTML = "QUESTION  "+(Math.floor(i/2/nv+1)).toString()+" version "+((i/2)%nv+1).toString();
      qs[i].id = "Q"+(Math.floor(i/2/nv+1)).toString()+"v"+((i/2)%nv+1).toString();
      qs[i].classList.add("qqq");
      if(i%(2*nv)==0){
        let newid = "q"+(Math.floor(i/2/nv+1)).toString();
        lnk.innerHTML += "<a id=tempid href=\'#Q"+(Math.floor(i/2/nv+1)).toString()+"v1\'>Question "+(Math.floor(i/2/nv+1)).toString()+"</a><br>";
        document.getElementById("tempid").id = newid;
      }
      qs[i].parentElement.id = "q"+(Math.floor(i/2/nv+1)).toString()+"v"+((i/2)%nv+1).toString();
      if(i%(2*nv)!=0){
        qs[i].parentElement.style.display = "none";
      }
      }
}
}
function shower(){
  let x = this.nextSibling;
  if (x.style.display === "none") {
    x.style.display = "block";
    this.innerHTML = "Hide solution";
  } else {
    x.style.display = "none";
    this.innerHTML = "Show solution";
  }
}
function prev(){
  let x = this.parentElement;
  let prefix = x.id.split("v")[0]
  let vn = parseInt(x.id.split("v")[1]);
  let new_vn = (vn-1+nv)%nv;
  if(new_vn==0){
    new_vn = nv;
  }
  let y = document.getElementById(prefix+"v"+new_vn.toString());
  x.style.display = "none";
  y.style.display = "block";
  document.getElementById(prefix).href = "#"+prefix+"v"+new_vn.toString();
}
function next(){
  let x = this.parentElement;
  let prefix = x.id.split("v")[0]
  let vn = parseInt(x.id.split("v")[1]);
  let new_vn = (vn+1)%nv;
  if(new_vn==0){
    new_vn = nv;
  }
  let y = document.getElementById(prefix+"v"+new_vn.toString());
  x.style.display = "none";
  y.style.display = "block";
  document.getElementById(prefix).href = "#"+prefix+"v"+new_vn.toString();
}
</script>
<body onLoad="loader()">
<div style="display:none">
\\(\\renewcommand{\\hat}[1]{\\widehat{#1}}\\)
</div>
<h2 id="sqid">Shared Qs (',genname,')</h2>
<div id="linksies"></div>
##\\exinput{exercises}##
</body>
</html>
')

fileConn<-file("mytemplate.html")
writeLines(myhtml, fileConn)
close(fileConn)

exams2html_interact <- function(file, n = 1L, nsamp = NULL, dir = ".", template = NULL,
                                name = NULL, quiet = TRUE, edir = NULL, tdir = NULL, sdir = NULL, verbose = FALSE,
                                question = "<br><h4>Question</h4><button onclick='prev.call(this)'>prev</button><button onclick='next.call(this)'>next</button>", solution = "<h4>Solution</h4><button onclick='shower.call(this)'>Show solution</button><div class='hider' style = 'display: none;'>",
                                mathjax = TRUE, resolution = 100, width = 4, height = 4, svg = FALSE,
                                encoding = "", envir = NULL, converter = NULL, seed = NULL, ...)
{
  ## handle matrix specification of file
  if(is.matrix(file)) {
    if(!missing(n) && !is.null(n) && n != nrow(file)) warning("'n' must not differ from number of rows of 'file'")
    if(!missing(nsamp) && !is.null(nsamp) && nsamp != ncol(file)) warning("'nsamp' must not differ from number of columns of 'file'")
    n <- nrow(file)
    nsamp <- ncol(file)
  }
  
  ## for Rnw exercises use "ttm" converter and "plain" template,
  ## otherwise "pandoc" converter and "plain8" template
  if(any(tolower(tools::file_ext(unlist(file))) == "rmd")) {
    if(is.null(converter)) converter <- "pandoc"
  } else {
    if(is.null(converter)) converter <- "ttm"
  }
  if(is.null(template)) template <- if(converter %in% c("tth", "ttm", "tex2image")) "plain" else "plain8"
  
  ## add MathJax link if specified or if converter="pandoc-mathjax"
  if(is.null(mathjax)) mathjax <- converter == "pandoc-mathjax"
  
  ## output directory or display on the fly
  display <- missing(dir)
  if(missing(dir) & n == 1L & length(template) == 1L) {
    display <- TRUE
    dir.create(dir <- tempfile())
  } else {
    display <- FALSE
    if(is.null(dir)) stop("Please specify an output 'dir'.")
  }
  
  ## output name processing
  if(is.null(name)) name <- file_path_sans_ext(basename(template))
  
  ## set up .html transformer and writer function
  htmltransform <- make_exercise_transform_html(converter = converter, ...)
  htmlwrite <- make_exams_write_html(template = template, name = name,
                                     question = question, solution = solution, mathjax = mathjax)
  
  ## create final .html exam
  rval <- xexams(file, n = n, nsamp = nsamp,
                 driver = list(sweave = list(quiet = quiet, pdf = FALSE, png = !svg, svg = svg,
                                             resolution = resolution, width = width, height = height, encoding = encoding, envir = envir),
                               read = NULL, transform = htmltransform, write = htmlwrite),
                 dir = dir, edir = edir, tdir = tdir, sdir = sdir, verbose = verbose, seed = seed)
  
  ## display single .html on the fly
  if(display) {
    out <- file.path(dir, paste(name, "1.html", sep = ""))
    out <- normalizePath(out)
    browseFile(out)
  }
  
  ## return xexams object invisibly
  invisible(rval)
}


## writes the final .html site
make_exams_write_html <- function(template = "plain", name = NULL,
                                  question = "<h4>Question</h4>", 
                                  solution = "<h4>Solution</h4>", mathjax = FALSE)
{
  ## the package directory
  pkg_dir <- find.package("exams")
  
  ## get the .html template files
  template <- if(is.null(template)) {
    file.path(find.package("exams"), "xml", "plain.html")
  } else path.expand(template)
  template <- ifelse(
    tolower(substr(template, nchar(template) - 4L, nchar(template))) != ".html",
    paste(template, ".html", sep = ""), template)
  template <- ifelse(file.exists(template),
                     template, file.path(pkg_dir, "xml", basename(template)))
  if(!all(file.exists(template))) {
    stop(paste("The following files cannot be found: ",
               paste(template[!file.exists(template)], collapse = ", "), ".", sep = ""))
  }
  
  ## output name processing
  nt <- length(template)
  name <- if(is.null(name)) file_path_sans_ext(basename(template)) else rep(name, length.out = nt)
  if(nt > 1 && length(unique(name)) < nt)
    name <- paste(name, 1:nt, sep = "")
  
  ## read the templates
  template <- lapply(template, readLines)
  
  ## question and solution control
  foo <- function(x, what) {
    if(is.null(x)) {
      paste("<h4>", what, "</h4><div class='hider'>", sep = "")
    } else {
      if(is.logical(x)) {
        if(x) paste("<h4>", what, "</h4><div class='hider'>", sep = "") else NA
      } else x
    }
  }
  foo <- function(x, what) {
    if(is.null(x)) {
      paste("<h4>", what, "</h4>", sep = "")
    } else {
      if(is.logical(x)) {
        if(x) paste("<h4>", what, "</h4>", sep = "") else NA
      } else x
    }
  }
  question <- unlist(lapply(rep(if(is.null(question)) TRUE else question, length.out = nt),
                            foo, what = "Question"))
  solution <- unlist(lapply(rep(if(is.null(solution)) TRUE else solution, length.out = nt),
                            foo, what = "Solution"))
  
  ## the link to mathjax
  mj_link <- paste('<script type="text/javascript"',
                   '  src="https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">',
                   '</script>', collapse = "\n")
  mathjax <- rep(mathjax, length.out = nt)
  
  function(exm, dir, info)
  {
    ## basic indexes
    id <- info$id
    n <- info$n
    m <- length(exm)
    
    ## current directory
    dir_orig <- getwd()
    on.exit(setwd(dir_orig))
    
    ## temporary directory
    dir_temp <- tempfile()
    if(!file.exists(dir_temp) && !dir.create(dir_temp))
      stop(gettextf("Cannot create temporary work directory '%s'.", dir_temp))
    setwd(dir_temp)
    on.exit(unlink(dir_temp), add = TRUE)
    
    ## Surround schoice questions with div, or something, to allow styles...
    qdiv = function(x){
      paste('<select><option>--------</option><option>',paste0(x,collapse="</option><option>"),'</option></select>')
      # paste("<div class='qdiv' style='background: #AAAAFF'>",paste(x,collapse=" / "),"</div>",collapse=" ")
    }
    adiv = function(x){
      paste("<div class=`adiv` style='background: #FFAAAA'>",paste(x,collapse=" / "),"</div>",collapse=" ")
    }
    
    ## collapse answer groups of clozes (if necessary)
    for(j in seq_along(exm)) {
      if(exm[[j]]$metainfo$type == "cloze") {
        g <- rep(seq_along(exm[[j]]$metainfo$solution), sapply(exm[[j]]$metainfo$solution, length))
        if(!is.list(exm[[j]]$questionlist)) exm[[j]]$questionlist <- as.list(exm[[j]]$questionlist)
        exm[[j]]$questionlist <- sapply(split(exm[[j]]$questionlist, g), qdiv)
        if(!is.null(exm[[j]]$solutionlist)) exm[[j]]$solutionlist <- sapply(split(exm[[j]]$solutionlist, g), adiv)
        for(qj in seq_along(exm[[j]]$questionlist)) {
          if(any(grepl(paste("##ANSWER", qj, "##", sep = ""), exm[[j]]$question, fixed = TRUE))) {
            ans <- exm[[j]]$questionlist[qj]
            exm[[j]]$question <- gsub(paste("##ANSWER", qj, "##", sep = ""),
                                      ans, exm[[j]]$question, fixed = TRUE)
            exm[[j]]$questionlist[qj] <- NA
          }
        }
      }
    }
    
    for(i in 1:nt) {
      html_body <- "<ol>"
      
      ## question and solution insertion
      for(j in seq_along(exm)) {
        html_body <- c(html_body, "<li>")
        if(!is.null(exm[[j]]$metainfo$id)) {
          html_body <- c(html_body, paste("<b> ID: ", exm[[j]]$metainfo$id, "</b>", sep = ""), "<br/>")
        }
        if(!is.na(question[i])) {
          html_body <- c(html_body, question[i], exm[[j]]$question, "<br/>")
          if(length(exm[[j]]$questionlist) & !is.null(exm[[j]]$questionlist)) {
            html_body <- c(html_body, '<ol type="a">')
            for(ql in exm[[j]]$questionlist) {
              if(!is.null(ql) & !is.na(ql))
                html_body <- c(html_body, "<li>", ql, "</li>")
            }
            html_body <- c(html_body, "</ol>", "<br/>")
          }
        }
        if(!is.na(solution[i])) {
          if(length(exm[[j]]$solutionlist) < 2) {
            if(is.character(exm[[j]]$solutionlist) & length(exm[[j]]$solutionlist)) {
              if(exm[[j]]$solutionlist == "")
                exm[[j]]$solutionlist <- NULL
            }
          }
          if(length(exm[[j]]$solution) | length(exm[[j]]$solutionlist))
            html_body <- c(html_body, solution[i])
          if(length(exm[[j]]$solution))
            html_body <- c(html_body, exm[[j]]$solution, "<br/>")
          if(length(exm[[j]]$solutionlist) & !is.null(exm[[j]]$solutionlist)) {
            html_body <- c(html_body, '<ol type="a">')
            for(sl in exm[[j]]$solutionlist)
              html_body <- c(html_body, "<li>", sl, "</li>")
            html_body <- c(html_body, "</ol>", "<br/>")
          }
          # html_body <- c(html_body,paste0("ANSWERS: ",paste0(exm[[j]]$metainfo$solution,collapse=", "),"<br>",collapse=""))
          # html_body <- c(html_body,paste0("TOLERANCES: ",paste0(exm[[j]]$metainfo$tol,collapse=", "),collapse=""))
        }
        html_body <- c(html_body, "</div></li>")
        
        ## handle and copy possible supplements
        if(length(exm[[j]]$supplements)) {
          if(!file.exists(media_dir <- file.path(dir_temp, "media")))
            dir.create(media_dir)
          if(!file.exists(exm_dir <- file.path(media_dir, exi <- paste("supplements", id, sep = ""))))
            dir.create(exm_dir)
          if(!file.exists(ex_dir <- file.path(exm_dir, exj <- paste("exercise", j, sep = ""))))
            dir.create(ex_dir)
          for(sup in exm[[j]]$supplements) {
            file.copy(sup, file.path(ex_dir, basename(sup)))
            if(any(grep(dirname(sup), html_body, fixed = TRUE))) {
              html_body <- gsub(dirname(sup), file.path("media", exi, exj),
                                html_body, fixed = TRUE)
            }
            src <- paste('src="', basename(sup), sep = "")
            if(any(grep(src, html_body, fixed = TRUE))) {
              html_body <- gsub(src, paste('src="', file.path("media", exi, exj, basename(sup)),
                                           sep = ""), html_body, fixed = TRUE)
            }
            href <- paste('href="', basename(sup), sep = "")
            if(any(grep(href, html_body, fixed = TRUE))) {
              html_body <- gsub(href, paste('href="', file.path("media", exi, exj, basename(sup)),
                                            sep = ""), html_body, fixed = TRUE)
            }
          }
        }
      }
      html_body <- c(html_body, "</ol>")
      
      ## insert the exam id
      html <- gsub("##ID##", id, template[[i]], fixed = TRUE)
      
      ## if required insert mathjax link
      if(mathjax[i]) {
        jd <- grep("</head>", html, fixed = TRUE)
        html <- c(html[1L:(jd - 1)], mj_link, html[jd:length(html)])
      }
      
      ## insert .html body
      html <- gsub("##\\exinput{exercises}##", paste(html_body, collapse = "\n"), html, fixed = TRUE)
      
      ## write and copy final .html code
      writeLines(html, file.path(dir_temp, paste(name[i], id, ".html", sep = "")))
      file.copy(file.path(dir_temp, list.files(dir_temp)), dir, recursive = TRUE)
      invisible(NULL)
    }
  }
}

## an internal wrapper for browseURL to work around the setting of getOption("browser")
## in RStudio < 0.97.133
browseFile <- function(file) {
  if(is.function(br <- getOption("browser")) & .Platform$OS.type != "windows") {
    rstudio_browser <- any(grepl("rs_browseURL", deparse(br), fixed = TRUE))
    rstudio_version <- try(packageVersion("rstudio"), silent = TRUE)
    rstudio_version <- if(inherits(rstudio_version, "try-error")) {
      FALSE
    } else {
      compareVersion(as.character(rstudio_version), "0.97.133") < 0
    }
    if(rstudio_browser & rstudio_version) warning(paste(
      "Browsing local files may not work with the default settings in RStudio < 0.97.133.",
      "Please upgrade RStudio or see ?exams2html on how to set the 'browser' option.", collapse = "\n"))
  }
  browseURL(file)
}


## show .html code in browser, only used for internal testing
show.html <- function(x)
{
  if(length(x) == 1L && file.exists(x[1L])) {
    tempf <- dirname(x)
    fname <- basename(x)
  } else {
    dir.create(tempf <- tempfile())
    fname <- "show.html"
    writeLines(x, file.path(tempf, fname))
    if(!is.null(imgs <- attr(x, "images"))) {
      for(i in imgs)
        file.copy(i, file.path(tempf, basename(i)))
    }
  }
  browseFile(normalizePath(file.path(tempf, fname)))
}


main()

