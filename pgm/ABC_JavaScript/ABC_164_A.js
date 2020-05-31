"use strict";
function main(input) {
    let line = input.split("\n");
    let arr = line[0].split(" ");
    const S = parseInt(arr[0]);
    const W = parseInt(arr[1]);
    if (S <= W) {
        console.log("unsafe");
    } else {
        console.log("safe");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));