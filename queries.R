# Load map data and unemployment rate data.
> library(sp)
> gadm<-readRDS("c:/data/gadm36_KOR_1_sp.rds")
> plot(gadm)
> empol<-read.csv("c:/data/empol.csv", header=T)
> empol_sort<-empol[order(empol$code),]

# Set each section.
> interval<-c(0, 1, 1.8, 2.6, 3.4, 4.2, 5)

# Create an object in 2019 and enter the color code for each section.
> empol_cut <- cut(empol_sort$Y2019,breaks = interval)
> gadm$empol <- as.factor(empol_cut)
> col = c("0"="#ffffff", "1"="#e2f1ff", "1.8"="#bbddff", "2.6"="#80c0ff", "3.4"="#1e90ff", "4.2"="#007df6", "5"="#0055a7")
> spplot(gadm, "empol", col.regions=col, main="2019년 지역별 실업률 분포")

# Create an object in 2010 and enter the color code for each section.
> empol_cut <- cut(empol_sort$Y2010,breaks = interval)
> gadm$empol <- as.factor(empol_cut)
> col = c("0"="#ffffff", "1"="#e2f1ff", "1.8"="#bbddff", "2.6"="#80c0ff", "3.4"="#1e90ff", "4.2"="#007df6", "5"="#0055a7")
> spplot(gadm, "empol", col.regions=col, main="2010년 지역별 실업률 분포")

