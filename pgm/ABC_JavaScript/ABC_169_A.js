"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = arr[0];
    const B = arr[1];
    console.log(A * B);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));