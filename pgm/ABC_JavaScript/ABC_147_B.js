"use strict";
function main(input) {
    const S = input.replace("\n", "");
    let ans = 0;
    for (let i = 0; i < (S.length / 2 | 0); i++)
        if (S.charAt(i) !== S.charAt(S.length - i - 1)) ans++;
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));