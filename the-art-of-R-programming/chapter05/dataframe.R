kids <- c("Jack","Jill")
ages <- c(12,10)
d <- data.frame(kids,ages,stringsAsFactors=FALSE)
#TODO
d[[1]]
d$kids
str(d)




examsquiz<-read.table("/data/source/self/R-examples/the-art-of-R-programming/chapter05/exams.txt", header = TRUE)
examsquiz[2:5,]
examsquiz[2:5,2]
#numeric
class(examsquiz[2:5,2])

examsquiz[2:5,2,drop=FALSE]
#data.frame
class(examsquiz[2:5,2,drop=FALSE])


x <- c(2,NA,4)
mean(x)
mean(x,na.rm = TRUE)
subset(examsquiz,Exam.1>3.0)
examsquiz[examsquiz$Exam.1>3.0,]



rbind(d,list("Laura",19))
examsquiz$diff <- examsquiz$Exam.2/examsquiz$Exam.1


kids<-c("Jack","Jill","Jillian","John")
states<-c("CA","MA","MA","HI")
d1<-data.frame(kids,states)

d2<-data.frame(ages=c(10,7,12),kids=c("Jill","Lillian","Jack"))
merge(d1,d2)




