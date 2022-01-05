import fs = require("fs");

const Lost: string = "Lost";
const Won: string = "Won";

class Solver
{
    line: string[];

    C: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.C = this.line[0];
    }

    solve()
    {
        const st = new Set(this.C);
        console.log(st.size == 1 ? Won : Lost);
        return 0;
    }
}

const s = new Solver();
s.solve();
