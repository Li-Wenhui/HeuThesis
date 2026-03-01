# =============================================================
#                 LaTeX Makefile
# =============================================================
# Usage:
#   make           - 完全编译
#   make clean     - 清理辅助文件
#   make cleanall  - 清理PDF及所有辅助文件
#   make build     - 编译并清理辅助文件
#   make rebuild   - 重新编译并清理辅助文件
#   make help      - 显示帮助
# =============================================================

# 定义编译器及编译参数
TEXCMD = xelatex -interaction=nonstopmode -halt-on-error
BIBCMD = bibtex

# 定义需要清理的辅助文件扩展名
AUX_FILES = *.acn *.acr *.alg *.aux *.bak *.bbl *.bcf *.blg *.brf *.cut *.dvi *.exa *.fen *.fls *.glg *.glo *.gls *.idx *.ilg *.ind *.ist *.lof *.log *.lot *.nav *.snm *.out *.thm *.ten *.loa *.toc *.toe *.vrb *.xdv *.fdb_latexmk *.run.xml *.synctex.gz

# 定义排除的目录(可选)
EXCLUDE_DIRS = .git/

# 获取当前目录下所有 .tex 文件（排除带空格的文件名）
MAIN_TEX  = main
MAIN_PDF  = $(MAIN_TEX).pdf
TEX_FILES = $(wildcard *.tex) $(wildcard chapter/*.tex)
BIB_FILES = $(wildcard *.bib)

# 默认目标：编译所有 .tex 文件
all:  $(MAIN_PDF)
	@echo "编译完成！"

# 模式规则：xeLaTeX → BibTeX → xeLaTeX → xeLaTeX
 $(MAIN_PDF): $(TEX_FILES) $(BIB_FILES)
	@echo "正在进行第一遍编译..."
	$(TEXCMD) $(MAIN_TEX)
	@echo "正在进行参考文献编译..."
	$(BIBCMD) $(MAIN_TEX)
	@echo "正在进行第二次编译..."
	$(TEXCMD) $(MAIN_TEX)
	@echo "正在进行第三次编译..."
	$(TEXCMD) $(MAIN_TEX)

# 清理所有辅助文件
clean:
	@echo "正在清理辅助文件..."
	@for pattern in $(AUX_FILES); do \
		#@echo "正在删除 $$pattern 文件:"; \
		find . -type f -name "$$pattern" ! -path "./$(EXCLUDE_DIRS)/*" -print -delete || true; \
	done
	@echo "清理完成！"

# 清理PDF及所有辅助文件
cleanall: 
	@echo "正在清理文件..."
	@for pattern in $(AUX_FILES); do \
		#@echo "正在删除 $$pattern 文件:"; \
		find . -type f -name "$$pattern" ! -path "./$(EXCLUDE_DIRS)/*" -print -delete || true; \
	done
	@rm -f $(MAIN_PDF)
	@echo "清理完成！"

# 编译并清理（常用目标）
build: all clean

# 重新编译并清理
rebuild: cleanall all clean

help:
	@echo "Usage:"
	@echo "make          - 完全编译"
	@echo "make clean    - 清理辅助文件"
	@echo "make rmpdf    - 清理PDF及所有辅助文件"
	@echo "make build    - 编译并清理辅助文件"
	@echo "make rebuild  - 重新编译并清理辅助文件"
	@echo "make help     - 显示帮助"
	
.PHONY: all cleanall rmpdf build rebuild 
