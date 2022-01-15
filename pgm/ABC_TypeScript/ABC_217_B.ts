import fs = require("fs");

const CONTESTS:["ABC", "ARC", "AGC", "AHC"] = ["ABC", "ARC", "AGC", "AHC"];

class Solver
{
    S: Set<string>;

    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = new Set(this.line.slice(0, 3));
    }

    solve()
    {
        console.log(...CONTESTS.filter((e) => !this.S.has(e)));
        return 0;
    }
}

const s = new Solver();
s.solve();
