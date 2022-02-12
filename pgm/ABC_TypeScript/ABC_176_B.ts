import fs = require("fs");

const NUM: 9 = 9;
const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    N: Array<number>;
    line: string[];

    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = this.line[0].split("").map((str) => parseInt(str, 10));
    }

    solve()
    {
        console.log(!(this.N.reduce((pre, cur) => pre + cur) % NUM) ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
