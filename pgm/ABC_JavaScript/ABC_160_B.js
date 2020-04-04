"use strict";
function main(input) {
    let X = parseInt(input.replace("\n", ""));
    let rm = X % 500;
    console.log((X / 500 | 0) * 1000 + (rm / 5 | 0) * 5);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));