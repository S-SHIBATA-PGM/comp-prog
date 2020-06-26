"use strict";
function main(input) {
    const a = input.replace("\n", "");
    console.log(a.charCodeAt() <= "Z".charCodeAt() ? "A" : "a");
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));