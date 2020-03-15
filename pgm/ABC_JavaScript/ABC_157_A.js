"use strict";
function main(input) {
    let N = parseInt(input.split(/\r?\n/g));
    console.log(((N + 1) / 2) | 0);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));