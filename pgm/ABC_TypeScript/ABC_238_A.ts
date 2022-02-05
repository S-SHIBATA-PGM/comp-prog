import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    line: string[];

    n: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.n = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(Math.pow(this.n, 2) < Math.pow(2, this.n) ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
