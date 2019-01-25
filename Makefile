.PHONY: clean

clean:
	rm -rf doc guile-sys

guile-sys:
	git clone git@github.com:ysimonson/guile-sys.git

doc: guile-sys
	cd guile-sys && cargo doc
	mkdir doc
	mv guile-sys/target/doc doc/guile
	rm -rf guile-sys
