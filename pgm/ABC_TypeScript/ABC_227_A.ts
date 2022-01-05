import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    K: number;
    A: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0]);
        this.K = parseInt(this.arr[1]);
        this.A = parseInt(this.arr[2]);
    }

    solve()
    {
        console.log(
            (this.A + this.K - 1) % this.N > 0 ?
                (this.A + this.K - 1) % this.N : this.N);
        return 0;
    }
}

const s = new Solver();
s.solve();
