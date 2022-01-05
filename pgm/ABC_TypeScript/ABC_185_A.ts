import fs = require("fs");

class Solver
{
    A: number[];
    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.A = this.line[0].split(" ").map((str) => parseInt(str, 10));
    }

    solve()
    {
        console.log(this.A.reduce((prev, curr) => Math.min(prev, curr)));
        return 0;
    }
}

const s = new Solver();
s.solve();
