"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    console.log(2 * B < A ? A - 2 * B : 0);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));