intvec <- c (5,3,6,8,10,2)
sort(intvec)
order(intvec)
rank(intvec)

?order

intvec2 <- c(25,22,18,30,14,30,22,10,22,30)

tab  <- table(intvec2)
tab

m <- max(tab)
n <- names(tab)

as.integer(n[tab == m])
u = unique(intvec2)
u
mat = match(intvec2, u)

t1 = table(mat)
t1
m1 = max(t1)
m1
u[t1 == m1]


list1 = list(one=c(1,2), two=T, three=c("a", "b", "c"))
list1
str(list1)
list1["one"]
list1$one


list1[[1]]


(function(x) {3*x+2})(1)


func2 <-function(a,b) {
  print(a+b)
  print(a*b)
}

func2()
func2(1)
func2(1,2)


func4 <- function(a=1, b=2, ...) {
  print(a+b)
  print(a*b)
}

func4(1,2,)
func4(1,2,3)

func5 <- function(a=10, b=5, ...) {
  addab <<- a+b # Global variable
  print(addab)
}

func5()


df = data.frame (
    v1= c(1:100),
    v2 = c(101:200),
    v3 = c(201:300)
)
str(df)

head(df)
tail(df)
summary(df)

func6 <- function(df, fun=mean, ...) {
  for (i in 1: length(df)) {
    print(fun(df[[i]]))
  }
}
func6(df)
df$v1[1] = NA
func6(df, na.rm=T)

func7 <- function(df, fun=mean, ...) {
  for (i in 1: length(df)) {
    print(fun(df[[i]], ...)) # the arguments of func6 are passed to fun
  }
}
func7(df, na.rm=T)


?sapply
?lapply


sapply(df, mean, na.rm=T) # simplify apply- returns an array
lapply(df, mean, na.rm=T) # returns a list
sapply(df, mean, na.rm=T, simplify = F, USE.NAMES = F) # same as lapply

findlibloc <- function(x) 
{
  packloc <-  find.package(x)
  inter1 <- strsplit(packloc, split="/")
  print (packloc)  
  print(inter1)
  len= length((inter1[[1]]))
  inter2 = inter1[[1]][-len]
  print(inter1)
  dirloc = paste(inter2, collapse="/")
  return(dirloc)
}

?paste
g = findlibloc("ggplot2")
g

iris <- iris
head(iris)
summary(iris)
summary(iris$Species)
sp = unique(iris$Species)
sp
for (i in sp) 
{
  print(i)
  print(mean(iris[iris$Species == i,]$Sepal.Length))
}

?tapply

tapply(iris$Sepal.Length, iris$Species, mean) # returns an array
aggregate(Sepal.Length~Species, data=iris, mean) # << Need to explore #returns a dataframe

df1 = data.frame(first=c(1:4), second=c(6:9), third=c("one","two", "three", "four"), stringsAsFactors = F)
df1

f = lapply(df1,nchar)
f

fl = unlist(f)
fl

