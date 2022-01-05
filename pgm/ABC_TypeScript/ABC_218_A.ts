import fs = require("fs");

const SUNNY: string = "o";

const NO: string = "No";
const YES: string = "Yes";

class Solver
{
    line: string[];

    N: number;
    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0]);
        this.S = this.line[1];
    }

    solve()
    {
        console.log(this.S.charAt(this.N - 1) == SUNNY ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
