"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    console.log(A <= 9 && B <= 9 ? A * B : -1);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));