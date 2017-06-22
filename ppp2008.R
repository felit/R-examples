bball <- read.csv('http://datasets.flowingdata.com/ppg2008.csv',header=TRUE)
bball[1:5,]
bball_byfgp <- bball[order(bball$FGP,decreasing=TRUE),]

bball <- bball[order(bball$PTS,decreasing=FALSE),]
row.names(bball)<- bball$Name
bball <- bball[,2:20]

bball_matrix <- data.matrix(bball)


bball_heatmap <- heatmap(bball_matrix,Rowv = NA,Colv = NA,col = cm.colors(256), scale = 'column',margins = c(5,10))
