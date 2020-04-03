"use strict";
function reverseStr(s) {
    var rs = "";
    for (var i = 0, n = s.length; i < n; i++) {
        rs += s[n - i - 1];
    }
    return rs;
}

function checkPal(s) {
    return s === reverseStr(s);
}

function main(input) {
    let S = input.replace("\n", "");
    console.log(
        checkPal(S) && checkPal(S.slice(0, S.length / 2 | 0)) ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));