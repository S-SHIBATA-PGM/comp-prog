import fs = require("fs");

class Solver
{
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(0 < this.N - 1 ? this.N - 1 : 0);
        return 0;
    }
}

const s = new Solver();
s.solve();
