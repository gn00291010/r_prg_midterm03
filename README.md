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


*必須*要更新教室電腦的 RStudio 版本。

**必須**要更新教室電腦的 RStudio 版本。

**必須**要更新教室電腦的 RStudio 版本。

# 使用 ggplot2

## 散佈圖

## 直方圖

## 長條圖

- 圖形的種類：
    - 散佈圖
    - 直方圖
    - 長條圖

## 寫程式

在段落中寫程式 `plot(cars)`。

### 散佈圖

```{r}
library(ggplot2)
ggplot(cars, aes(x = speed, y = dist)) +
  geom_point()
```

## 載入 `plotly` 套件

```{r message=FALSE}
library(plotly)
```

## 顯示 `cars` 的前六個觀測值

```{r results='hide'}
head(cars)
```

## 參考連結

- [knitr](https://yihui.name/knitr/)
- [RMarkdown](http://rmarkdown.rstudio.com/)

## 放一張圖片

![r superman](https://www.safaribooksonline.com/library/view/the-art-of/9781593273842/httpatomoreillycomsourcenostarchimages915868.png.jpg)



## 引用一段話

> “My mama always said, ‘Life was like a box of chocolates. You never know what you’re gonna get.’” – Forrest Gump

## 水平分隔線

---

## 我最喜歡的樂團（表格）

|樂團名|主唱|
|------|----|
|Beyond|黃家駒|
|The Beatles|John Lennon|




