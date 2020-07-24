"use strict";
function main(input) {
    const r = parseInt(input.replace("\n", ""));
    console.log(3 * Math.pow(r, 2));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));