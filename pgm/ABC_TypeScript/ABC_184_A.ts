import fs = require("fs");

class Solver
{
    line: string[];

    a: number;
    b: number;
    c: number;
    d: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        [this.a, this.b]
            = this.line[0].split(" ").map((str) => parseInt(str, 10));
        [this.c, this.d]
            = this.line[1].split(" ").map((str) => parseInt(str, 10));
    }

    solve()
    {
        console.log(this.a * this.d - this.b * this.c);
        return 0;
    }
}

const s = new Solver();
s.solve();
