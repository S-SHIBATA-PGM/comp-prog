import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

class Solver
{
    line: string[];

    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(30 <= this.X ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
