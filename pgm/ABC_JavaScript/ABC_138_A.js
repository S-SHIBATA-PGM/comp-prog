"use strict";
function main(input) {
    const line = input.split("\n");
    const a = parseInt(line[0]);
    const s = line[1];
    console.log(3200 <= a ? s : "red");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));