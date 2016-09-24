serve:
	jekyll serve


serve-inc:
	jekyll serve --incremental


publish: publish/.git build
	cd publish && git checkout gh-pages  && git add --all && git commit -m "published $(date '+%Y%m%d%H%M%S')" && git push --force -u origin gh-pages

build:
	jekyll build --config=_config.yml,_publish.yml

publish/.git:
	mkdir -p publish
	cd publish && git init && git remote add origin git@github.com:gdiminneapolis/falling-in-love-with-git.git
	cd publish && git pull origin gh-pages

view:
	open http://gdiminneapolis.github.io/falling-in-love-with-git
