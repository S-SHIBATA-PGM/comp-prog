"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = arr[0];
    const K = arr[1];
    const h = line[1].split(" ").map(Number);
    console.log(h.reduce((pre, cur) => pre + (K <= cur ? 1 : 0), 0));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));