"use strict";
function main(input) {
    const line = input.split("\n");
    const n = parseInt(line[0]);
    const p = line[1].split(" ").map(Number);
    let ans = 0;
    for (let i = 1; i < n - 1; i++) {
        if (p[i - 1] < p[i] && p[i] < p[i + 1]) ans++;
        else if (p[i + 1] < p[i] && p[i] < p[i - 1]) ans++;
    }
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));