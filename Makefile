serve:
	jekyll serve

serve-inc:
	jekyll serve --incremental

publish:
	jekyll build --config=_config.yml,_publish.yml

view:
	open http://gdiminneapolis.github.io/falling-in-love-with-git
