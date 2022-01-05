import fs = require("fs");

const NO: string = "No";
const T: string = "oxxoxxoxxoxx";
const YES: string = "Yes";

class Solver
{
    line: string[];

    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
    }

    solve()
    {
        console.log(~T.indexOf(this.S) ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
