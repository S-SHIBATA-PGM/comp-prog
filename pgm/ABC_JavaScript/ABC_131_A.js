"use strict";
function main(input) {
    const S = input.replace("\n", "");
    let flg = false;
    for (let i = 1; i < S.length; i++) {
        if (S[i - 1] === S[i]) {
            flg = true;
            break;
        }
    }
    console.log(flg ? "Bad" : "Good");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));