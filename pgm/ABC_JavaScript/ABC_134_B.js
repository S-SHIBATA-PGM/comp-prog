"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const D = parseInt(arr[1]);
    console.log(Math.ceil(N / (2 * D + 1)));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));