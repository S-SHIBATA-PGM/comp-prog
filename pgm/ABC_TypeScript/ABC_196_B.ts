import fs = require("fs");

class Solver
{
    line: string[];

    X: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = this.line[0].replace(/\.[0-9]*$/, "");
    }

    solve()
    {
        console.log(this.X);
        return 0;
    }
}

const s = new Solver();
s.solve();
