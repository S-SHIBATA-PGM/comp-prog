import fs = require("fs");

const Yes: string = "Yes";
const No: string = "No";

class Solver
{
    arr: string[];
    line: string[];

    S: number;
    T: number;
    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.S = parseInt(this.arr[0]);
        this.T = parseInt(this.arr[1]);
        this.X = parseInt(this.arr[2]);
    }

    Solve()
    {
        if (this.S > this.T)
        {
            if (this.X < this.S)
            {
                if (this.S <= this.X + 24 && this.X + 24 < this.T + 24)
                {
                    console.log(Yes);
                }
                else
                {
                    console.log(No);
                }
            }
            else
            {
                if (this.S <= this.X && this.X < this.T + 24)
                {
                    console.log(Yes);
                }
                else
                {
                    console.log(No);
                }
            }
        }
        else if (this.S <= this.X  && this.X < this.T)
        {
            console.log(Yes);
        }
        else
        {
            console.log(No);
        }
        return 0;
    }
}

let s = new Solver();
s.Solve();

