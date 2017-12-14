source('/home/congsl/source/self/R-examples/the-art-of-R-programming/chapter13/findruns.R')
debug(findruns)
findruns(c(1,0,0,1,1,0,1,1,1),2)
t<-function(){
  print("hello")
}
trace(findruns,t)
setBreakpoint('findruns.R',5)

traceback()
options(error = dump.frames)
debugger()
options(error=NULL)

source('/home/congsl/source/self/R-examples/the-art-of-R-programming/chapter13/cities.R')
m<-rbind(c(0,12,5),c(12,0,8),c(5,8,0))
options(error=recover)

setBreakpoint('cities.R',8)
mind(m)

