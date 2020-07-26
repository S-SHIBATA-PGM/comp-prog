// (N * (L  + (L + N - 1))) / 2
// (N * (2 * L + N - 1)) / 2
"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const L = parseInt(arr[1]);
    let ans = (N * (2 * L + N - 1)) / 2;
    if (L + N - 1 < 0) ans -= L + N - 1;
    else if (0 < L) ans -= L;
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));