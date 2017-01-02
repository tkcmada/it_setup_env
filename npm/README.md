How to setup npm environment
----------------------------

download [LTS(Long term support) version of node.js for Windows](https://nodejs.org/en/download/) and install it. This installer can install npm as well.

How to use npm
--------------

+ launch bash ( not command prompt ) by it_setup_env/start_bash.sh
+ go to this directory(npm)
+ initially setup(run only once at first time)
```
npm init
```
+ How to download and install locally Javascript libraries following package.json
```
npm install
```

How to add Javascript library to package.json
----------------------------------------------
```
npm install react --save
```
so, javascript library will be added to package.json and installed into node_modules


How to add Javascript library to package.json as development tool
-----------------------------------------------------------------
```
npm install typescript --save-dev
```
so, javascript library will be added to package.json and installed into node_modules

How to compile TypeScript
-------------------------
```
node node_modules/typescript/lib/tsc.js hello.ts
node hello.js
```
OR, you can run by the following command because "tsc" alias is added to scripts section in package.json.
```
npm run tsc hello.ts
node hello.js
```

Installed npm package
---------------------

+ typescript : Type-safe javascript.
+ slickgrid : Grid table library. Original slickgrid is suspended. This is 6pack version of slickgrid. ( this comes with jQuery...)
  + https://github.com/6pac/SlickGrid/wiki
+ browserify : allow client-side html to use require like node.js ( this comes with many dependencies... )

Considering npm package
-----------------------

+ babel : transpiler from ES6 to ES5
+ vue : ViewModel binding framework.
+ knockout : Altenative ViewModel binding framework. This supports IE6-11.

DO NOT install these npm package !
----------------------------------
+ grunt , gulp : DO NOT use these task runner. Instead, go for make on bash.

Links
-----
+ [JSFiddle](https://jsfiddle.net/fh5whLfd/) : online editor for Javascript
+ [JSBin](http://jsbin.com/rokimopuse/edit?html,js,console,output) : online editor for Javascript
+ [Codepen](http://codepen.io/anon/pen/dOGgeO) : online editor for Javascript

