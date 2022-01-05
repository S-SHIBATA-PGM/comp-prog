import fs = require("fs");

const HIGH: string = ":(";
const PRICE: number = 206;
const SOSO: string = "so-so";
const TAX: number = 1.08;
const YAY: string = "Yay!";

class Solver
{
    line: string[];

    N: number;
    x: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.x = this.N * TAX | 0;
    }

    solve()
    {
        console.log(PRICE < this.x ? HIGH : PRICE == this.x ? SOSO : YAY);
        return 0;
    }
}

const s = new Solver();
s.solve();
