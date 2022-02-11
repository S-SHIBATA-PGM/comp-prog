import fs = require("fs");

class Solver
{
    A: Array<number>;
    arr: string[];

    H: number;
    W: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.arr = this.input.split(/ |\n/);
        this.H = parseInt(this.arr[0], 10);
        this.W = parseInt(this.arr[1], 10);
        this.A
            = this.arr.slice(2, this.H * this.W + 2)
                .map((str) => parseInt(str, 10));
    }

    solve()
    {
        const mn = this.A.reduce((pre, cur) => pre < cur ? pre : cur);
        console.log(
            this.A.reduce((pre, cur) => pre + cur) - this.H * this.W * mn);
        return 0;
    }
}

const s = new Solver();
s.solve();
