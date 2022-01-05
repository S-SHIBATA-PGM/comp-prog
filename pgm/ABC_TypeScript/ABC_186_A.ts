import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    W: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.W = parseInt(this.arr[1], 10);
    }

    solve()
    {
        console.log(this.N / this.W | 0);
        return 0;
    }
}

const s = new Solver();
s.solve();
