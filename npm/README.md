How to setup npm environment
----------------------------

download [LTS(Long term support) version of node.js for Windows](https://nodejs.org/en/download/) and install it. This installer can install npm as well.

How to use npm
--------------

+ launch command prompt
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
```
