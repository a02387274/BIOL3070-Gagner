# Day 1 Example Plot

viremia <- read.csv("viremia_data_full.csv")

View(viremia)

colnames(viremia) <- c("Bird","n","Species","Family","Order","1","3","4","6")

#choose your colors
cols <- c("black","grey",rainbow(nrow(viremia)-2))

#Plot by species
plot(c(1,3,4,6),as.numeric(viremia[1,6:9]),
     type = "l", lwd = 2, ylim = c(1, max(viremia[,6:9], na.rm = TRUE)),
     xlab = "Day Postinfection",
     ylab = "Log PFU/ml Serum") 

for (i in 2:nrow(viremia)){lines(c(1,3,4,6),as.numeric(viremia[i,6:9]),lwd = 2, col = cols[i])
}

