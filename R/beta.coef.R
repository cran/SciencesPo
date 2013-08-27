beta.coef <-
function (md) 
    {
        coef <- summary(md)$coef[-1, 1]
        sd.x <- sapply(md$model[-1], sd)
        sd.y <- sapply(md$model[1], sd)
        beta <- coef*(sd.x/sd.y)
        return(beta)
    }
