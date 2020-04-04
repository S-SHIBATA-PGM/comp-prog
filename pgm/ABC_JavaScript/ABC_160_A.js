"use strict";
function main(input) {
    let S = input.replace("\n", "");
    let flg = S.charAt(2) === S.charAt(3) && S.charAt(4) === S.charAt(5)
    console.log(flg ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));