#$(wildcard [pattern [pattern]...]) is built-in function of make
SRC=$(wildcard src/main/ts/*.ts)
LIB=$(SRC:src/main/ts/%.ts=target/js/%.js)
#TODO:20170131:please set .bin directory to PATH
TSC=tsc

#first target is default target. so "help" is default target.
.PHONY: help
help:
	@echo "Usage : make <task>"
	@echo "<task>:"
	@echo "  build    transpile typescript to ES5 library"
	@echo "  watch    run 'make build' every 1 second"
	@echo "  run      build and run hello.js"
	@echo "  var      print variable values for debug"

#left side is target, right side is dependent files
.PHONY: build
build: $(LIB)

#pattern rule can be written by "%". "%" is file basename.
target/js/%.js: src/main/ts/%.ts
	#$(@D) is target directory
	mkdir -p $(@D)
	#$@ is target file name
	#$< is first dependency file
	$(TSC) $< --out $@

.PHONY lint
lint:
	tslint -c tslint.json src/main/ts/*.ts

run: target/js/hello.js
	node $<

watch:
	@echo "Now running 'make build' every 1 second. Press Ctrl-C to exit."
	@while true; do make build --silent; sleep 1; done
	#inotifywait doesn't work in cygwin
	#while true; do make build; inotifywait -qre close_write .; done
    
# "make var" prints variable values
.PHONY: var
var:
	@echo "SRC is $(SRC)"
	@echo "LIB is $(LIB)"
	@echo "PATH is $(PATH)"

.PHONY: clean
clean:
	rm -rf target

