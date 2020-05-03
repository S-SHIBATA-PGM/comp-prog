"use strict";
function main(input) {
    const R = parseInt(input.replace("\n", ""));
    console.log(2 * R * Math.PI);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));