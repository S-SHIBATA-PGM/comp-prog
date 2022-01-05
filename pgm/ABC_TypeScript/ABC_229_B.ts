import fs = require("fs");

const EASY: string = "Easy";
const HARD: string = "Hard";

class Solver
{
    A: number[];
    B: number[];
    arr: string[];
    line: string[];

    digit: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.digit = Math.max(this.arr[0].length, this.arr[1].length);
        this.A = this.arr[0]
            .padStart(this.digit, "0")
            .split("").map((str) => parseInt(str, 10));
        this.B = this.arr[1]
            .padStart(this.digit, "0")
            .split("").map((str) => parseInt(str, 10));
    }

    solve()
    {
        let flg = false;
        for (let i = 0, lng = this.A.length; i < lng; i++)
        {
            if (10 <= this.A[i] + this.B[i])
            {
                flg = true;
                break;
            }
        }
        console.log(flg ? HARD : EASY);
        return 0;
    }
}

const s = new Solver();
s.solve();
