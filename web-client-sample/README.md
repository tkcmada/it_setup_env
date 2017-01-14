How to use npm to download Javascript library
---------------------------------------------
+ open command prompt
+ set PATH to nodejs ( TO do this automatically, you can use start_cmd.bat )
```
set PATH=nodejs;%PATH%
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

How to setup build environment
------------------------------

+ clone this repository.
+ install cygwin x64 following [stdenv-cygwin](https://github.com/tkcmada/stdenv_cygwin) project.

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
+ babel-polyfill : This is required to use Promise in IE11. (And async feature of Typescript requires Promise)

+ tslint : lint for TypeScript. To run tslint,
```
make lint
```
+ slickgrid : Grid table library. Original slickgrid is suspended. This is 6pack version of slickgrid. ( this comes with jQuery...)
  + https://github.com/6pac/SlickGrid/wiki

Considering npm package
-----------------------

+ vue : ViewModel binding framework. ( Alternative is knockout.js which supports IE6-11)
+ browserify or webpack : allow client-side html to use require like node.js ( this comes with many dependencies... )
+ babel, babel-cli : transpiler from ES6 to ES5( but there is typescript ) babel can transpile experimental features but DO NOT use any stage-x features by babel.

DO NOT install these npm package !
----------------------------------
+ task runner( grunt, gulp, jake, etc...) : These tools are just task runner and not smarter than GNU make.
  + https://www.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/
  + http://qiita.com/sasaplus1/items/e7579bb774acf54629ac
+ GNU make document for reference
  + http://www.02.246.ne.jp/~torutk/cxx/make/gnumake.html

Links
-----
+ [JSFiddle](https://jsfiddle.net/fh5whLfd/) : online editor for Javascript
+ [JSBin](http://jsbin.com/rokimopuse/edit?html,js,console,output) : online editor for Javascript
+ [Codepen](http://codepen.io/anon/pen/dOGgeO) : online editor for Javascript

