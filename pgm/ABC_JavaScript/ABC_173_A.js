"use strict";
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    console.log((1000 - N % 1000) % 1000);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));