#1.a. We write code in Rscipt but it can also work in console.
# b. output will be displayed in console.
# c. in plots section, in lower right space. 
# d. global environment is the panel where the vectors and values are showed after saving. 
# e. just type help(function name) and every thing about theat function will be visible in help panel in the lower right panel. 
#f. R package is the collection of the functions, data and datasets that we can run in the rstudio. 
#g. function is the single command that we run to perform a sppecific task. 
#h. we can use installed.packages() function to know about the installed packages in specified libraries. 
#i. working directory is the current directory in which we are workiing, where R will retrieve and saves its files. we can type getwd() to find the working directory.
#j. relative file path is the relative path to workiing directory while asolute file path provides the exact root location of the file in our computer. relative file path is more reproducible as compared to absoute file path. 

#2.  1. create a new repository in your github account. 
#.  2. get the http url of that repositoty.
# 3. go to r studio, go to file and new project. go to version control and then git  and paste the http url. select the local file and click create project. 

#3. vector- it is the colection of the scalar, numeric values or other type of data. it is one dimensional.  
# dataframe is the collection of one than one type of datatypes in the form of rows and column. 
# matrix is the collection of the single type of data in form of rows and column. 






# 4. coding 
z<- 1:200
mean(z)
sd(z)
zlog<- z>30
zlog

zdf<- data.frame(z, zlog)
zdf           
colnames(zdf) <- c("zvec", "zlogic")
zdf
zdf$zsquared <- z^2
zdf$zsquared
subset.data.frame(zdf, zsquared > 10 & zsquared < 100 )
help("subset.data.frame")

zdf[zdf$zsquared > 10 & zdf$zsquared < 100, ]

zdf[26,]
zdf[180, "zsquared"]  


# 5. read.csv(Tips.csv)


