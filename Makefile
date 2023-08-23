all: reveal.js

reveal.js:
	curl -LO https://github.com/hakimel/reveal.js/archive/4.5.0.tar.gz
	tar xzf 4.5.0.tar.gz
	ln -s reveal.js-4.5.0 $@
	rm 4.5.0.tar.gz

clean:
	rm -rf reveal.js reveal.js-4.5.0 4.5.0.tar.gz
