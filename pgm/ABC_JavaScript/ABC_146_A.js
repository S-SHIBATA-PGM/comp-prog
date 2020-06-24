"use strict";
function main(input) {
    const S = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    console.log(7 - S.indexOf(input.replace("\n", "")));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));