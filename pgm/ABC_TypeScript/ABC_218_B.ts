import fs = require("fs");

class Solver
{
    P: number[];
    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.P = this.line[0].split(" ").map(
            (str) => "a".charCodeAt(0) + parseInt(str, 10) - 1);
    }

    solve()
    {
        console.log(String.fromCharCode(...this.P));
        return 0;
    }
}

const s = new Solver();
s.solve();
