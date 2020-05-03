"use strict";
function main(input) {
    const line = input.replace("\n", "");
    console.log(line.indexOf("7") === -1 ? "No" : "Yes");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));