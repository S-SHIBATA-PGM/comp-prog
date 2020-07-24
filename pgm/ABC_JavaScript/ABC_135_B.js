"use strict";
function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    const p = line[1].split(" ").map(Number);
    let cnt = 0;
    for (let i = 0; i < N; i++) if (p[i] !== i + 1) cnt++;
    console.log(cnt <= 2 ? "YES" : "NO");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));