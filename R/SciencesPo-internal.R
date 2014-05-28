.First <-
function () 
{
    cat("\nHi Daniel. Good to see you again: at", date(), "\n")
    options(prompt = "R> ", digits = 4, show.signif.stars = FALSE)
    options(continue = "+ ")
    options(max.print = 5000)
    options(tab.width = 3)
    options(width = 160)
    options(graphics.record = TRUE)
    options(digits.secs = 2)
    options(papersize = "a4")
    options(editor = "TextMate")
    options(pager = "internal")
    options(stringsAsFactors = FALSE)
}
.Last <-
function () 
{
    cat("\nGoodbye Daniel at: ", date(), "\n")
    if (!any(commandArgs() == "--no-readline") && interactive()) {
        timestamp(, prefix = paste("##------ [", getwd(), "] ", 
            sep = ""))
        try(savehistory("~/.Rhistory"))
    }
}
