default: sw-cn.pdf sw-en.pdf resume.pdf

resume.pdf: sw-en.pdf
	cp $^ resume.pdf

sw-cn.pdf: sw-cn.tex
	xelatex $^

#sw-en.pdf: sw-en.tex
#	xelatex $^

clean:
	rm -rf *.pdf
