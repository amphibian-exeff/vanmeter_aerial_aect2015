#library(gplots)
#library(corrplot)

#http://plantecology.syr.edu/fridley/bio793/lm.html
#http://cw.routledge.com/textbooks/9780805861853/r/ch13.pdf

#surface area of aquarium is 1235 cm^2 = 25*49

.Platform
Sys.info()[4]

# #data directory
# #mac/unix
# if(.Platform$OS.type=="unix"){
#   if(Sys.info()[4]=="stp-air.local"){#Tom Mac
#     frog_root<-path.expand("~/Dropbox/amphib_dermalexposure/DATA/good_data/") 
#   }
# }

#windows
if(.Platform$OS.type=="windows"){
  if(Sys.info()[4]=="DC2626UTPURUCKE"){#Tom's work pc
    frog_root<-"C:\\stp_drop\\Dropbox\\amphib_archives_vanmeteretal2014\\R\\data\\"
    frog_src <- "C:\\stp_drop\\Dropbox\\amphib_archives_vanmeteretal2014\\R\\src\\"
    frog_out <- "C:\\stp_drop\\Dropbox\\amphib_archives_vanmeteretal2014\\R\\output\\"
  }
}

#linux
if(Sys.info()[4]=="d2626utpurucke3.aa.ad.epa.gov"){
  frog_root<-"~/git/vanmeter_archives_2015/data/"
  frog_src <- "~/git/vanmeter_archives_2015/"
  frog_out <- "~/git/vanmeter_archives_2015/output/"
}


#subdirectories


#read data
allfrog<-read.table(paste(frog_root,"good_data.csv",sep=""), header = TRUE, sep = ",") 
dim(allfrog)
colnames(allfrog)
unique(allfrog$good)
goodrows <- which(allfrog$good==1)
allfrog <- allfrog[goodrows,]
dim(allfrog)
