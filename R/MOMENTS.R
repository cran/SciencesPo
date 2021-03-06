#' @encoding UTF-8
#' @title Compute the Skewness
#'
#' @description Provides three methods for performing skewness test.
#'
#' @param x a numeric vector containing the values whose skewness is to be computed.
#' @param na.rm a logical value for \code{na.rm}, default is \code{na.rm=TRUE}.
#' @param type an integer between 1 and 3 for selecting the algorithms for computing the skewness, see details below.
#'
#' @details Skewness is a measure of symmetry distribution. Negative skewness (g_1 < 0) indicates that the mean of the data distribution is less than the median, and the data distribution is left-skewed. Positive skewness (g_1 > 0) indicates that the mean of the data values is larger than the median, and the data distribution is right-skewed. Values of g_1 near zero indicate a symmetric distribution.
#'
#' @note There are several methods to compute skewness, Joanes and Gill (1998) discuss three of the most traditional methods. According to them, \bold{type 3} performs better in non-normal population distribution, whereas in normal-like population distribution type 2 fits better the data. Such difference between the two formulae tend to disappear in large samples.
#'  \bold{Type 1:} g_1 = m_3/m_2^(3/2).
#'
#' \bold{Type 2:} G_1 = g_1*sqrt(n(n-1))/(n-2).
#'
#' \bold{Type 3:} b_1 = m_3/s^3 = g_1 ((n-1)/n)^(3/2).
#'
#' @author Daniel Marcelino, \email{dmarcelino@@live.com}
#'
#' @return An object of the same type as \code{x}
#'
#' @references Joanes, D. N. and C. A. Gill. (1998) Comparing measures of sample skewness and kurtosis. \emph{The Statistician,} \bold{47,} 183--189.
#'
#'
#' @examples
#' w <-sample(4,10, TRUE)
#' x <- sample(10, 1000, replace=TRUE, prob=w)
#' Skewness(x, type = 1)
#' Skewness(x, type = 2)
#' Skewness(x)
#'
#'
#' @export
#' @importFrom stats sd
#'
`Skewness` <-
  function (x, na.rm = TRUE, type = 3)
  {
    if (length(dim(x)) == 0) {
      if (na.rm) {
        x <- x[!is.na(x)]
      }
      stdev <- sd(x, na.rm = na.rm)
      mu <- mean(x)
      n <- length(x[!is.na(x)])
      switch(type, {
        skewer <-
          sqrt(n) * (sum((x - mu) ^ 3, na.rm = na.rm) / (sum((x - mu) ^ 2, na.rm = na.rm) ^
                                                           (3 / 2)))
      }, {
        skewer <-
          n * sqrt(n - 1) * (sum((x - mu) ^ 3, na.rm = na.rm) / ((n - 2) * sum((x - mu) ^
                                                                                 2, na.rm = na.rm) ^ (3 / 2)))
      }, {
        skewer <- sum((x - mu) ^ 3) / (n * sd(x) ^ 3)
      })
    }
    else {
      skewer <- rep(NA, dim(x)[2])
      if (is.matrix(x)) {
        mu <- colMeans(x, na.rm = na.rm)
      }
      else {
        mu <- apply(x, 2, mean, na.rm = na.rm)
      }
      stdev <- apply(x, 2, sd, na.rm = na.rm)
      for (i in 1:dim(x)[2]) {
        n <- length(x[!is.na(x[, i]), i])
        switch(type, {
          skewer[i] <- sqrt(n) * (sum((x[, i] - mu[i]) ^ 3,
                                      na.rm = na.rm) / (sum((x[, i] - mu[i]) ^
                                                              2, na.rm = na.rm) ^ (3 / 2)))
        }, {
          skewer[i] <- n * sqrt(n - 1) * (sum((x[, i] -
                                                 mu[i]) ^ 3, na.rm = na.rm) /
                                            ((n - 2) * sum((x[,
                                                              i] - mu[i]) ^
                                                             2, na.rm = na.rm) ^ (3 / 2)))
        }, {
          skewer[i] <- sum((x[, i] - mu[i]) ^ 3, na.rm = na.rm) / (n *
                                                                     stdev[i] ^
                                                                     3)
        })
      }
    }
    return(skewer)
  }
NULL





#' @encoding UTF-8
#' @title Compute the Kurtosis
#'
#' @description Provides three methods for performing kurtosis test.
#'
#' @param x a numeric vector
#' @param na.rm a logical value for \code{na.rm}, default is \code{na.rm=FALSE}.
#' @param type an integer between 1 and 3 selecting one of the algorithms for computing kurtosis detailed below
#'
#' @details Kurtosis measures the peakedness of a data distribution. A distribution with zero kurtosis has a shape as the normal curve (mesokurtic, or mesokurtotic). A positive kurtosis has a curve more peaked about the mean and the its shape is narrower than the normal curve (leptokurtic, or leptokurtotic). A distribution with negative kurtosis has a curve less peaked about the mean and the its shape is flatter than the normal curve (platykurtic, or platykurtotic).
#'
#' @note To be consistent with classical use of kurtosis in political science analyses, the default \bold{type} is the same equation used in SPSS and SAS, which is the bias-corrected formula: \bold{Type 2:} G_2 = ((n + 1) g_2+6) * (n-1)/(n-2)(n-3). When you set type to 1, the following equation applies: \bold{Type 1:} g_2 = m_4/m_2^2-3. When you set type to 3, the following equation applies: \bold{Type 3:} b_2 = m_4/s^4-3 = (g_2+3)(1-1/n)^2-3. You must have at least 4 observations in your vector to apply this function.
#'
#' @return An object of the same type as \code{x}.
#'
#' @references Balanda, K. P. and H. L. MacGillivray. (1988) Kurtosis: A Critical Review. \emph{The American Statistician,} \bold{42(2), pp. 111--119.}
#'
#' @note \bold{Skewness} and \bold{Kurtosis} are functions to measure the third and fourth \bold{central moment} of a data distribution.
#'
#' @author Daniel Marcelino, \email{dmarcelino@@live.com}
#'
#' @examples
#'
#' w<-sample(4,10, TRUE)
#' x <- sample(10, 1000, replace=TRUE, prob=w)
#'
#' Kurtosis(x, type=1)
#' Kurtosis(x, type=2)
#' Kurtosis(x)
#'
#'
#'
#' @export
`Kurtosis` <-
  function (x, na.rm = FALSE, type = 3)
  {
    if (any(i.na <- is.na(x))) {
      if (na.rm)
        x <- x[!i.na]
      else
        return(NA)
    }
    if (!(type %in% (1:3)))
      stop("Your argument for 'type' is not valid.")
    n <- length(x)
    dev <- (x - mean(x))
    r <- (n * sum(dev ^ 4) / (sum(dev ^ 2) ^ 2))
    y <- if (type == 1)
      r - 3
    else if (type == 2) {
      if (n < 4)
        stop("You need at least 4 complete observations.")
      ((n + 1) * (r - 3) + 6) * (n - 1) / ((n - 2) * (n - 3))
    }
    else
      r * (1 - 1 / n) ^ 2 - 3
    y
  }
NULL
