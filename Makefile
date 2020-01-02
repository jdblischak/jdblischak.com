srcpath := templates/
outpath := _site/
static := assets/,img/

all: build

build:
	mkdir -p $(outpath)
	staticjinja build --srcpath $(srcpath) --outpath $(outpath) --static $(static)

watch:
	mkdir -p $(outpath)
	staticjinja watch --srcpath $(srcpath) --outpath $(outpath) --static $(static)
