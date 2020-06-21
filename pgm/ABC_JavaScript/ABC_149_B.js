"use strict";
function main(input) {
    let arr = input.split(" ").map(Number);
    let A = arr[0];
    let B = arr[1];
    let K = arr[2];
    console.log(A - Math.min(A, K), B - Math.min(B, K - Math.min(A, K)));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));