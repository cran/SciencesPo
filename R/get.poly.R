get.poly <-
function (x) 
    {
        poly <- slot(x, "polygons")
        t(sapply(poly, function(i) slot(i, "labpt")))
    }
