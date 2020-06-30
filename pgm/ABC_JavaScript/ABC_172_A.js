"use strict";
function main(input) {
    const a = parseInt(input.replace("\n", ""));
    console.log(a + (a ** 2) + (a ** 3));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));