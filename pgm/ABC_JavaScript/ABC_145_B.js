"use strict";
function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    const S = line[1];
    console.log(!(N % 2) ? S.slice(0, N / 2) === S.slice(N / 2) ? "Yes" : "No" : "No");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));