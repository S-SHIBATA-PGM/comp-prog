"use strict";
function main(input) {
    const arr = input.split("\n");
    const N = parseInt(arr[0]);
    const S = ["AC", "WA", "TLE", "RE"];
    const mul = " x ";
    let C = Array(S.length);
    C.fill(0);
    for (let i = 1; i < N + 1; i++) C[S.indexOf(arr[i])]++;
    for (let i = 0; i < S.length; i++)  console.log(S[i] + mul + C[i]);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));