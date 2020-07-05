"use strict";
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    console.log(Math.pow(N, 3));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));