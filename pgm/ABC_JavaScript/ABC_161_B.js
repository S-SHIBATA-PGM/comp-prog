"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const M = parseInt(arr[1]);
    const A = line[1].split(" ").map(Number);
    A.sort(function (a, b) {
        return a < b ? 1 : b < a ? -1 : 0;
    });
    const accum = A.reduce((Ai, x) => Ai + x);
    console.log(accum / (4 * M) <= A[M - 1] ? "Yes" : "No");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));