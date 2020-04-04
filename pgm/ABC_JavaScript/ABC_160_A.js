"use strict";
function main(input) {
    let S = input.replace("\n", "").split("");
    let flg = S[2] === S[3] && S[4] === S[5];
    console.log(flg ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));