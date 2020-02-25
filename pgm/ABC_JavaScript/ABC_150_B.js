"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[1].match(/ABC/g);
    console.log(arr == null ? 0 : arr.length);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));