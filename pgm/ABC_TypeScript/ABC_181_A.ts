import fs = require("fs");

const BLACK: string = "Black";
const WHITE: string = "White";

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
    }

    solve()
    {
        console.log(this.N % 2 ? BLACK : WHITE);
        return 0;
    }
}

const s = new Solver();
s.solve();
