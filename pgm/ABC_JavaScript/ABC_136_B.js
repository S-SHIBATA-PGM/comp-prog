"use strict";
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    let ans = 0;
    for (let i = 1; i < N + 1; i++) if (((Math.log10(i) | 0) + 1) % 2 == 1) ans++;
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));