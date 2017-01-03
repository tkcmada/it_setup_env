How to setup development environment
------------------------------------

+ install cygwin x64 following [cygwin-sample](../cygwin-sample/README.md).
+ download [LTS(Long term support) version of node.js for Windows](https://nodejs.org/en/download/) and install it. This installer can install npm as well.

How to use npm
--------------

+ launch cygwin bash ( DO NOT use Windows command prompt )
```
start_bash.sh
```
+ install locally Javascript libraries following package.json
```
npm install
```

How to add Javascript library to package.json
----------------------------------------------
```
npm install typescript --save
npm install typescript --save-dev
```
so, javascript library will be added to package.json and installed into node_modules.
Do not install by -g (global) command as development tools should be specified in devDevendencies(--save-dev) in package.json.

How to build
------------
```
make help
make clean
make build
make run
```

Installed npm package
---------------------

+ typescript : Type-safe javascript. To transpile ts file to js file, run following task.
```
make build
```
+ tslint : lint for TypeScript. To run tslint,
```
make lint
```
+ slickgrid : Grid table library. Original slickgrid is suspended. This is 6pack version of slickgrid. ( this comes with jQuery...)
  + https://github.com/6pac/SlickGrid/wiki

Considering npm package
-----------------------

+ vue : ViewModel binding framework. ( Alternative is knockout.js which supports IE6-11)
+ browserify : allow client-side html to use require like node.js ( this comes with many dependencies... )
+ babel, babel-cli : transpiler from ES6 to ES5( but there is typescript )

DO NOT install these npm package !
----------------------------------
+ task runner( grunt, gulp, webpack, jake, etc...) : These tools are just task runner and not smarter than GNU make. Learn GNU make at first.
  + https://www.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/
  + http://qiita.com/sasaplus1/items/e7579bb774acf54629ac
+ GNU make document for reference
  + http://www.02.246.ne.jp/~torutk/cxx/make/gnumake.html

Links
-----
+ [JSFiddle](https://jsfiddle.net/fh5whLfd/) : online editor for Javascript
+ [JSBin](http://jsbin.com/rokimopuse/edit?html,js,console,output) : online editor for Javascript
+ [Codepen](http://codepen.io/anon/pen/dOGgeO) : online editor for Javascript

