
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
Engineers <- df_bugs$Engineer
Engineers
Reviewers_list <- df_bugs$Reviewers
Reviewers <- list()
for (rl in Reviewers_list) {
  r_str_list = strsplit(rl, ",")
  for (r2 in r_str_list[[1]]) {
    print (r2)
    if (!(r2 %in% Reviewers)) {
      Reviewers <- append(Reviewers, r2)
    }
  }
}

r_str_list

engList <- list(Engineers)
engList
length(engList)
for (eng in engList) {
  print (eng)
}

