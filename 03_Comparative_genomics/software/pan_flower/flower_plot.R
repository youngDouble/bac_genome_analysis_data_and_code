####花瓣图
install.packages(plotrix)
library(plotrix)


ellipse_col <- c('#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#54adf54E','#CDD7E24E','#9295C14E',
                 '#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#54adf54E','#CDD7E24E','#9295C14E',
                 '#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#6181BD4E','#F348004E','#64A10E4E',
                 '#9300264E','#464E044E','#6181BD4E','#F348004E','#64A10E4E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#54adf54E','#CDD7E24E','#9295C14E',
                 '#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#54adf54E','#CDD7E24E','#9295C14E',
                 '#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#FDA1004E','#54adf54E','#CDD7E24E',
                 '#6181BD4E','#F348004E','#64A10E4E','#9300264E','#464E044E',
                 '#049a0b4E','#4E0C664E','#D000004E','#FF6C004E','#FF00FF4E',
                 '#c7475b4E','#00F5FF4E','#BDA5004E','#A5CFED4E','#f0301c4E',
                 '#2B8BC34E','#FDA1004E','#6181BD4E')



#构建作图函数
flower_plot <- function(sample, unique_num, core_num, start, a, b, r, ellipse_col, circle_col) {
  par( bty = 'n', ann = F, xaxt = 'n', yaxt = 'n', mar = c(1,1,1,1))
  plot(c(0,10),c(0,10),type='n')
  n   <- length(sample)
  deg <- 360 / n
  res <- lapply(1:n, function(t){
    draw.ellipse(x = 5 + cos((start + deg * (t - 1)) * pi / 180), 
                 y = 5 + sin((start + deg * (t - 1)) * pi / 180), 
                 col = ellipse_col[t],
                 border = ellipse_col[t],
                 a = a, b = b, angle = deg * (t - 1))
    text(x = 5 + 3.2 * cos((start + deg * (t - 1)) * pi / 180),
         y = 5 + 3.2 * sin((start + deg * (t - 1)) * pi / 180),
         unique_num[t],
         cex = 0.4)
    
    if (deg * (t - 1) < 180 && deg * (t - 1) > 0 ) {
      text(x = 5 + 3.5 * cos((start + deg * (t - 1)) * pi / 180),
           y = 5 + 3.5 * sin((start + deg * (t - 1)) * pi / 180),
           sample[t],
           srt = deg * (t - 1) - start,
           adj = 1,
           cex = 0.7
      )
    } else {
      text(x = 5 + 3.5 * cos((start + deg * (t - 1)) * pi / 180),
           y = 5 + 3.5 * sin((start + deg * (t - 1)) * pi / 180),
           sample[t],
           srt = deg * (t - 1) + start,
           adj = 0,
           cex = 0.7
      )
    }			
  })
  draw.circle(x = 5, y = 5, r = r, col = circle_col, border = NA)
  text(x = 5, y = 5, paste('Core:', core_num))
}



#读入做图文件，预处理
dat <- read.table("pan_stata.txt", header=TRUE, stringsAsFactor=FALSE)



sample_id <- dat$Strain
#unique_num <- gsub("%","%)",paste(dat$unique, dat$percent, sep="("))
unique_num <- dat$unique
core_num <- dat[2,2]



#作图
pdf('pan_flower.pdf')
flower_plot(sample = sample_id, unique_num = unique_num, core_num = core_num, 
            start = 90, a = 0.5, b = 2.3, r = 1.3, ellipse_col = ellipse_col, circle_col = 'white')
dev.off()
#注：参数a和b用于设置花瓣椭圆的尺寸，
# ellipse_col用于设置花瓣椭圆的颜色；
# 参数r用于设置中心圆圈尺寸，
# circle_col用于设置中心圆圈的颜色







