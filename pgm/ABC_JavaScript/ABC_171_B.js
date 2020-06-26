"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const K = parseInt(arr[1]);
    let p = line[1].split(" ").map(Number);
    p.sort(function (a, b) {
        return a < b ? -1 : 1;
    });
    p = p.slice(0, K);
    console.log(p.reduce((pi, x) => pi + x));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));