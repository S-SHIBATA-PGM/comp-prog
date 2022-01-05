import fs = require("fs");

class Solver
{
    line: string[];

    D: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.D = parseInt(this.line[0]);
    }

    Solve()
    {
        console.log(this.D / 100);
        return 0;
    }
}

let s = new Solver();
s.Solve();

