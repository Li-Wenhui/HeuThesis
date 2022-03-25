# heuthesis

# 哈尔滨工程大学LaTeX论文模板

## What's heuthesis?

heuthesis is a LaTeX thesis template package for Harbin Engineering University (all 3 campuses)
supporting bachelor, master, doctor dissertations, postdoc report, thesis
proposal and midterm report, *both Chinese and English version*.

Files/Codes in heuthesis may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.3a of this license or (at your option)
any later version. The latest version of this license is in:

<http://www.latex-project.org/lppl.txt>

and version 1.3a or later is part of all distributions of LaTeX
version 2004/10/01 or later.

Files/Codes in heuthesis also under the protection of license of [Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](http://creativecommons.org/licenses/by-nc/4.0/).

## heuthesis是什么？

一个简单易用的哈尔滨工程大学学位论文LaTeX模板，现包括一校三区本科、硕士、博士开
题、中期和毕业论文，包括博后出站报告和英文毕业论文格式。

## heuthesis版本更新说明

版本号：vX.Y.Z　中，X表示重大不兼容改进，Y表示功能改进，Z表示非功能的bug补丁。

## 我校规范以及模板支持

- [x] 哈尔滨校区本科毕业设计
- [x] 哈尔滨校区硕士毕业论文
- [x] 哈尔滨校区博士毕业论文
- [x] 哈尔滨校区本科毕业设计开题
- [x] 哈尔滨校区本科毕业设计中期
- [x] 哈尔滨校区硕士毕业设计开题
- [x] 哈尔滨校区硕士毕业设计中期
- [x] 哈尔滨校区博士毕业设计开题
- [x] 哈尔滨校区博士毕业设计中期
- [x] 哈尔滨校区博后出站报告
- [x] 烟台校区本科毕业设计
- [x] 烟台校区硕士毕业论文
- [x] 烟台校区博士毕业论文
- [x] 烟台校区本科毕业设计开题
- [x] 烟台校区本科毕业设计中期
- [x] 烟台校区硕士毕业设计开题
- [x] 烟台校区硕士毕业设计中期
- [x] 烟台校区博士毕业设计开题
- [x] 烟台校区博士毕业设计中期
- [x] 烟台校区博后出站报告
- [x] 青岛校区硕士毕业论文
- [x] 青岛校区本科毕业设计
- [x] 青岛校区博士毕业论文
- [x] 青岛校区本科毕业设计开题
- [x] 青岛校区本科毕业设计中期
- [x] 青岛校区硕士毕业设计开题
- [x] 青岛校区硕士毕业设计中期
- [x] 青岛校区博士毕业设计开题
- [x] 青岛校区博士毕业设计中期
- [x] 青岛校区博后出站报告
- [x] English version of thesis

## 模板特点

- 程度实现了[《哈尔滨工程大学研究生学位论文撰写规范》]、[《哈尔滨工程大学本科生毕业论文撰写规范》]
- 更傻更简单的选项，例如论文主文件，只需要在文档类的括号中填写本硕博选项，字体选项（设置弹性间距或者刚性间距），文科生选项（目录可以设成四级目录），非全日制类型等，轻松设定目标格式。
- 更聪明更简单的自适应格式，例如图题和标题，标题字号在字数超过两行时自动由五号变小五号，实现自适应（硕博规范规定，字数多时用五号）
- 自动化中英文索引（博士规范要求，有需要时候添加）
- 自动化表格和图片目录（英文版）
- 自动化生成术语词汇表（英文版）
- 图书馆提交论文级的电子版
- ……

## 关于模板的命名和其他说明

### 关于查重

注意：我校的论文查重可以使用pdf查重！！！！！！！

另外一点注意：查重的pdf一定要确保能够正常复制汉字。有些系统自动识别的汉字字体，
会出现无法正常复制的情况（可能是系统的字体映射出现了误差）。一般需要在主文件的
选项中明确声明使用哪一种fontset。

### 关于LaTeX软件的安装

#### 平台

- 推荐使用开源系统 Linux
- 推荐使用开源编辑器 [Spacemacs](https://www.spacemacs.org/)

#### 中文字体

- 推荐使用LaTeX安装包自带的开源中文字体集[fandol](https://www.ctan.org/pkg/fandol)

#### LaTeX安装包介绍

不推荐安装完整版TeXLive/MiKTeX/MacTeX，因为太费时间。
如果不介意在自己房子里放进一堆小破烂，那么浪费硬盘空间完全不是问题，即使99%的模板八百年都用不到。

所以推荐安装非完整版TeXLive/MiKTeX/MacTex。不完整的安装包有的支持自动安装缺失package，有的不支持，需要手动安装。

### 模板的编译方法

1. 生成论文格式文件(第一步要生成 *.cls，*.cfg，*.ist，然后再生成论文)

   - 如果是Linux/Mac执行
 
   latex heuthesis.ins
  
   - 如果是Windows执行（作者没测试过，如遇问题同上）
 
   xelatex heuthesis.ins

   - 如果喜欢玩 make

   make cls

2. 生成好格式后，下一步进入到示例文件夹中

  examples
  ├── art
  │   └── reports     %本硕博开题、中期报告
  └── book
      ├── chinese     %本硕博毕业论文以及博后出站报告
      └── english     %本硕博英文版毕业论文

2. 生成论文方式

   - 手动狙击（源文件更改后每次编译逐行命令输入一轮）
     
      - book/chinese 文件夹中

              xelatex -shell-escape thesis.tex
              bibtex thesis
              xelatex -shell-escape thesis.tex
              xelatex -shell-escape thesis.tex
              splitindex thesis -- -s heuthesis.ist  # 自动生成索引
              xelatex -shell-escape thesis.tex

      - book/english 文件夹中

              xelatex -shell-escape thesis.tex
              bibtex thesis
              xelatex -shell-escape thesis.tex
              xelatex -shell-escape thesis.tex

      - art/{reports}文件夹中

              xelatex -shell-escape report.tex
              bibtex report
              xelatex -shell-escape report.tex
              xelatex -shell-escape report.tex

   - 半自动精确射击（源文件更改后每次编译敲一次）

            make thesis

   - 全自动火力覆盖（只需要输入一次命令，源文件更改后自动识别更改自动编译）

            latexmk

3. 生成文档（没什么用，因为有文档也基本没人看）

   - 手动狙击（逐行命令输入一轮）

            xelatex heuthesis.dtx
            makeindex -s gind.ist -o heuthesis.ind heuthesis.idx
            makeindex -s gglo.ist -o heuthesis.gls heuthesis.glo
            xelatex heuthesis.dtx
            xelatex heuthesis.dtx

   - 半自动精确射击（编译敲一次）

            make doc

### 打印版、电子版

注意，一般情况下，博士论文的打印版要求双面打印，本硕单面。
博士论文在双面打印成册时，规范中没有明确规定是否要右翻页（右翻页是每一章的起始位
置位于书的右侧页面），所以会出现DIY（或身不由己DIY）哪一处右翻页。
`openright`选项设置为真时，会将所有章（即所有部分，包括前文和后文）起始设置成右翻页。
如果想DIY（或身不由己DIY）在什么地方右翻页，将这个选项设置为false，然后在目标位
置添加`\cleardoublepage`命令即可。

最后向图书管提交的电子版不是右翻页且要求没有任何空白页，这时只需要设置选项`library=true`
即可，这时候会强制`openright=false`。然后什么都不用做，就会出现如同`Sirius`同学
的这种“书签还没整明白，论文居然已经通过了”的情况。

### 其他说明

- heuthesis的维护和创造基于开源式爱心发电精神，所以千万不要向作者提出无礼请求。
- 本模板以HiThesis为核心基础修改开发而来
- 学校教务处和研究生院提供了规范和以及本科生word模板，此模板仅为规范的参考实现，不保证格式审查老师不提意见。任何由于使用本模板而引起的论文格式审查问题均与本模板作者无关
