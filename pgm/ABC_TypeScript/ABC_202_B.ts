import fs = require("fs");

class Solver
{
    line: string[];

    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0].split("").reverse().join("");
    }

    solve()
    {
        console.log(
            this.S.replace(/6/g, "_").replace(/9/g, "6").replace(/_/g, "9"));
        return 0;
    }
}

const s = new Solver();
s.solve();
