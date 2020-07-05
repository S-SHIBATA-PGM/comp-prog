"use strict";
function main(input) {
    const S = input.replace("\n", "");
    const W = ["Sunny", "Cloudy", "Rainy"];
    console.log(W[(W.indexOf(S) + 1) % 3]);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));