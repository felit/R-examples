x<-c(88,5,12,13)
x<-c(x[1:3],168,x[4])
length(x)
first1<-function(x){
  for(i in 1:length(x)){
    if(x[i]==1) break
  }
  return(i)
}
first1(10)
1:length(x)

#
y <- matrix(1:6,nrow=3,ncol=2,byrow=FALSE)
y+c(1,2)
y
2+3
"+"(2,3)
c(1,2,4)*c(5,0,-1)
y*c(5,0,-1)
y
y/c(5,4,-1)




# 向量索引