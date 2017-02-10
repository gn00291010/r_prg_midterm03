##ggplot2
#直方圖
ggplot(cars, aes(x = speed, y = dist))+
  geom_point() +  #散布圖
  ggtitle("Car speed vs. braking distance") +
  xlab("Speed") +
  ylab("Dist") +
  geom_smooth(method = "lm") 

# assign ggplot to an object
scatter_gg <- ggplot(cars, aes(x = speed, y = dist))
scatter_gg + geom_point() + geom_smooth() #預設為loess

#上色 by species
str(iris)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  ggtitle("Sepal.Length vs. Sepal.Width") +
  xlab("Sepal length") +
  ylab("Sepal width")

#線圖
ggplot(economics, aes(x = date, y = unemploy/pop)) + 
  geom_line()

#直方圖
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram() + 
  facet_wrap(~ Species) + #用每種各畫一個 加入 ncol = 1 垂直展開
  stat_bin(bins = 15)

#盒鬚圖
ggplot(iris, aes(x = "", y = Sepal.Length)) +
  geom_boxplot()+
  xlab("Boxplot")

#長條圖
ggplot(mtcars, aes(x = row.names(mtcars), y = hp)) +
  geom_bar(stat = "identity") + #stat = "identity" 可以呈現數值 
  coord_flip() #xy反轉

ggplot(mpg, aes(x = class)) + 
  geom_bar(aes(fill = drv)) #aes(fill = drv) 納入類別變數的顏色

ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv), position = "dodge") #改成非累積圖

ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv), position = "fill") + #改成比率圖
  ylab("Percentage")