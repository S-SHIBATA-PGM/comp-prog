"use strict";
function main(input) {
    const S = input.replace("\n", "");
    const O = "RUD";
    const E = "LUD";
    let flg = true;
    for (let idx in S) {
        idx = parseInt(idx);
        if ((idx + 1) % 2 && -1 == O.indexOf(S[idx])) {
            flg = false;
            break;
        }
        if (idx % 2 && -1 == E.indexOf(S[idx])) {
            flg = false;
            break;
        }
    }
    console.log(flg ? "Yes" : "No");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));