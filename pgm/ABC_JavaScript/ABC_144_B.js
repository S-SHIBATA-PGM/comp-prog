"use strict";
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    let flg = false;
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            if (i * j === N) {
                flg = true;
                break;
            }
        }
        if (flg) break;
    }
    console.log(flg ? "Yes" : "No");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));