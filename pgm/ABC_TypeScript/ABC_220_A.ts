import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    C: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0]);
        this.B = parseInt(this.arr[1]);
        this.C = parseInt(this.arr[2]);
    }

    solve()
    {
        if (!(this.A % this.C))
        {
            console.log(this.A);
        }
        else if (this.A <= this.A + this.C - this.A % this.C
            && this.A + this.C - this.A % this.C <= this.B)
        {
            console.log(this.A + this.C - this.A % this.C);
        }
        else
        {
            console.log(-1);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
