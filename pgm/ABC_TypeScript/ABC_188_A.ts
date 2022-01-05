import fs = require("fs");

const No: string = "No";
const Yes: string = "Yes";

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
        this.X = parseInt(this.arr[0], 10);
        this.Y = parseInt(this.arr[1], 10);
    }

    solve()
    {
        console.log(
            Math.max(this.X, this.Y) < Math.min(this.X, this.Y) + 3 ? Yes : No);
        return 0;
    }
}

const s = new Solver();
s.solve();
