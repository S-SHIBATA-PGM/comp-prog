import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    X: number;
    Y: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.X = parseInt(this.arr[0]);
        this.Y = parseInt(this.arr[1]);
    }

    Solve() {
        console.log(this.Y - this.X > 0 ? Math.ceil((this.Y - this.X) / 10) : 0);
        return 0;
    }
}

let s = new Solver();
s.Solve();

