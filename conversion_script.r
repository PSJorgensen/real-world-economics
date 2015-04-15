
library(rmarkdown)

wd<- "G:/Documents/PostDocKVA/Labbook/"
html.output.dir<-"G:/Documents/PostDocKVA/Labbook/psjorgensen.github.com/_posts"

project.title<- "real-world-economics"

docs.vec<-c("real-world-economics-outline","real-world-economics-bibliography")

htmlpost_switch <- TRUE
html_switch <- TRUE
md_switch <- TRUE
pdf_switch <- FALSE
word_switch <- TRUE

setwd(paste(wd,"projects/",project.title,sep=""))


for(i in c(1,2)){#1:length(docs.vec)){

# html
if(htmlpost_switch == TRUE){
  render(
    input=paste(docs.vec[i],".Rmd",sep=""),
    output_format="html_document",
    output_dir=html.output.dir,
    output_file=paste(Sys.Date(),"-",docs.vec[i],".html",sep="")
  )
}

# html
if(html_switch == TRUE){
  render(
    input=paste(docs.vec[i],".Rmd",sep=""),
    output_format="html_document",
    output_dir=getwd(),
    output_file=paste(docs.vec[i],".html",sep="")
  )
}

# word
if(word_switch == TRUE){
  render(
    input=paste(docs.vec[i],".Rmd",sep=""),
    output_format="word_document",
    output_dir=getwd(),
    output_file=paste(docs.vec[i],".docx",sep="")
  )
}

# md
if(md_switch == TRUE){
  render(
    input=paste(docs.vec[i],".Rmd",sep=""),
    output_format="md_document",
    output_dir=getwd(),
    output_file=paste(docs.vec[i],".md",sep="")
  )
}

# pdf
if(pdf_switch == TRUE){
  render(
    input=paste(docs.vec[i],".Rmd",sep=""),
    output_format="pdf_document",
    output_dir=getwd(),
    output_file=paste(docs.vec[i],".pdf",sep="")
  )
}

}

####  END
