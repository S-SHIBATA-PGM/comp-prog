import fs = require("fs");

const MINUS: string = "-";
const PLUS: string = "+";

class Solver
{
    arr: string[];
    line: string[];

    X: string;
    Y: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(".");
        this.X = this.arr[0];
        this.Y = parseInt(this.arr[1]);
    }

    solve()
    {
        if (0 <= this.Y && this.Y <= 2)
        {
            console.log(this.X + MINUS);
        }
        else if (3 <= this.Y && this.Y <= 6)
        {
            console.log(this.X);
        }
        else
        {
            console.log(this.X + PLUS);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
