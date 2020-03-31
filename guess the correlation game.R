# Inspired by http://guessthecorrelation.com/

library(ggplot2)

guess <- function() {
  x = runif(200)
  q <- data.frame(x = x,
                  y = abs(x + (runif(200) -runif(200))/(runif(1)*3) ))
  q$y <- q$y/max(q$y)
  show(ggplot(q, aes(x, y)) + 
          geom_point(shape = 18, colour = "black", fill = "black", stroke = 2)+
          theme_bw() + xlab("") + ylab("") + 
          theme(panel.grid = element_blank(), axis.text = element_blank(), axis.ticks = element_blank())
        )
  return(cor(q$x,q$y))
  
}
guess()


