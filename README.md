# reproducibility
<<<<<<< HEAD
#calculations 
2+2
2-2
2/2
2*2
x<- 3
y=2
x+y
x/y
# assigning names
name<- 'radhika'
seven<- '7'
seven+ x

#finding the type
class(seven)

class(x)
#concatenate function to create a vector 
vec <- c(1, 2, 6, 4, 5, 8, 7)
vec<- c(1:7)
vec <- 1:7
vec2 <- c("a", "b", "c")

vec3 <- c(TRUE, FALSE, TRUE)

vec + x 

#basic summary stats
mean(vec)  
sd(vec) 
sum(vec)  
median(vec)  
min(vec)   
max(vec) 
summary(vec)  
abs(vec) 
sqrt(vec) 
log(vec) 
log10(vec) # log base 10
exp(vec) 

#logical functions
#> greater than, < less than, | or, & and, = equals (used for assigning values from left to right), == exactly equal (for showing equality between values), >= greater than or equal, != not equal to

1 == 1 

1 == 1 | 2==2
1 == 2 & 1 == 1
1 < 2
# FINDING OBBJECTS
r <- 1:10
r[(r > 7) & (r < 9)]

r[r != 4]
r[! r == 4]

5 %in% r

mat1 <- matrix(data = c(1, 2, 3), nrow = 3, ncol = 3)

 mat2 <- matrix (data= c("a", "b", "c"), nrow = 3, ncol= 3)
mat2
# creating dataframes 
df <- data.frame(mat1[,1], mat2[,1])
df
 colnames(df) <- c("value", "name")# for changing the column names
df



##----indexing------##
vec2[3]
mat1[5]
mat1[1, 3] 
mat1
df[1, ]
df
df[, "value"]

df$value
df$name[2]

df$value[df$name == "b"]
df[df$name == "b",]
subset(df, name == "b")
df$log_value <- log(df$value)
df

#installing packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("purrr")

# geting workiing directory
getwd()

=======

this is my assignment. 
wrie
gagj



