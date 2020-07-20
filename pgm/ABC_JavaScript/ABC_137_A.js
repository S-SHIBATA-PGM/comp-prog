"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    console.log(Math.max(A + B, A - B, A * B));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));