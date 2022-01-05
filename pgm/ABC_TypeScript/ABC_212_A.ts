import fs = require("fs");

const ALLOY: string = "Alloy";
const GOLD: string = "Gold ";
const SILVER: string = "Silver";

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0]);
        this.B = parseInt(this.arr[1]);
    }

    solve()
    {
        console.log(this.A === 0 ? SILVER : this.B === 0 ? GOLD : ALLOY);
        return 0;
    }
}

const s = new Solver();
s.solve();
