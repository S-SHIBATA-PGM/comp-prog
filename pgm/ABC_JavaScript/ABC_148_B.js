"use strict";
function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    let arr = line[1].split(" ");
    const S = arr[0];
    const T = arr[1];
    let ans = "";
    for (let i = 0; i < N; i++) ans = ans + S[i] + T[i];
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));