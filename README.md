## Build Requirements
* docker

## Generating the Website
```
$ make
```

## Uploading website to Sourceforge
```
$ cd upm-website
$ rsync -avzP --delete -e ssh _site/ adrianshome,upm@web.sourceforge.net:/home/project-web/upm/htdocs/
```