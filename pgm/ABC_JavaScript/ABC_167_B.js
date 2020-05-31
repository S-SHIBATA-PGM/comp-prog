"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    const C = parseInt(arr[2]);
    const K = parseInt(arr[3]);
    if (K <= A) {
        console.log(K);
    } else if (K <= A + B) {
        console.log(A);
    } else {
        console.log(A - (K - A - B));
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));