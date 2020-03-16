"use strict";
const NUM = 3;
const MAX_N = 100;

function check(ty, xy, n) {
    let flg = false;
    ty[xy[n]]++;
    if (ty[xy[n]] == NUM) flg = true;
    return flg;
}

function check_naname(nnm, y, x, n) {
    let flg = false;
    if (y[n] == x[n]) {
        nnm[0]++;
        if (nnm[0] == NUM) flg = true;
    }
    if (y[n] == NUM - x[n] - 1) {
        nnm[1]++;
        if (nnm[1] == NUM) flg = true;
    }
    return flg;
}

function main(input) {
    let idx = 0;
    let line = input.split(/\r?\n/g);
    let y = new Array(MAX_N).fill(-1);
    let x = new Array(MAX_N).fill(-1);
    for (let i = 0; i < NUM; i++) {
        let arr = line[idx].split(" ").map(Number);
        idx++;
        for (let j = 0; j < NUM; j++) {
            arr[j]--;
            y[arr[j]] = i;
            x[arr[j]] = j;
        }
    }
    let N = parseInt(line[idx]);
    idx++;
    let b = line.slice(idx, idx + N).map(Number);
    let tate = new Array(NUM).fill(0);
    let yoko = new Array(NUM).fill(0);
    let naname = new Array(2).fill(0);
    let flg = false;
    for (let i = 0; i < b.length; i++) {
        b[i]--;
        if (y[b[i]] == -1) continue;
        flg = check(tate, y, b[i]);
        if (flg) break;
        flg = check(yoko, x, b[i]);
        if (flg) break;
        flg = check_naname(naname, y, x, b[i]);
        if (flg) break;
    }
    console.log(flg ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));