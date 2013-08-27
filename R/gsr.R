gsr <-
function(file, search, replace) { 
  if (length(search) != length(replace)) stop("The object search and replace must have the same number of items \n")
changing <- as.character(file)

  for (i in 1:length(search)) 
  { 
    cat("Replacing: ", search[i], " with: ", replace[i], "\n")  
	changed <- replace(changing, changing == search[i], replace[i])}
  
	cat("\n")   
  return(changed)
}
