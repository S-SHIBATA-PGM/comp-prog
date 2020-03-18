"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let S = new Set(line[0].slice(0, line.length));
    console.log(S);
    console.log(S.size);
    console.log(1 < S.size ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));