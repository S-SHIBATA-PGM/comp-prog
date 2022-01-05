import fs = require("fs");

const SHP: string = "#";
const No: string = "No";
const Yes: string = "Yes";

class Solver
{
    line: string[];

    S1: string;
    S2: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S1 = this.line[0];
        this.S2 = this.line[1];
    }

    Solve()
    {
        if (this.S1.charAt(0) === SHP
            && this.S1.charAt(1) !== SHP
            && this.S2.charAt(0) !== SHP
            && this.S2.charAt(1) === SHP) {
            console.log(No);
        } else if (this.S1.charAt(0) !== SHP
            && this.S1.charAt(1) === SHP
            && this.S2.charAt(0) === SHP
            && this.S2.charAt(1) !== SHP) {
            console.log(No);
        } else {
            console.log(Yes);
        }
        return 0;
    }
}

let s = new Solver();
s.Solve();

