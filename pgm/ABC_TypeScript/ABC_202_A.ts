import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    a: number;
    b: number;
    c: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.a = parseInt(this.arr[0], 10);
        this.b = parseInt(this.arr[1], 10);
        this.c = parseInt(this.arr[2], 10);
    }

    solve()
    {
        console.log(7 * 3 - this.a - this.b - this.c);
        return 0;
    }
}

const s = new Solver();
s.solve();
