"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const A = parseInt(arr[0]);
    const B = parseInt(arr[1]);
    if ((A + B) % 2 === 0) {
        console.log((A + B) / 2);
    } else {
        console.log("IMPOSSIBLE");
    }
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));