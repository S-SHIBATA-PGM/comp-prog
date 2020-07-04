"use strict";
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    console.log(((N + 1) / 2 | 0) / N);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));