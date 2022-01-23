import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    S: string[];
    line: string[];

    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line.slice(0, 4);
    }

    solve()
    {
        console.log(new Set(this.S).size == 4 ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
