# heuthesis

# 哈尔滨工程大学LaTeX论文模板

## heuthesis是什么？

一个简单易用的哈尔滨工程大学学位论文LaTeX模板，现包括一校三区本科、硕士、博士开题、中期和毕业论文，包括博后出站报告和英文毕业论文格式。

## 我校规范以及模板支持

- [x] 本科毕业设计
- [x] 硕士毕业论文
- [x] 博士毕业论文

## 模板特点

- 一定程度实现了[《哈尔滨工程大学研究生学位论文撰写规范》]、[《哈尔滨工程大学本科生毕业论文撰写规范》]（学校制定的规范和提供的范例存在不一致的地方:(，本模板按规范要求制作。
- 更傻更简单的选项，例如论文主文件，只需要在文档类的括号中填写本硕博选项，字体选项（设置弹性间距或者刚性间距），文科生选项（目录可以设成四级目录），非全日制类型等，轻松设定目标格式。
- 更聪明更简单的自适应格式，例如图题和标题，标题字号在字数超过两行时自动由五号变小五号，实现自适应（硕博规范规定，字数多时用五号）
- 自动化中英文索引（博士规范要求，有需要时候添加）
- 自动化表格和图片目录（英文版）
- 自动化生成术语词汇表（英文版）
- 图书馆提交论文级的电子版
- ……

## 关于模板的命名和其他说明

### 关于查重

论文查重可以使用 pdf 或 tex 源文件进行查重。

另外一点注意：查重的 pdf 一定要确保能够正常复制汉字。有些系统自动识别的汉字字体，
会出现无法正常复制的情况（可能是系统的字体映射出现了误差）。一般需要在主文件的
选项中明确声明使用哪一种 fontset。

### 关于LaTeX软件的安装

#### 平台

- 可以使用 Linux 或 Windows 操作系统
- 推荐使用编辑器 TexStudio，也可以使用其他文本编辑器例如 Visual Code、Sublime Text 等

#### 中文字体

- 推荐使用LaTeX安装包自带的开源中文字体集[fandol](https://www.ctan.org/pkg/fandol)

#### LaTeX安装包介绍

推荐安装 TeXLive/MiKTeX/MacTex。完整的安装占用空间比较多，但不完整的安装包有的支持自动安装缺失 package，有的不支持，需要手动安装。

### 模板的编译方法

1. 生成论文格式文件(第一步要生成 *.cls，*.cfg，*.ist，然后再生成论文)

   - 如果是Linux/Mac执行

   latex heuthesis.ins

   - 如果是Windows执行（作者没测试过，如遇问题同上）

   xelatex heuthesis.ins

   - 如果喜欢玩 make

   make cls

2. 生成好格式后，下一步进入到示例文件夹中

```
      examples
      ├── art
      │   └── reports     %本硕博开题、中期报告
      └── book
          ├── bachlor     %本科毕业设计论文示例
          ├── master      %工学硕士论文示例
          ├── promaster   %专业硕士论文示例
          ├── doctor      %博士学位论文示例
          └── english     %英文版毕业论文示例
```

2. 生成论文方式

   - 手动处理（源文件更改后每次编译逐行命令输入一轮）

      - book/xxxx 文件夹中

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

   - 半自动处理（源文件更改后每次编译敲一次）

            make thesis

   - 全自动处理（只需要输入一次命令，源文件更改后自动识别更改自动编译）

            latexmk

3. 生成文档

   - 手动处理（逐行命令输入一轮）

            xelatex heuthesis.dtx
            makeindex -s gind.ist -o heuthesis.ind heuthesis.idx
            makeindex -s gglo.ist -o heuthesis.gls heuthesis.glo
            xelatex heuthesis.dtx
            xelatex heuthesis.dtx

   - 半自动处理（编译敲一次）

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

- 本模板是以哈尔滨工业大学的HiThesis为核心基础进行修改
- 学校本科生院和研究生院提供了规范和以及本科生word模板，此模板仅为规范的参考实现，不保证格式审查老师不提意见。任何由于使用本模板而引起的论文格式审查问题均与本模板作者无关
