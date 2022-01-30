import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    S: string;
    a: number;
    b: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
        this.arr = this.line[1].split(" ");
        this.a = parseInt(this.arr[0], 10);
        this.b = parseInt(this.arr[1], 10);
    }

    solve()
    {
        console.log(
            this.S.slice(0, this.a - 1)
            + this.S[this.b - 1]
            + this.S.slice(this.a, this.b - 1)
            + this.S[this.a - 1]
            + this.S.slice(this.b));
        return 0;
    }
}

const s = new Solver();
s.solve();
