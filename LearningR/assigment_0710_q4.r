require(ggplot2)
?mpg
head(mpg)
class(mpg)
str(mpg)

#a. A single quantitative variable. 
#frequency table of mileage.
t = table(mpg$hwy)
freq_t = as.data.frame(t)
colnames(freq_t) <- c("Mileage", "Frequency")
ggplot(data=freq_t, aes(x=Mileage, y=Frequency)) + geom_col()

#b. Relationship between any two quantitative variables
#Relationship between mileage and displacement.
ggplot(data=mpg, aes(x=displ, y=hwy))+geom_point()

#c. A single qualitative variable
#distribution of cars with respect to drive
t1 = table(mpg$drv)
freq_t1 = as.data.frame((t1))
colnames(freq_t1) <- c("Drive", "Frequency")
ggplot(data=freq_t1, aes(x=Drive, y=Frequency)) + geom_col()

#d. Relationship between any two qualitative variables
#Relationship between class and drive 
ggplot(data=mpg, aes(x=class, y=drv))+geom_jitter()

#e.     A quantitative variable and a qualitative variable . 
#Average mileage of each class of vehicle. 
ggplot(data=mpg, aes(x=class, y=hwy))+geom_jitter()
