import fs = require("fs");

const Aoki: string = "Aoki";
const Takahashi: string = "Takahashi";

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
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.C = parseInt(this.arr[2], 10);
    }

    solve()
    {
        if (this.C == 0)
        {
            console.log(this.A <= this.B ? Aoki : Takahashi);
        }
        else
        {
            console.log(this.B <= this.A ? Takahashi : Aoki);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
