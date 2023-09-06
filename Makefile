all: reveal.js annodoc fonts

reveal.js:
	curl -LO https://github.com/hakimel/reveal.js/archive/4.5.0.tar.gz
	tar xzf 4.5.0.tar.gz
	ln -s reveal.js-4.5.0 $@
	rm 4.5.0.tar.gz

lib/annodoc.js:
	curl -LO https://universaldependencies.org/lib/annodoc/annodoc.js
	mv annodoc.js lib

lib/configuration.js:
	curl -LO https://universaldependencies.org/lib/brat/configuration.js
	mv configuration.js lib

lib/annotation_log.js:
	curl -LO https://universaldependencies.org/lib/brat/annotation_log.js
	mv annotation_log.js lib

lib/util.js:
	curl -LO https://universaldependencies.org/lib/brat/util.js
	mv util.js lib

lib/webfont.js:
	curl -LO https://universaldependencies.org/lib/ext/webfont.js
	mv webfont.js lib

lib/waypoints.min.js:
	curl -LO https://universaldependencies.org/lib/ext/waypoints.min.js
	mv waypoints.min.js lib
	
lib/dispatcher.js:
	curl -LO https://universaldependencies.org/lib/brat/dispatcher.js
	mv dispatcher.js lib

lib/url_monitor.js:
	curl -LO https://universaldependencies.org/lib/brat/url_monitor.js
	mv url_monitor.js lib

lib/visualizer.js:
	curl -LO https://universaldependencies.org/lib/brat/visualizer.js
	mv visualizer.js lib

lib/collections.js:
	curl -LO https://universaldependencies.org/lib/local/collections.js
	mv collections.js lib

lib/conllu.js:
	curl -LO https://spyysalo.github.io/conllu.js/conllu.js
	mv conllu.js lib

lib/style-vis.css:
	curl -LO https://universaldependencies.org/css/style-vis.css
	mv style-vis.css lib

annodoc: jQuery lib/annodoc.js lib/configuration.js lib/annotation_log.js lib/util.js lib/webfont.js lib/waypoints.min.js lib/dispatcher.js lib/url_monitor.js lib/visualizer.js lib/collections.js lib/conllu.js lib/style-vis.css

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
	rm -rf reveal.js reveal.js-4.5.0 4.5.0.tar.gz lib/*.js lib/*.css lib/*.ttf
