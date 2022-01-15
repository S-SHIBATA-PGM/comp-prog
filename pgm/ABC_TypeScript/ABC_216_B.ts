import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    ST: Set<string>;
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.ST = new Set(this.line.slice(1, this.N + 1));
    }

    solve()
    {
        console.log(this.N === this.ST.size ? NO : YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
