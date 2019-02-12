# #' ---
#' title: "Class05 Introduction to R Graphics"
#' author: "Sharon Tu"
#' date: "February 12, 2019"
#' output: github_document
#' ---
#' 
#' Class 05 R graphics intro

# My first boxplot
x <- rnorm(1000, 0)
boxplot(x)

summary(x)
hist(x)


boxplot(x, horizontal = TRUE)

# I have generated x and it has ``

 # Hands on session 2
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

plot(weight[,1], weight[,2], type = "o")

plot(weight$Age, weight$Weight, type = "o", main="some main title", pch=15, cex=1:3, col = c("red", "blue"), 
     lwd=3, lty=3)

# Try a barplot
barplot(VADeaths, beside = TRUE)
barplot(VADeaths, beside = FALSE)


## Input our feature count data
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header=TRUE, sep="\t")
par(mar=c(5.1, 11.1, 4.1, 2.1))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, las=2, col=heat.colors(11))

## section 3A
malefemale <- read.table("bimm143_05_rstats/male_female_counts.txt", header=TRUE, sep="\t")
par(mar=c(8.1, 6.1, 3.1, 3.1))
barplot(malefemale$Count, horiz=FALSE, names.arg = malefemale$Sample, 
        las=2, col=rainbow(10))
barplot(malefemale$Count, horiz=FALSE, names.arg = malefemale$Sample, 
        las=2, col=c("blue", "red"))

# 3B
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")
table(genes$State)
plot(genes$Condition1, genes$Condition2, col=genes$State, 
     xlab = "Expression condition 1", ylab = "Expression condition 2")

#expression data
e <- read.table("bimm143_05_rstats/up_down_expression.txt", header = TRUE)

# how many genes?
nrow(e)

# how many up, down, all around?
e$State
table(e$State)

plot(e$Condition1, e$Condition2, col=e$State)

#play
palette(c("red", "lightgray", "blue"))
plot(e$Condition1, e$Condition2, col=e$State)


#3C
