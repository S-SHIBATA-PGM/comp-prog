"use strict";
function main(input) {
    const line = input.split("\n");
    let x = line[0].split(" ").map(Number);
    console.log(x.indexOf(0) + 1);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));