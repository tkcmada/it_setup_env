#$(wildcard [pattern [pattern]...]) is built-in function of make
SRC=$(wildcard src/main/ts/*.ts)
LIB=$(SRC:src/main/ts/%.ts=target/js/%.js)
#TODO:20170131:please set .bin directory to PATH
TSC=tsc

.PHONY: help
help:
	@echo "Usage : make <task>"
	@echo "<task>:"
	@echo "  lib : transpile typescript to ES5 library"
	@echo "  run : transpile javascript lib and run hello.js"
	@echo "  var : print variable values for debug"

#first target is default target. so "lib" is default target.
lib: $(LIB)

#pattern rule can be written by "%". "%" is file basename.
target/js/%.js: src/main/ts/%.ts
	#$(@D) is target directory
	mkdir -p $(@D)
	#$@ is target file name
	#$< is first dependency file
	$(TSC) $< --out $@

run: target/js/hello.js
	node $<

# "make var" prints variable values
.PHONY: var
var:
	@echo "SRC is $(SRC)"
	@echo "LIB is $(LIB)"
	@echo "PATH is $(PATH)"

.PHONY: clean
clean:
	rm -rf target

