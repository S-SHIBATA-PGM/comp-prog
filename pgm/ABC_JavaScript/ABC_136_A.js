"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    const C = parseInt(arr[2]);
    console.log(A < B + C ? B + C - A : 0);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));