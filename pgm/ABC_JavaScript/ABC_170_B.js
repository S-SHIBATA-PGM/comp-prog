// C + T = X
// 2 * C + 4 * T = Y
// T = X - C
// 2 * C + 4 * (X - C) = Y
// - 2 * C = Y - 4 * X
// C = 2 * X - Y / 2
// T = -X + Y / 2
"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ").map(Number);
    const X = arr[0];
    const Y = arr[1];
    const C = 2 * X - (Y / 2) | 0;
    const T = -X + (Y / 2) | 0;
    console.log(0 <= C && 0 <= T && C + T === X && 2 * C + 4 * T === Y ? "Yes" : "No");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));