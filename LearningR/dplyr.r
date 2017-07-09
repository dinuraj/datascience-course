library(nycflights13)
library(tidyverse)

?flights  #the help is coming from the package
flights # the datatype is a tibble. It is like a dataframe

#Output of a dplyr api is always a dataframe
#the first argument of an API is always a dataframe. 

#flights tha started on jan1
fstjan <- filter(flights, day==1, month==1)


#flights that departed in nov/dec
nov_dec <- filter(flights, month == 11 | month == 12)
nov_dec
#or
nov_dec <- filter(flights, month %in% c(11,12)) 
nov_dec

filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120 , dep_delay <= 120) #this is &. Both lines are doing the same

#arrange
arrange(flights, year, month, day)
arrange(flights, desc(arr_delay))
arrange(flights, desc(dep_delay))
arrange(flights, desc(distance)) %>% select(1:5, distance) #Arrange in descending order of distance and select the first 5 columns and distance column


select(flights, year, month, day)
select(flights, tail_name=tailnum) #selects and renames only one column
rename(flights, tail_name=tailnum) #renames one column and selects everything
select(flights, time_hour, air_time, everything()) #brings time_hour and air_time to the first columns

flights_sml <- select(flights, year:day, ends_with('delay'), distance, air_time)
flights_sml

mutate(flights_sml, gain=arr_delay - dep_delay, speed = distance/air_time * 60) # adds two columns gain and speed

transmute(flights, gain=arr_delay - dep_delay, hours = air_time /60, gain_per_hour = gain/hours)  # create a new DF with new columns gain, hours, gain_per_hour


summarize(flights, delay=mean(dep_delay, na.rm=T)) #returns a DF with delay
by_day <- group_by(flights, year, month, day) #group items by year, month, day
by_day

summarize(by_day, delay=mean(dep_delay, na.rm=T)) #gives the daily departure delay

flights %>% group_by(year, month, day) %>% 
  summarise(delay = mean(dep_delay, na.rm=TRUE))
