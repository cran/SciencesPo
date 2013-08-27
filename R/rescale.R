rescale <-
function(x, fun='center'){ 
if(fun=='z-score'){
.zscore <-((x - mean(x))/sd(x))
return(.zscore) }
else {
.center <- (x - mean(x))
return(.center) }
}
