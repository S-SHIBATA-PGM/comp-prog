"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[0].split(" ").map(Number);
    const N = arr[0], K = arr[1], M = arr[2];
    arr = line[1].split(" ").map(Number);
    let accum = arr.reduce((A, x) => A + x);
    let ans = N * M - accum;
    console.log(ans < 0 ? 0 : K < ans ? -1 : ans);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));