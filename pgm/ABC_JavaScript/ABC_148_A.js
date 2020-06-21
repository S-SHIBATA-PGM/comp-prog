"use strict";

function difference(setA, setB) {
    var _difference = new Set(setA);
    for (var elem of setB) {
        _difference.delete(elem);
    }
    return _difference;
}

function main(input) {
    let line = input.split("\n");
    let AB = new Set(line.slice(0, line.length - 1));
    for (let s of difference(new Set(["1", "2", "3"]), AB)) {
        console.log(s);
        break;
    }
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));