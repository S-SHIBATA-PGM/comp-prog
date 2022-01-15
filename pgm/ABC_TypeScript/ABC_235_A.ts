import fs = require("fs");

class Solver
{
    line: string[];

    a: string;
    b: string;
    c: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.a = this.line[0][0];
        this.b = this.line[0][1];
        this.c = this.line[0][2];
    }

    solve() {
        console.log(
            parseInt(this.a + this.b + this.c, 10)
            + parseInt(this.b + this.c + this.a, 10)
            + parseInt(this.c + this.a + this.b, 10));
        return 0;
    }
}

const s = new Solver();
s.solve();
