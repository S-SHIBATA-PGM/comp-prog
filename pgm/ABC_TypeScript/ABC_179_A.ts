import fs = require("fs");

const ES: string = "es";
const S: string = "s";

class Solver
{
    line: string[];

    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
    }

    solve()
    {
        console.log(this.S.slice(-1) === "s" ? this.S + ES : this.S + S);
        return 0;
    }
}

const s = new Solver();
s.solve();
