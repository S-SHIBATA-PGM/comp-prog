"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const M = parseInt(arr[1]);
    const A = line[1].split(" ").map(Number);
    const accum = A.reduce((Ai, x) => Ai + x);
    console.log(N < accum ? -1 : N - accum);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));