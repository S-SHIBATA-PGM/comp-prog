import fs = require("fs");

class Solver
{
    S: string[];
    arr: string[];
    line: string[];

    L: number;
    R: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.L = parseInt(this.arr[0], 10);
        this.R = parseInt(this.arr[1], 10);
        this.S = this.line[1].split("");
    }

    solve()
    {
        console.log(
            this.S.slice(0, this.L - 1).join("")
            + this.S.slice(this.L - 1, this.R).reverse().join("")
            + this.S.slice(this.R).join(""));
        return 0;
    }
}

const s = new Solver();
s.solve();
