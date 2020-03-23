"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]), M = parseInt(arr[1]);
    console.log(((N * (N - 1) / 2) | 0) + ((M * (M - 1) / 2) | 0));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));