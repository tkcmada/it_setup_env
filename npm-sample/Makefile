#$(wildcard [pattern [pattern]...]) is built-in function of make
SRC=$(wildcard src/*.ts)
LIB=$(SRC:src/%.ts=target/js/%.js)
#TODO:20170131:please set .bin directory to PATH
BABEL=babel
TSC=tsc

#first target is default target. so "lib" is default target.
lib: $(LIB)

#pattern rule can be written by "%". "%" is file basename.
target/js/%.js: src/%.ts
	#$(@D) is target directory
	mkdir -p $(@D)
	#$@ is target file name
	#$< is first dependency file
	$(TSC) $< --out $@

lib/%.js: src/%.es6 .babelrc
	mkdir -p $(@D)
	$(BABEL) $< -o $@

#this target run lib/hello.js and outputs "hello world"
run: target/js/hello.js
	node $<

.PHONY: var
var:
	@echo SRC is $(SRC)
	@echo LIB is $(LIB)
	@echo BABEL is $(BABEL)

.PHONY: clean
clean:
	rm -rf target

