"use strict";
function main(input) {
    let line = input.split("\n");
    const K = parseInt(line[0]);
    let arr = line[1].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    if (A <= (B % K ? (B / K | 0) * K : B)) {
        console.log("OK");
    } else {
        console.log("NG");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));