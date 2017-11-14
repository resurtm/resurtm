.PHONY: default clean build push

default: build

clean:
	rm -rfv public/*

build:
	hugo

push:
	git push origin master
	git push origin `git subtree split --prefix public master`:gh-pages --force
