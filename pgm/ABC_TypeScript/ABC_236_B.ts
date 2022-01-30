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
        const lst = new Array(this.N).fill(0);
        for (let i = 0, len = this.A.length; i < len; i++) lst[this.A[i] - 1]++;
        console.log(lst.indexOf(3) + 1);
        return 0;
    }
}

const s = new Solver();
s.solve();
