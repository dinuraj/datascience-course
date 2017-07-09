#df_assignment_jul10
# Convert Icons into a data frame with 2 columns: name and yob using the following ideas :
#   
#   a.     For loop
# 
#   b.     Lapply
# 
#   c.      Sapply
# 
# Icons<- c("Sachin Tendulkar:1973",
#           
#           "Brian Lara:1969",
#           
#           "Virat Kohli:1988",
#           
#           "AB De Villiers:1984")

Icons<- c("Sachin Tendulkar:1973",
          
          "Brian Lara:1969",
          
          "Virat Kohli:1988",
          
          "AB De Villiers:1984")

)

####### Using a for loop ####
#initialize two vectors to hold the name and yobs
icon_names = NULL
icon_yobs = NULL
for (i in Icons) {
  #split the string with ':'. It returns a list with two elements, name and yob 
  icon <- strsplit(i, ":") 
  #insert the name into icon_names vector and yob into icon_yobs vector
  icon_names <- append(icon_names, icon[[1]][1])
  icon_yobs <- append(icon_yobs, icon[[1]][2])
}

#create a data_frame with two names columns with above two vectors
df_for_loop = data.frame(name=icon_names, yob=icon_yobs)
df_for_loop

########## using Lapply #####

#Function to get the name from the string element
func_icon_name <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][1])
}

#Function to get the yob from the string element
func_icon_yob <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][2])
}

#lapply to get the list of names
icon_name_list <- lapply(Icons, func_icon_name)
icon_name_list

#lapply to get the list yobs
icon_yob_list <- lapply(Icons, func_icon_yob)
icon_yob_list

#create a data_fram with two name columns
df_lapply = data.frame(name=unlist(icon_name_list), yob=unlist(icon_yob_list))
print(df_lapply)


########## using Lapply #####
func_icon_name <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][1])
}

func_icon_yob <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][2])
}

icon_name_list <- lapply(Icons, func_icon_name)
icon_name_list

icon_yob_list <- lapply(Icons, func_icon_yob)
icon_yob_list

#create a data_fram with two name columns
df_lapply = data.frame(name=unlist(icon_name_list), yob=unlist(icon_yob_list))
print(df_lapply)

########## using Sapply #####
func_icon_yob <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][2])
}
func_icon_yob <- function(x) {
  i = strsplit(x, ":")
  return(i[[1]][2])
}

icon_name_list2 <- sapply(Icons, func_icon_name)
icon_name_list2

icon_yob_list2 <- sapply(Icons, func_icon_yob)
icon_yob_list2

#create a data_fram with two name columns
df_sapply = data.frame(name=unlist(icon_name_list2), yob=unlist(icon_yob_list2))
#remove the row_names
rownames(df_sapply) <- NULL
df_sapply
