import fs = require("fs");

const NG: -1 = -1;

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    C: number;
    D: number;

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.C = parseInt(this.arr[2], 10);
        this.D = parseInt(this.arr[3], 10);
    }

    solve()
    {
        if (this.C * this.D <= this.B) console.log(NG);
        else console.log(Math.ceil(this.A / (this.C * this.D - this.B)));
        return 0;
    }
}

const s = new Solver();
s.solve();
