"use strict";
function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    const A = line[1].split(" ").map(Number);
    console.log(1 / A.reduce((pre, cur) => pre + 1 / cur, 0));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));