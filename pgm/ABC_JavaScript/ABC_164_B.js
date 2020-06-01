"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = arr.shift() * 1;
    const B = arr.shift() * 1;
    const C = arr.shift() * 1;
    const D = arr.shift() * 1;
    console.log(Math.ceil(C / B) <= Math.ceil(A / D) ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));