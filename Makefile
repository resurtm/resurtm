.PHONY: default push

default: push

push:
	git push origin master
	git push origin `git subtree split --prefix public master`:gh-pages --force
