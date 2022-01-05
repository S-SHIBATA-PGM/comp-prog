import fs = require("fs");

const AC: string = "AC";
const HELLO: string = "Hello,World!";
const WA: string = "WA";

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
        console.log(HELLO === this.S ? AC : WA);
        return 0;
    }
}

const s = new Solver();
s.solve();
