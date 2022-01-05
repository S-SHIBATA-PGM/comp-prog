import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    A: number;
    X: number;
    Y: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0]);
        this.A = parseInt(this.arr[1]);
        this.X = parseInt(this.arr[2]);
        this.Y = parseInt(this.arr[3]);
    }

    solve()
    {
        if (this.N <= this.A)
        {
            console.log(this.X * this.N);
        }
        else
        {
            console.log(this.X * this.A + this.Y * (this.N - this.A));
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
