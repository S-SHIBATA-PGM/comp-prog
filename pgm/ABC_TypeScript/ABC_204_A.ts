import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    x: number;
    y: number;
    input: string;

    constructor() {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.x = parseInt(this.arr[0], 10);
        this.y = parseInt(this.arr[1], 10);
    }

    solve()
    {
        if (this.x === this.y)
        {
            console.log(this.x);
        }
        else
        {
            console.log(3 - this.x - this.y);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
