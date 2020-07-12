"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ").map(Number);
    const A = arr[0];
    const B = arr[1];
    let ans = 0;
    let cur = 1;
    while (cur < B) {
        ans++;
        cur += A - 1;
    }
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));