import fs = require("fs");

class Solver
{
    line: string[];

    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = parseInt(this.line[0]);
    }

    solve()
    {
        console.log((this.X + "").padStart(4, "0"));
        return 0;
    }
}

const s = new Solver();
s.solve();
