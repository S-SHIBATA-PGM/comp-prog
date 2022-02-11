import fs = require("fs");

const SCALE: 1000 = 1000;
const UN: "UNSATISFIABLE" = "UNSATISFIABLE";

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    W: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.W = parseInt(this.arr[2], 10) * SCALE;
    }

    solve()
    {
        if (Math.ceil(this.W / this.B) > (this.W / this.A | 0)) console.log(UN);
        else console.log(Math.ceil(this.W / this.B), this.W / this.A | 0);
        return 0;
    }
}

const s = new Solver();
s.solve();
