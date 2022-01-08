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
        this.N = parseInt(this.line[0]);
    }

    solve()
    {
        const L = new Set(this.line.slice(1, this.N + 1));
        console.log(L.size);
        return 0;
    }
}

const s = new Solver();
s.solve();
