
#install.packages("pheatmap")
library(pheatmap)


infile<- "ANIb_percentage_identity.tab"
# file name

tab <-read.table(infile,na.strings = "NA",sep="\t",quote = "",
                 header=T,row.names=1,
                 stringsAsFactor=FALSE,check.names =  F)


cell_w <- 9

pdf("ANIb_percentage_identity_new.pdf",width= cell_w * ncol(tab)/20 ,height= cell_w * ncol(tab) /20 )


pheatmap(t(tab),cellwidth = cell_w , cellheight = cell_w,
         #cluster_rows = F,cluster_cols  = F,
         color=colorRampPalette(c("Steelblue","white","SandyBrown",'Chocolate'))(50)
         )
dev.off()
