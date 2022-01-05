import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    X: number;
    T: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.X = parseInt(this.arr[1], 10);
        this.T = parseInt(this.arr[2], 10);
    }

    solve()
    {
        console.log(
            this.N % this.X
                ? ((this.N / this.X | 0) + 1) * this.T
                : (this.N / this.X | 0) * this.T);
        return 0;
    }
}

const s = new Solver();
s.solve();
