input <- read.csv("raw_general_go.csv",header=T,sep=",")
png(file = "scatterplot_general_go.png", width=1500, height=1000, units="px", pointsize=24)
par(mar=c(7.5,5,4,1)+.1)
stripchart(input$measured_ms ~ input$name, pch = 21, frame = FALSE, vertical = TRUE, method = "jitter", las=2, main = "Execution Time in Go\n(Factors Test, x = 26'888'346'474'443)", xlab = "", ylab = "", ylim = c(0, 1400),
col = c("#E69F00", "#E69F00", "#E69F00", "#E69F00", "#E69F00", "#00BA38", "#00BA38", "#00BA38", "#00BA38", "#00BA38", "#E33939", "#E33939", "#E33939", "#E33939", "#E33939"))
title(ylab = "time (ms)", mgp=c(4,1,1))
grid (NULL,NULL,nx=0,col = "lightgray")
legend(12, 1200, legend=c("AWS", "Google", "IBM"),
col=c("#E69F00", "#00BA38", "#E33939"),
pch=c(21,21,21), cex=1)
