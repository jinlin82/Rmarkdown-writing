---
title: "软件相关操作"
author: "Jin's students"
date: "2019-03-03"
output:
  bookdown::html_document2:
    number_sections: true
    seq_numbering: true
    fig_caption: true
    highlight: haddock
    theme: null
    md_extensions: +east_asian_line_breaks
    keep_md: true
    toc: true
    pandoc_args: ["--filter", "pandoc-crossref", "-M", "eqnPrefix="]
  bookdown::word_document2:
    fig_caption: true
    reference_docx: ./style/word-styles-02.docx
    md_extensions: +east_asian_line_breaks
    pandoc_args: ["--filter", "pandoc-crossref"]
  bookdown::pdf_document2:
    keep_tex: yes
    toc: false
    latex_engine: xelatex
    md_extensions: +east_asian_line_breaks
    pandoc_args: ["--listing", "--filter", "pandoc-crossref"]
css: ./style/markdown.css
autoEqnLabels: true
eqnPrefixTemplate: ($$i$$)
linkReferences: true
bibliography: Bibfile.bib
csl: ./style/chinese-gb7714-2005-numeric.csl
link-citations: true
---

**TODO**

- [x] 表格出不来
- [x] Bib文件如何整理
- [X] 把1、等改成1. ，以变成 markdown list
- [X] bibtexkey设置.png 调整


# 软件准备
## 软件列表

1. Rstudio 1.2 版本以上 [下载网址](https://www.rstudio.com/products/rstudio/download/preview/) 和 R 3.5.1 （必备）
2. Pandoc 2.7 版本 和 pandoc-crossref（必备）
3. Git （必备）
4. GitHub 网站账号 （必备）
5. Jabref(需要 jre 支持)
6. mathtype
7. equalx（需要 texlive 支持）
8. rapidee（用于修改环境变量）

## Windows中更改环境变量

环境变量一般是指在操作系统中用来指定操作系统运行环境的一些参数，当运行某程序时，除了在当前文
件夹中寻找外，还会到设置的默认路径中去查找。更改环境变量就是设置"Path"。下面对修改环境变量作
简单介绍。

1. 右击"我的电脑"，选择属性，找到并打开"高级系统配置"，找到"环境变量"按钮并点击。
2. 环境变量窗口中有两个变量，一个是当前所使用用户独有的环境变量，另一个是所有用户都可以访问的
系统变量。私人电脑若不设置新用户，二者都可以。在系统变量显示框中找到变量Path,选中并点击修改即可。
3. 修改完毕之后全部点击确定，以保存修改的内容。一个路径与另一个路径之间要用分号隔开。
4. 可以使用 rapidee 程序方便更改环境变量

## 安装pandoc

1. 下载2.7版本pandoc
2. 下载pandoc-crossref [下载网站](https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.4.0d/windows-x86_64-pandoc_2.7.zip)
3. 将解压出来的 pandoc.exe, pandoc-citeproc.exe, pandoc-crossref.exe 拷贝替换到 rstudio 
   安装文件夹里面的 `bin\pandoc\` 文件夹里面（确认这个文件夹含有pandoc.exe）
4. 重启rstudio，重新生成html文件和docx文件，该文件支持公式编号。

## 安装Git程序并设置环境变量

按照Windows中更改环境变量的步骤，在"Path"中将Git文件夹下的bin所在路径添加到后面即可，注意路径之
间用分号隔开。

# GitHub相关操作
## 注册

网页操作https://github.com



## GitHub嵌入Rstudio中需要做的工作
### Rstudio中设置

在Rstudio中菜单栏点击Tools→Global Options，在弹出的对话框左边一栏点击Git/SVN，
在Git executable中输入git.exe所在路径，点击ok

按下快捷键win+R，在弹出的窗口中输入CMD，之后在弹出的窗口中输入：

	git config --global user.email "380906952@qq.com"
	git config --global user.name "Zeng Yuanzheng"

（注：引号里改为自己的邮箱和名字，名字用汉语拼音写）


## 克隆项目：如何在Rstudio中克隆项目

1. 在Rstudio中，点击file→new project→version control→git，在弹出的对话框中，
   Repository URL输入项目链接，
2. Project directory name输入项目名字（一般写入项目链接后会自动生成），Create
   project as subdirectory of中输入自己电脑上要把项目保存的位置，点击Create
   Project，项目创建完毕。
3. 之后会在Rstudio右下角显示出项目里的所有内容。

## 合作者步骤

1. repository owner向合作者发出邀请（repository setting）
2. 被邀请者在网页（https://github.com/username/reponame/invitations) 接受邀请，成为合作者
（注：uername为帐户名，reponame为项目名）
3. 合作者clone 项目到本地repository
4. 打开项目中的.Rmd，对文件中的内容进行修改（Modified），修改完之后点击保存（Save），在git图标下
点击commit，在弹出的窗口中，左上角勾选刚刚修改的Rmd文件，右上角登记(Stage)修改的内容（比如，在Rmd中修改
了图片，写入modify figures即可），点击commit，之后push，即完整步骤为：
```
修改(Modify) -> 保存(save) -> 登记(stage) -> 提交(commit) -> 上传(push)
```

5. 重新开始工作时，在git图标中点击pull，到最新版本
6. 如果push的时候，remote已经修改，两个修改不一致则会产生冲突，这时需要重新pull并手工解决冲突后
再按照push步骤提交（此时，pull的最新版本会出现“<<<<<< ====== >>>>>>”这三个符号标记的内容，
解决冲突可以同时保留其他内容，此时只需将这三个符号及其后面紧跟的内容删掉即可）

注：

1. 在编写Rmd时，要使用相对路径，不能使用绝对路径，因为绝对路径只有在自己电脑上才可以运行，
相对路径大家都可以运行。
2. 在编写markdown时，需要手动换行，大概80个字符或40个汉字左右的时候可以换一行，编辑窗口
左下角可以看到字符数，碰到标点符号或者行内公式，保持在一行。
3. 每次提交之前切忌把全部内容剪切复制，否则无法知晓真正改动内容。

## 创建项目：把本地文件夹用git控制并push到Github的步骤

1. 使用Github网页操作：网页中建立项目。把需要版本控制的文件上传到项目中，然后再
   把项目clone到文件夹中。
2. 使用git命令操作，可以在Terminal运行git命令。

# 写作准备

每次写之前，以上头文件是不变的，表示设定了具体的环境和规则，只能改变title、author和date。

```
---
title: "软件相关操作"
author: "Jin's students"
date: "2019-03-03"
output:
  bookdown::html_document2:
    number_sections: true
    seq_numbering: true
    fig_caption: true
    highlight: haddock
    theme: null
    md_extensions: +east_asian_line_breaks
    keep_md: true
    toc: false
    pandoc_args: ["--filter", "pandoc-crossref", "-M", "eqnPrefix="]
  bookdown::word_document2:
    fig_caption: true
    reference_docx: ./style/word-styles-02.docx
    md_extensions: +east_asian_line_breaks
    pandoc_args: ["--filter", "pandoc-crossref"]
  bookdown::pdf_document2:
    keep_tex: yes
    toc: false
    latex_engine: xelatex
    md_extensions: +east_asian_line_breaks
    pandoc_args: ["--listing", "--filter", "pandoc-crossref"]
css: ./style/markdown.css
autoEqnLabels: true
eqnPrefixTemplate: ($$i$$)
linkReferences: true
bibliography: Bibfile.bib
csl: ./style/chinese-gb7714-2005-numeric.csl
link-citations: true
---
```

参考文献部分也是不变的：
```
# 参考文献
[//]: # (\bibliography{Bibfile})
```

注：

1. 每次写作之前，.Rmd、.yml和style文件及其里面所有的文件都要放在一起，
.yml和style文件夹可以从老的项目中拷过来。
2. 参考文献中Bibfile与头文件中的bibliography:Bibfile.bib中的Bibfile对应，
需要自己建立Bibfile.bib文件，与其他所有文件放在一起。
3. 开头固定格式

```r
knitr::opts_knit$set(root.dir = getwd())
knitr::opts_chunk$set(echo = FALSE, results = 'hide')
knitr::opts_chunk$set(warning = FALSE, message=FALSE)
```

```r
rm(list=ls())
options(digits=4)
options(scipen=100)
graphics.off()
Sys.setlocale("LC_ALL", "Chinese")
```

主要内容包含：设置路径、设置中文显示问题，但加载包放在后面具体实施部分，不需要放在此处


# 文本注意事项
1. 注意区分数字0和字母o，数字 1 和 字母 l，特别在数学公式中,如 `$$\begin{array}{l}`
2. 文件路径一律使用 `/`, 不要使用 `\\`
3. **摘要** 表示“摘要”加粗, *李研* 表示“李研”斜体
4. \# 实证分析表示一级标题，且#和引言之间有一个空格, \#\# 数据准备 表示二级标题,
   \#\#\# 数据及数据来源 表示三级标题,······, \#\#\#\#\#\# 最多六个#，表示最小的
   字体 
5. 一对美元符号 ` $x$ ` 表示行内公式，左右各空一格,  `$$x+y$$` 两对美元符号表示
   行间公式，可以往后空一行再进行写作
6. 像ln、exp这些都是特定命令，不要直接敲，要用`\ln`等
7. 文章中的变量名不要用斜体，比如gdp，要写`\text{gdp}`
 
# 代码注意事项
 
1. \`r `表示行内计算，直接输入计算公式即可出结果
2. 代码块

` ```{r eval=T,echo=F,error=T,warning=F,message=FALSE,comment="",results='asis'} `

` ``` `

上述表示写R代码，error=T表示可以存在错误，warning=F表示不要警告信息，message=F表示不要警告信
息，comment=”“表示不出现警告信息

3. `dev=c('png', 'CairoPDF')` #执行pdf时输出图片，图片名可以是中文，不会报错，但只能用于pdf，
在最开的` ```{r }``` `中加，下面代码中的画图参数要写`family="SimSun"`，表示字体为宋体，执行结
果是文字，高清图`dev=c('png')`#执行任何文件都可以加上，但是只能输出图片，不是文字，会模糊
4. 引用参考文献一共加四句话： 
```
csl: chinese-gb7714-2005-numeric.csl #文件（固定格式）
bibliography: baidu.bib #文件（baidu.bib可以改，改成自己参考的文献）自己构建的，是文本文件
# 参考文献
[//]: # (\bibliography{new}) #放在结尾，表示参考文献，new可根据自己的名称修改
```
文章中的上标[1]用[@ ] #空格用notepad++打开.bib文件中的文章复制粘贴, .bib文件自己在百度学术中
搜索，导出为.bib文件

5. `data.frame(a1,a2,a3)`#支持不同类型数据，数值部分不会转化成文本，仍然是数值，可以控制小数
点位数;	`cbind(a1,a2,a3)`#支持同类型的数据，cbind执行的结果如果在有文字的前提下都会转化文本
6. 只提取代码： 


```r
#library(knitr)
#setwd(“path”) ##.rmd所在的路径,具体使用时换为包含你的RMD文件的文件夹 
#purl("stata.rmd", encoding="utf-8") ##stata具体使用时换为要用的RMD文件名,这样可以导出所有rmd里面的程序
```
7. `kable` 用来制作表格，可以在里面给表格增加名称等（需要加载knitr包）
8. 行间公式编号例子
$$y=ax+b$$ {#eq:model1}
在[@eq:model1] 中，引用上述格式即可自动编号。
9. 图表编号例子


Table: (\#tab:tab1)指标体系明细表

维度       指标名称           变量名称    数据来源       
---------  -----------------  ----------  ---------------
解释变量   碳价格             DealPrice   碳交易网       
宏观经济   碳效率指数         TanChange   中证指数       
           上证指数涨跌幅     SHChange    巨灵金融       
           道琼斯指数涨跌幅   DJChange    巨灵金融       
能源价格   德克萨斯原油价格   WTI         巨灵金融       
           埃克天然气价格     ECO         巨灵金融       
           纽卡斯尔煤炭价格   NEWC        巨灵金融       
           天然气价格         Gas         金投网         
           煤炭价格           Coal        同花顺         
气候环境   极端天气           ExWeather   天气网         
           空气质量指数       AQI         CSMAR          
国际市场   核证减排量         CER         欧洲能源交易所 
           汇率变动率         ExChange    巨灵金融       

在表\@ref(tab:tab1)中，即可在输出的文档中显示表的序号。此处\@ref(tab: )是固定的，
tab1根据自己上面程序中```{r tab1}中r后的tab1确定名称

图编号与之类似，也为\@ref(fig:fig1)。本文档输出显示不出具体编号，是因为没有图表输入

# 编码注意事项

1. 程序、路径、文件名少用中文，要用UTF-8编码
2. 行间公式后空一行，行内公式、代码前后各空一格（行）
3. worktools文件包含内容：everything notepad++ rstudio telive PathEditor 两个环境变量
4. 尽量将程序的路径单独用一个变量表示出来，放在最前面
5. 不要轻易尝试直接在rstutio中复制，先复制到notepad++（**只支持文本**）再复制
6. 文件备份：default .tex
7. 三个软件链接：
   1. https://elearningindustry.com/12-best-free-online-bibliography-and-citation-tools
   2. http://www.jabref.org/
   3. http://download1.rstudio.org/RStudio-0.99.903.zip

# Bib文件如何整理
## 参考文献管理软件 Jabref
### 功能
    1. 能够导入其他格式参考文献文件为bib
    2. 自动生成 key
    3. 排序，查看等
### 安装
    1. 保证电脑上存在 Java 虚拟机 JRE 1.8 版本以上，移动版时设置 java 环境变量
    2. 可 portable 使用
    3. 下载Jabref
### 知网文献导入步骤
    1. 知网查找文献后导出为 Endnote格式（.txt文件），见图 \@ref(fig:fig1) 。(注：不要复制到剪贴板以后再新
    建txt文件，这样导入到jabref后会乱码；通过txt文件可以同时导入多条参考文献)
    
<div class="figure">
<img src="./results/zhiwang.png" alt="知网"  />
<p class="caption">(\#fig:fig1)知网</p>
</div>

    2. Jabref Import 选择默认(所有格式)
    3. remove duplicates
    4. 选择所有条目， 自动生成 bibtex key, 保存bib文件
### Jabref操作

在Jabref导入包含参考文献的txt文件后，可以根据个人需要进行相关设置。

1. 点击左上角的"File-New bibtex library"即可建立新的bib文件。
2. 下载的Jabref文件是英文版的，可通过option-preference-general将Jabref环境设置为中文，即language
右侧框中将E"nglish"改为"simplified Chinese",如图 \@ref(fig:fig2) 所示。此步骤可忽略。

<div class="figure">
<img src=".\results\language.png" alt="语言设置"  />
<p class="caption">(\#fig:fig2)语言设置</p>
</div>

3. 设置bibtexkey: bibtexkey是文献条目的标识，每篇文献都有唯一的bibtexkey;打开options菜单的preference,
点击弹出窗口左边的"bib tex key generator"，在第一项"default pattern"可以设置bibtexkey,图 \@ref(fig:fig3) 
显示设置 `[auto][Year]` ,分别表示”第一作者-年”。

<div class="figure">
<img src=".\results\bibtexkey设置.png" alt="bibtexkey设置"  />
<p class="caption">(\#fig:fig3)bibtexkey设置</p>
</div>

4. 设置文献题录的显示：图 \@ref(fig:fig4) 显示了该bib文件的文献题录，即图中红色框所示内容，为了使界面
表格简洁，可通过options-preference-entry table columns适当删掉不必要的选项，如图 \@ref(fig:fig5) 所示，
如要删掉journal,只需选中"journal"框以后点击右侧的"-"即可，同样点击"+"也可增加题录显示内容。

<div class="figure">
<img src=".\results\文献题录.png" alt="文献题录"  />
<p class="caption">(\#fig:fig4)文献题录</p>
</div>

<div class="figure">
<img src=".\results\文献题录显示设置.png" alt="文献题录显示设置"  />
<p class="caption">(\#fig:fig5)文献题录显示设置</p>
</div>

5. 相关设置完成之后，点击菜单栏中的"+"即可新增一条记录，出现图 \@ref(fig:fig6) 所示的对话框，下面以增加
"加权马尔科夫AR_GARCH_GED模型在降水量中的预测"为例，进行说明，由于该文章属于期刊论文，故选择"Article",
点击generate进入到下一步,如图 \@ref(fig:fig7) 所示分别输入作者，题目，期刊，年份之后，jabref界面就会
出现图 \@ref(fig:fig8) 中对应的文章，也可以直接点击"{}Bibtex source",将图 \@ref(fig:fig9) 中内容直接复制
到其对应的条框中,pages信息在optional fields选项下填写。（注：在百度学术搜索出文章以后，点击"引用-bibtex"，
即可出现如图 \@ref(fig:fig9)所示的内容；英文文献可用链接"https://www.bing.com/academic?mkt=zh-CN&mkt=zh-CN"
进行搜索，搜索成功以后点击"Download citation"即可下载参考bibtex。）

<div class="figure">
<img src=".\results\新增bib文件.png" alt="新增bib文件"  />
<p class="caption">(\#fig:fig6)新增bib文件</p>
</div>

<div class="figure">
<img src=".\results\填写文献信息.png" alt="填写文献信息"  />
<p class="caption">(\#fig:fig7)填写文献信息</p>
</div>

<div class="figure">
<img src=".\results\文献信息生成.png" alt="文献信息生成"  />
<p class="caption">(\#fig:fig8)文献信息生成</p>
</div>

<div class="figure">
<img src=".\results\百度学术.png" alt="百度学术"  />
<p class="caption">(\#fig:fig9)百度学术</p>
</div>

6. 第3步中设置的bibtexkey此时还未起作用，需要手动更新：点击其中一条文献，然后按crtl+A全选，点击tool-autogen
erate bib tex key,或者直接点击图 \@ref(fig:fig10) 菜单栏中的"钥匙"，则全部bibtexkey都得到更新。

<div class="figure">
<img src=".\results\钥匙.png" alt="钥匙"  />
<p class="caption">(\#fig:fig10)钥匙</p>
</div>

注：jabref设置环境变量

安装rapidee，鼠标右键点击user variables窗口，点击add variable，在弹出的窗口中variable
name输入JAVA_HOME，点击ok，返回user variables窗口，输入jre所在的路径。需要注意的是jabref
和jre需要保持相同的版本，都安装32位或者64位（建议64位）的。

### 整理bib文件注意事项

1.在Jabref里面整理好bib文件以后，依次导出Bibfile.bib文件和Bibfile.csv文件;

2.转码：若Jabref输出的csv文件乱码，则用记事本打开该csv文件，并选择编码方式为ANSI，如图 \@ref(fig:fig1-0) 所示。
excel打开csv文件默认编码方式为uf-8，所以一旦出现乱码，可以选择ANSI转码。

<div class="figure">
<img src=".\results\recode.png" alt="ANSI编码"  />
<p class="caption">(\#fig:fig1-0)ANSI编码</p>
</div>

3.打开转码后的csv文件，增加用于论文参考文献引用的bibtexkey列,即 `[@authoryear]` ，整理好之后，
可直接在论文中相应位置复制粘贴，不易出错。如图 \@ref(fig:fig1-1) 所示，
引用bibtexkey的位置即为论文中注明参考文献顺序的角标的位置。

<div class="figure">
<img src=".\results\bibtexkey.png" alt="bibtexkey"  />
<p class="caption">(\#fig:fig1-1)bibtexkey</p>
</div>

### 如何运用Rmarkdown在论文中引用参考文献

1.在所创建的项目中添加上面生成的BIbfile.bib文件；

2.Rmd文件中引用参考文献时，在相应位置添加[@authoryear]即可。注意[]中的内容即为Bibfile文件中生成的bibtexkey。

3.在Rmd文件末尾加
“
```
# 参考文献[//]: 
 (\bibliography{Bibfile})"
```
"

### 参考文献列出所有bib文件中条目方法

在header文件中增加”nocite: '@*'“，如图\ref(fig:fig1-2)所示

<div class="figure">
<img src=".\results\notice.png" alt="notice"  />
<p class="caption">(\#fig:fig1-2)notice</p>
</div>

# Equalx的设置和用法

下载Equalx，打开equalx.exe，菜单栏点击edit→prefrences→Advanced，点击pdflatex后的change，
找到pdflatex.exe所在的路径（基本为：./texlive/2014/bin/win32/pdflatex.exe，.表示texlive所在的路径，
注：装Equalx之前需要下载texlive），之后点击ghostscript后的change，找到gswin32c.exe所在
的路径（注：修改之前需要下载gs）,如图\@ref(fig:fig11) 所示。

<div class="figure">
<img src=".\results\Equalx安装.png" alt="Equalx安装"  />
<p class="caption">(\#fig:fig11)Equalx安装</p>
</div>

edit→prefrences→editor，family选择Consolas，size选择14，字体可以调大一点

edit→prefrences→Preview，Automatic after □ milliseconds，□中输入5000

在编辑框中输入\alpha+\hat{\beta}就会显示出公式，此软件的意义在于，当输入\a时，
就会出现\alpha等以\a开头的字母，选中自己所需要的直接enter即可，会自动补全，
避免记不住markdown中公式一直看文档。还可以通过点击上面的符号直接输入。对于比较复杂的公式，
可以先在这里面输入，然后把latex代码复制到rmd中。

# Mathtype的设置和用法

1. 首先下载mathtype，将其嵌套到word中去，操作成功之后word菜单栏会出现mathtype；
2. 点击mathtype中的convert equations,设置相关属性，勾选Equation Type to convert模块的前两
项和第四项，Range模块的“whole document”,在Convert equation to模块下的“Text using MathType translator”
选择“LaTex 2.09 and lator”，如图 \@ref(fig:fig12) 所示，设置完成以后点击convert就能将word
文档中的公式转化为LaTex公式。
注：若安装不成功，卸掉重新安装mathtype即可。

<div class="figure">
<img src=".\results\Mathtype安装.png" alt="Mathtype安装"  />
<p class="caption">(\#fig:fig12)Mathtype安装</p>
</div>


# 参考文献
[//]: # (\bibliography{Bibfile})
