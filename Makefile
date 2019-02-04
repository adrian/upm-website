default: build

build:
	docker run --rm -it -v ${PWD}:/srv/jekyll jekyll/minimal -- jekyll build

clean:
	rm -rf _site

upload:
	rsync -avzP --delete -e ssh _site/ adrianshome,upm@web.sourceforge.net:/home/project-web/upm/htdocs/
