"use strict";
function main(input) {
    let N = parseInt(input.replace("\n", "")) % 10;
    if ([2, 4, 5, 7, 9].indexOf(N) !== -1) {
        console.log("hon");
    } else if ([0, 1, 6, 8].indexOf(N) !== -1) {
        console.log("pon");
    } else {
        console.log("bon");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));