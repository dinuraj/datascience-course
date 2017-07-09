require(ggplot2)
?mpg
head(mpg)
class(mpg)
str(mpg)

ggplot(data=mpg, aes(x=displ, y=hwy))+geom_point()

t = table(mpg$hwy)
t
ggplot(data=table, aes(x=x, y=Freq))+geom_point()
