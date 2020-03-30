library(ggplot2)


guess <- function() {
  x = runif(200)
  q <- data.frame(x = x,
                  y = abs(x + (runif(200) -runif(200))/(runif(1)*3) ))
  print(ggplot(q, aes(x, y)) + 
          geom_point(shape = 18, colour = "black", fill = "black", stroke = 2)+
          theme_bw() + xlab("") + ylab("") 
        )
  return(cor(q$x,q$y))
}
guess()


