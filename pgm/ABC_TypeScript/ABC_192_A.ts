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
        this.X = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(100 - this.X % 100);
        return 0;
    }
}

const s = new Solver();
s.solve();
