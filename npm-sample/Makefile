#$(wildcard [pattern [pattern]...]) is built-in function of make
SRC=$(wildcard src/*.ts)
LIB=$(SRC:src/%.ts=lib/%.js)
#TODO:20170131:please set .bin directory to PATH
BABEL=babel
TSC=tsc

#first target is default target. so "lib" is default target.
lib: $(LIB)

#pattern rule can be written by "%". "%" is file basename.
lib/%.js: src/%.ts
	#$(@D) is target directory
	mkdir -p $(@D)
	#$@ is target file name(so lib/xxx.js)
	#$< is first dependency file.(so src/xxx.ts)
	$(TSC) $< --out $@

lib/%.js: src/%.es6 .babelrc
	mkdir -p $(@D)
	$(BABEL) $< -o $@

#this target run lib/hello.js and outputs "hello world"
run_hello: lib/hello.js
	node $<

.PHONY: var
var:
	@echo SRC is $(SRC)
	@echo LIB is $(LIB)
	@echo BABEL is $(BABEL)

.PHONY: clean
clean:
	rm -f lib/*.js

