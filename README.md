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


[link to my github flavored file](https://github.com/Radhika-ri/reproducibility/blob/main/coding_challenge_4/cpding-challenge-4.md)

## file tree ##

```r
fs::dir_tree()
```
```
├── BacterialAlpha.csv
├── Bull_richness.csv
├── IMG_6821.HEIC
├── MycotoxinData.csv
├── README.md
├── R_markdowntest.Rmd
├── R_markdowntest.html
├── R_markdowntest.md
├── R_markdowntest_files
│   └── figure-markdown_strict
│       └── pressure-1.png
├── TipsR.csv
├── class coding challenge3_adv.R
├── class_5feb.R
├── class_assignment_introToR.R
├── coding_challenge_4
│   ├── coding_challenge_4.docx
│   ├── coding_challenge_4.html
│   ├── coding_challenge_4.log
│   ├── cpding challenge 4.Rmd
│   ├── cpding-challenge-4.docx
│   ├── cpding-challenge-4.html
│   └── cpding-challenge-4.md
├── coding_challenge_4.Rmd
├── coding_challenge_4.tex
├── course.Rproj
├── cpding-challenge-4_files
│   └── figure-gfm
│       ├── 15ADON-1.png
│       ├── DON data-1.png
│       ├── Seedmass-1.png
│       └── arranging all-1.png
├── diff_abund.csv
├── intro to R.md
├── plates.jpeg
├── reflection.docx
├── reproducibility.Rproj
├── vis 2 homework.R
├── vis1 code challenge2.R
└── ~$ding_challenge_4.docx
```
