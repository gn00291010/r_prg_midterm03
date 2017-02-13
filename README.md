## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/gn00291010/r_prg_midterm03/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/gn00291010/r_prg_midterm03/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.


---
title: "TEST"
author: '123'
date: "2017年2月13日"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

---
title: "midtermwork003"
author: "林舜禾"
date: "2017年2月10日"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r  message=FALSE}
library(plotly)
```

#散布圖
```{r}
library(ggplot2)
ggplotly(
  ggplot(cars, aes(x = speed, y = dist))+
  geom_point() +  #散布圖
  ggtitle("Car speed vs. braking distance") +
  xlab("Speed") +
  ylab("Dist") +
  geom_smooth(method = "lm") 
  )
```

#線圖
```{r}
ggplotly(
  ggplot(economics, aes(x = date, y = unemploy/pop)) + 
  geom_line()
  )
```

#直方圖
```{r}
ggplotly(
  ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth=0.6) + 
  facet_wrap(~ Species)  #用每種各畫一個 加入 ncol = 1 垂直展開
)
```

#盒鬚圖
```{r}
ggplotly(
  ggplot(iris, aes(x = "", y = Sepal.Length)) +
  geom_boxplot()+
    xlab("Boxplot")
)
```

#長條圖
```{r}
ggplotly(
  ggplot(mtcars, aes(x = row.names(mtcars), y = hp)) +
  geom_bar(stat = "identity") + #stat = "identity" 可以呈現數值 
  coord_flip() #xy反轉
)
ggplotly(
  ggplot(mpg, aes(x = class)) + 
  geom_bar(aes(fill = drv)) #aes(fill = drv) 納入類別變數的顏色
)
ggplotly(
  ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv), position = "dodge") #改成非累積圖
)

ggplotly(
  ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv), position = "fill") + #改成比率圖
  ylab("Percentage")
)
```
