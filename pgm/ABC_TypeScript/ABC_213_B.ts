import fs = require("fs");

class Solver
{
    A: number[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.A = this.line[1].split(" ").map((str) => parseInt(str, 10));
    }

    solve()
    {
        const lst = Array.from(this.A).sort((a, b) => b - a);
        console.log(this.A.indexOf(lst[1]) + 1);
        return 0;
    }
}

const s = new Solver();
s.solve();
