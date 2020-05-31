"use strict";
function main(input) {
    const line = input.split("\n");
    const K = parseInt(line[0]);
    const S = line[1];
    if (S.length <= K) {
        console.log(S);
    } else {
        console.log(S.slice(0, K) + "...");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));