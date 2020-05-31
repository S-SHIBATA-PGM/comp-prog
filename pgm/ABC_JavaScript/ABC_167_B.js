"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = arr.shift() * 1;
    const B = arr.shift() * 1;
    const C = arr.shift() * 1;
    const K = arr.shift() * 1;
    if (K <= A) {
        console.log(K);
    } else if (K <= A + B) {
        console.log(A);
    } else {
        console.log(A - (K - A - B));
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));