/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/barcode-scan.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/barcode-scan.js":
/*!**********************************************!*\
  !*** ./app/javascript/packs/barcode-scan.js ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/martino/code/MartinoFabbro/beerscan/app/javascript/packs/barcode-scan.js: Unexpected token, expected \",\" (46:13)\n\n  44 |           readers : [\"ean_reader\"]\n  45 |       },\n> 46 |       config {\n     |              ^\n  47 |         frequency: 2\n  48 |       },\n  49 |     },function(err) {\n    at Parser.raise (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:6325:17)\n    at Parser.unexpected (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:7642:16)\n    at Parser.expect (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:7628:28)\n    at Parser.parseObj (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9150:14)\n    at Parser.parseExprAtom (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8784:28)\n    at Parser.parseExprSubscripts (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8412:23)\n    at Parser.parseMaybeUnary (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8392:21)\n    at Parser.parseExprOps (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8267:23)\n    at Parser.parseMaybeConditional (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8240:23)\n    at Parser.parseMaybeAssign (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8187:21)\n    at Parser.parseExprListItem (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9491:18)\n    at Parser.parseCallExpressionArguments (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8621:22)\n    at Parser.parseSubscript (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8514:29)\n    at Parser.parseSubscripts (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8433:19)\n    at Parser.parseExprSubscripts (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8422:17)\n    at Parser.parseMaybeUnary (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8392:21)\n    at Parser.parseExprOps (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8267:23)\n    at Parser.parseMaybeConditional (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8240:23)\n    at Parser.parseMaybeAssign (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8187:21)\n    at Parser.parseExpression (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:8135:23)\n    at Parser.parseStatementContent (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9958:23)\n    at Parser.parseStatement (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9829:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:10405:25)\n    at Parser.parseBlockBody (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:10392:10)\n    at Parser.parseBlock (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:10376:10)\n    at Parser.parseStatementContent (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9905:21)\n    at Parser.parseStatement (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9829:17)\n    at Parser.parseIfStatement (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:10183:28)\n    at Parser.parseStatementContent (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9874:21)\n    at Parser.parseStatement (/home/martino/code/MartinoFabbro/beerscan/node_modules/@babel/parser/lib/index.js:9829:17)");

/***/ })

/******/ });
//# sourceMappingURL=barcode-scan-d30575fa8b2b6f3c16bc.js.map