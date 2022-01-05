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
        this.X = parseFloat(this.line[0]);
    }

    solve()
    {
        console.log(Math.round(this.X));
        return 0;
    }
}

const s = new Solver();
s.solve();
