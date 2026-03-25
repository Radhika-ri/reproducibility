# 1.

writing your own functions and iterations helps in reducing the error
that might occur during copy and pasting the code. it makes our work
more reproducible and makes it easier for someone else to understand.

# 2.

1.  we just have to use the function(). define it by the name we wanted
    to use our function followed by {} in which we write the formula
    that will be used everytime the name of the defined function is
    used. return will help in returning the value.

2.  for the loop, for() is used, in which we define the sequence on
    which we wanted to apply the code. it is followed by print where
    values are returned in the form of vector, list or dataframe.

# 3., 4 and 5.

    cities<- read.csv("Cities.csv")

    distance <- function(lat1, lon1, lat2, lon2){
      # convert to radians
    rad.lat1 <- lat1 * pi/180
    rad.lon1 <- lon1 * pi/180
    rad.lat2 <- lat2 * pi/180
    rad.lon2 <- lon2 * pi/180
    # Haversine formula
    delta_lat <- rad.lat2 - rad.lat1
    delta_lon <- rad.lon2 - rad.lon1
    a <- sin(delta_lat / 2)^2 + cos(rad.lat1) * cos(rad.lat2) * sin(delta_lon / 2)^2
    c <- 2 * asin(sqrt(a))
    # Earth's radius in kilometers
    earth_radius <- 6378137
    distance_km <- (earth_radius * c)/1000
    return(distance_km)
    }

    # 5.  distance between new york city and auburn

    auburn<- cities$lat[cities$city== "Auburn"]

                     

    distance(
      lat1= cities$lat[cities$city== "Auburn"], 
      lon1 = cities$long[cities$city== "Auburn"], 
      lat2 = cities$lat[cities$city== "New York"],
      lon2 = cities$long[cities$city== "New York"]
    )

    ## [1] 1367.854

# 6.

    all_cities<- distance(
      lat1= cities$lat[cities$city== "Auburn"], 
      lon1 = cities$long[cities$city== "Auburn"],
      lat2 = cities$lat,
      lon2 = cities$long
    )

    all_cities

    ##  [1] 1367.8540 3051.8382 1045.5213  916.4138  993.0298 1056.0217 1239.9732
    ##  [8]  162.5121 1036.9900 1665.6985 2476.2552 1108.2288 3507.9589 3388.3656
    ## [15] 2951.3816 1530.2000  591.1181 1363.2072 1909.7897 1380.1382 2961.1199
    ## [22] 2752.8142 1092.2595  796.7541 3479.5376 1290.5492 3301.9923 1191.6657
    ## [29]  608.2035 2504.6312 3337.2781  800.1452 1001.0879  732.5906 1371.1633
    ## [36] 1091.8970 1043.2727  851.3423 1382.3721    0.0000

    dataframe<- NULL
    unique_cities = unique(cities$city)
    for (i in seq_along(unique_cities)){
      lat_city = cities$lat[cities$city==unique_cities[[i]]]
      long_city = cities$long[cities$city == unique_cities[[i]]]
      distance_i <- distance(cities$lat[cities$city== "Auburn"], cities$long[cities$city== "Auburn"],lat_city, long_city)
      table <- data.frame(unique_cities[[i]], "Auburn", distance_i)
     dataframe<- rbind.data.frame(dataframe, table) 
    }

    dataframe

    ##    unique_cities..i.. X.Auburn. distance_i
    ## 1            New York    Auburn  1367.8540
    ## 2         Los Angeles    Auburn  3051.8382
    ## 3             Chicago    Auburn  1045.5213
    ## 4               Miami    Auburn   916.4138
    ## 5             Houston    Auburn   993.0298
    ## 6              Dallas    Auburn  1056.0217
    ## 7        Philadelphia    Auburn  1239.9732
    ## 8             Atlanta    Auburn   162.5121
    ## 9          Washington    Auburn  1036.9900
    ## 10             Boston    Auburn  1665.6985
    ## 11            Phoenix    Auburn  2476.2552
    ## 12            Detroit    Auburn  1108.2288
    ## 13            Seattle    Auburn  3507.9589
    ## 14      San Francisco    Auburn  3388.3656
    ## 15          San Diego    Auburn  2951.3816
    ## 16        Minneapolis    Auburn  1530.2000
    ## 17              Tampa    Auburn   591.1181
    ## 18           Brooklyn    Auburn  1363.2072
    ## 19             Denver    Auburn  1909.7897
    ## 20             Queens    Auburn  1380.1382
    ## 21          Riverside    Auburn  2961.1199
    ## 22          Las Vegas    Auburn  2752.8142
    ## 23          Baltimore    Auburn  1092.2595
    ## 24          St. Louis    Auburn   796.7541
    ## 25           Portland    Auburn  3479.5376
    ## 26        San Antonio    Auburn  1290.5492
    ## 27         Sacramento    Auburn  3301.9923
    ## 28             Austin    Auburn  1191.6657
    ## 29            Orlando    Auburn   608.2035
    ## 30           San Juan    Auburn  2504.6312
    ## 31           San Jose    Auburn  3337.2781
    ## 32       Indianapolis    Auburn   800.1452
    ## 33         Pittsburgh    Auburn  1001.0879
    ## 34         Cincinnati    Auburn   732.5906
    ## 35          Manhattan    Auburn  1371.1633
    ## 36        Kansas City    Auburn  1091.8970
    ## 37          Cleveland    Auburn  1043.2727
    ## 38           Columbus    Auburn   851.3423
    ## 39              Bronx    Auburn  1382.3721
    ## 40             Auburn    Auburn     0.0000

    colnames(dataframe) <- c("City1", "City2", "Distance_Km")
    dataframe

    ##            City1  City2 Distance_Km
    ## 1       New York Auburn   1367.8540
    ## 2    Los Angeles Auburn   3051.8382
    ## 3        Chicago Auburn   1045.5213
    ## 4          Miami Auburn    916.4138
    ## 5        Houston Auburn    993.0298
    ## 6         Dallas Auburn   1056.0217
    ## 7   Philadelphia Auburn   1239.9732
    ## 8        Atlanta Auburn    162.5121
    ## 9     Washington Auburn   1036.9900
    ## 10        Boston Auburn   1665.6985
    ## 11       Phoenix Auburn   2476.2552
    ## 12       Detroit Auburn   1108.2288
    ## 13       Seattle Auburn   3507.9589
    ## 14 San Francisco Auburn   3388.3656
    ## 15     San Diego Auburn   2951.3816
    ## 16   Minneapolis Auburn   1530.2000
    ## 17         Tampa Auburn    591.1181
    ## 18      Brooklyn Auburn   1363.2072
    ## 19        Denver Auburn   1909.7897
    ## 20        Queens Auburn   1380.1382
    ## 21     Riverside Auburn   2961.1199
    ## 22     Las Vegas Auburn   2752.8142
    ## 23     Baltimore Auburn   1092.2595
    ## 24     St. Louis Auburn    796.7541
    ## 25      Portland Auburn   3479.5376
    ## 26   San Antonio Auburn   1290.5492
    ## 27    Sacramento Auburn   3301.9923
    ## 28        Austin Auburn   1191.6657
    ## 29       Orlando Auburn    608.2035
    ## 30      San Juan Auburn   2504.6312
    ## 31      San Jose Auburn   3337.2781
    ## 32  Indianapolis Auburn    800.1452
    ## 33    Pittsburgh Auburn   1001.0879
    ## 34    Cincinnati Auburn    732.5906
    ## 35     Manhattan Auburn   1371.1633
    ## 36   Kansas City Auburn   1091.8970
    ## 37     Cleveland Auburn   1043.2727
    ## 38      Columbus Auburn    851.3423
    ## 39         Bronx Auburn   1382.3721
    ## 40        Auburn Auburn      0.0000
