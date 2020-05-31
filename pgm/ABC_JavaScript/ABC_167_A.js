"use strict";
function main(input) {
    const line = input.split("\n");
    const S = line[0];
    const T = line[1];
    if (S === T.slice(0, -1)) {
        console.log("Yes");
    } else {
        console.log("No");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
