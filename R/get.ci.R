get.ci <-
function (sample = NULL, n = NULL, mu = 0, sigma = 1, cl = 0.95, 
              type = "mean") 
    {
        magenta <- "#30FE27"
        green <- "#FF0DE5"
        alpha <- 1 - cl
        CL <- cl * 100
        N <- sample
        choices <- c("mean", "var", "pi")
        alt <- pmatch(type, choices)
        type <- choices[alt]
        if (length(type) > 1 || is.na(type)) 
            stop("'type' must be one \"mean\", \"var\", \"pi\"")
        if (type == "Pi" && (mu <= 0 | mu >= 1)) 
            stop("Value for Pi (mu) must be between 0 and 1.")
        if (N <= 0 || n <= 0) 
            stop("Number of random CIs (sample), and sample size (n) must  be at least 1")
        if (!missing(cl) && (length(cl) != 1 || !is.finite(cl) || 
                                 cl <= 0 || cl >= 1)) 
            stop("'cl' must be a single number between 0 and 1")
        if (sigma <= 0 && (type == "Var" || type == "Mean")) 
            stop("Variance must be a positive value")
        if (type == "Mean") {
            junk <- rnorm(N * n, mu, sigma)
            jmat <- matrix(junk, N, n)
            xbar <- apply(jmat, 1, mean)
            ll <- xbar - qnorm(1 - alpha/2) * sigma/sqrt(n)
            ul <- xbar + qnorm(1 - alpha/2) * sigma/sqrt(n)
            notin <- sum((ll > mu) + (ul < mu))
            percentage <- round((notin/N) * 100, 2)
            plot(ll, type = "n", ylim = c(min(ll), max(ul)), xlab = " ", 
                 ylab = " ")
            title(sub = bquote(paste("Note: ", .(percentage), "% of the random CI do not contain ", 
                                     mu, "=", .(mu))))
            title(main = bquote(paste(.(N), " random ", .(CL), "% CI where ", 
                                      mu, " = ", .(mu))))
            for (i in 1:N) {
                low <- ll[i]
                high <- ul[i]
                if (low < mu & high > mu) {
                    segments(i, low, i, high)
                }
                else if (low > mu & high > mu) {
                    segments(i, low, i, high, col = green, lwd = 5)
                }
                else {
                    segments(i, low, i, high, col = magenta, lwd = 5)
                }
            }
            abline(h = mu)
            cat(percentage, "% of the random CI do not contain Mu =", 
                mu, ".", "\n")
        }
        else if (type == "var") {
            junk <- rnorm(N * n, mu, sigma)
            jmat <- matrix(junk, N, n)
            s2 <- apply(jmat, 1, var)
            ll <- ((n - 1) * s2)/qchisq(1 - alpha/2, (n - 1))
            ul <- ((n - 1) * s2)/qchisq(alpha/2, (n - 1))
            variance <- sigma^2
            notin <- sum((ll > variance) + (ul < variance))
            percentage <- round((notin/sample) * 100, 2)
            plot(ll, type = "n", ylim = c(min(ll), max(ul)), xlab = " ", 
                 ylab = " ")
            title(sub = bquote(paste("Note: ", .(percentage), "% of the random CI do not contain ", 
                                     sigma^2, "=", .(variance))))
            title(main = bquote(paste(.(N), " random ", .(CL), "% CI where ", 
                                      sigma^2, " = ", .(variance))))
            for (i in 1:N) {
                low <- ll[i]
                high <- ul[i]
                if (low < variance & high > variance) {
                    segments(i, low, i, high)
                }
                else if (low > variance & high > variance) {
                    segments(i, low, i, high, col = green, lwd = 5)
                }
                else {
                    segments(i, low, i, high, col = magenta, lwd = 5)
                }
            }
            abline(h = variance)
            cat(percentage, "% of the random CI do not contain Var =", 
                sigma^2, ".", "\n")
        }
        else if (type == "pi") {
            X <- rbinom(sample, n, mu)
            p <- X/n
            ll <- p - qnorm(1 - alpha/2) * sqrt((p * (1 - p))/n)
            ul <- p + qnorm(1 - alpha/2) * sqrt((p * (1 - p))/n)
            notin <- sum((ll > mu) + (ul < mu))
            percentage <- round((notin/sample) * 100, 2)
            plot(ll, type = "n", ylim = c(min(ll), max(ul)), xlab = " ", 
                 ylab = " ")
            title(sub = bquote(paste("Note: ", .(percentage), "% of the random CI do not contain ", 
                                     pi, "=", .(mu))))
            title(main = bquote(paste(.(N), " random ", .(CL), "% CI where ", 
                                      pi, "=", .(mu))))
            for (i in 1:N) {
                low <- ll[i]
                high <- ul[i]
                if (low < mu & high > mu) {
                    segments(i, low, i, high)
                }
                else if (low > mu & high > mu) {
                    segments(i, low, i, high, col = green, lwd = 5)
                }
                else {
                    segments(i, low, i, high, col = magenta, lwd = 5)
                }
            }
            abline(h = mu)
            cat(percentage, "% of the random CI do not contain Pi =", 
                mu, ".", "\n")
        }
    }
