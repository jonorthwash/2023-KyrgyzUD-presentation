all: reveal.js annodoc fonts

reveal.js:
	curl -LO https://github.com/hakimel/reveal.js/archive/4.5.0.tar.gz
	tar xzf 4.5.0.tar.gz
	ln -s reveal.js-4.5.0 $@
	rm 4.5.0.tar.gz

annodoc: jQuery
	curl -LO https://universaldependencies.org/lib/annodoc/annodoc.js
	curl -LO https://universaldependencies.org/lib/brat/configuration.js
	curl -LO https://universaldependencies.org/lib/brat/annotation_log.js
	curl -LO https://universaldependencies.org/lib/brat/util.js
	curl -LO https://universaldependencies.org/lib/ext/webfont.js
	curl -LO https://universaldependencies.org/lib/ext/waypoints.min.js
	curl -LO https://universaldependencies.org/lib/brat/dispatcher.js
	curl -LO https://universaldependencies.org/lib/brat/url_monitor.js
	curl -LO https://universaldependencies.org/lib/brat/visualizer.js
	curl -LO https://spyysalo.github.io/conllu.js/conllu.js
	curl -LO https://universaldependencies.org/css/style-vis.css
	mv annodoc.js lib
	mv configuration.js lib
	mv annotation_log.js lib
	mv util.js lib
	mv webfont.js lib
	mv waypoints.min.js lib
	mv dispatcher.js lib
	mv url_monitor.js lib
	mv visualizer.js lib
	mv conllu.js lib
	mv style-vis.css lib

jQuery:
	curl -LO https://universaldependencies.org/lib/ext/jquery.min.js
	curl -LO https://universaldependencies.org/lib/ext/jquery.svg.min.js
	curl -LO https://universaldependencies.org/lib/ext/jquery.svgdom.min.js
	curl -LO https://universaldependencies.org/lib/ext/jquery.timeago.js
	curl -LO https://universaldependencies.org/lib/ext/jquery-ui.min.js
	mv jquery.min.js lib
	mv jquery.svg.min.js lib
	mv jquery.svgdom.min.js lib
	mv jquery.timeago.js lib
	mv jquery-ui.min.js lib

fonts:
	curl -LO https://universaldependencies.org/static/fonts/Liberation_Sans-Regular.ttf
	curl -LO https://universaldependencies.org/static/fonts/PT_Sans-Caption-Web-Regular.ttf
	mv *.ttf lib

clean:
	rm -rf reveal.js reveal.js-4.5.0 4.5.0.tar.gz lib/*.js lib/*.ttf
