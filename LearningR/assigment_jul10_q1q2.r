
df_bugs <- read.csv("business_case.csv", header=TRUE, stringsAsFactors = FALSE)
head(df)

#1a . For loop  on Vector
Engineers <- df_bugs$Engineer
for ( eng in Engineers) {
  print(eng)
}

#1b For loop on Matrix
engMatrix <- matrix(Engineers, nrow = 2)
engMatrix

for ( engM in engMatrix) {
  print (engM)
}

#1c For loop on DataFrame
#print the first observation by going over the dataframe
for (column in df_bugs) {
  print(column[[1]])
}

#1d for loop on list
#get the unique reviewers from the data_frame
Reviewers_list <- df_bugs$Reviewers
Reviewers <- list()
for (rl in Reviewers_list) {
  r_str_list = strsplit(rl, ",")
  for (r2 in r_str_list[[1]]) {
    r2 <- gsub(" ","",r2) #remove whitespace
    if (!(r2 %in% Reviewers)) {
      Reviewers <- append(Reviewers, r2)
    }
  }
}

Reviewers
for (eng in Reviewers) {
  print (eng)
}


#2a while loop on Vector
Engineers <- df_bugs$Engineer
i <- 1
while ( i <= length(Engineers)) {
  print(Engineers[i])
  i <- i+1
}

#2b while loop on Matrix
engMatrix <- matrix(Engineers, nrow = 2)
engMatrix
#print only the first column of the matrix
i <- 1
while ( i <= dim(engMatrix)[1]) {
  print (Engineers[i])
  i <- i+1
}

#2c while loop  on DataFrame
#print the first observation by going over the dataframe
no_col <- length(df_bugs)
no_col

i <- 1
while ( i <= no_col) {
  print(df_bugs[[i]][[1]])
  i <- i+1
}

#2b while loop on list

bugs <- df_bugs$X...BugID
bugs
bugs_l <- as.list(bugs)
bugs_l
i <- 1
while ( i <= length(bugs_l)) {
  print (bugs_l[[i]])
  i <- i+1
}
