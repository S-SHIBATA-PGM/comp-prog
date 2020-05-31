"use strict";
function main(input) {
    const S = input.replace("\n", "");
    if ("ARC" === S) {
        console.log("ABC");
    } else {
        console.log("ARC");
    }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));