"use strict";
function main(input) {
    const line = input.split("\n");
    let A = line[0].split(" ").map(Number);
    console.log(22 <= A.reduce((Ai, x) => Ai + x) ? "bust" : "win");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));