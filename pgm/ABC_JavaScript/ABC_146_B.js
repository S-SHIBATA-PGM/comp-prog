"use strict";
function maketrans(from, to) {
    var replaces = {}, i, c, exp = '', re;
    for (i in from) {
        c = from[i];
        replaces[c] = to.substr(i, 1);
        exp += '[]-^\\'.indexOf(c) < 0 ? c : '\\' + c;
    }
    re = RegExp('[' + exp + ']', 'g');
    function replacer(c) { return replaces[c]; }
    return function (str) { return str.replace(re, replacer); };
}

function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    const S = line[1];
    const alp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let trans = maketrans(
        alp,
        alp.slice(N) + alp.slice(0, N)
    );
    console.log(trans(S));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));