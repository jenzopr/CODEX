choiceofK <- function(AIC, BIC, RSS, filename) {
    Kmax <- length(AIC)
    pdf(filename, width = 13, height = 4)
    par(mfrow = c(1, 3))
    plot(1:Kmax, RSS, type = "b", xlab = "Number of latent variables")
    plot(1:Kmax, AIC, type = "b", xlab = "Number of latent variables")
    plot(1:Kmax, BIC, type = "b", xlab = "Number of latent variables")
    dev.off()
}