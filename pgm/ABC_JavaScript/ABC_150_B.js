"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    console.log(line[1].match("abc"))
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
