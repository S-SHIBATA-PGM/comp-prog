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
        console.log(Math.ceil((-1 + Math.sqrt(1 + 8 * this.N)) / 2));
        return 0;
    }
}

const s = new Solver();
s.solve();
