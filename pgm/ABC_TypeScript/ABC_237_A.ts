import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = Number(this.line[0]);
    }

    solve()
    {
        console.log(
            -Math.pow(2, 31) <= this.N && this.N < Math.pow(2, 31) ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
