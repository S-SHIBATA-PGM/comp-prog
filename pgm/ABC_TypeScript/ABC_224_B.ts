import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

function integers(arr: string[], start: number, end: number): number[][]
{
    const arrs = arr.slice(start, end).map((str) => str.split(" "));
    return arrs.map((x) => x.map((str) => parseInt(str, 10)));
}

class Solver
{
    arr: string[];
    line: string[];

    A: number[][];

    H: number;
    W: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.H = parseInt(this.arr[0], 10);
        this.W = parseInt(this.arr[1], 10);
        this.A = integers(this.line, 1, this.H + 1);
    }

    solve()
    {
        let flg = false;

        for (let i = 0; i < this.H - 1; i++)
        {
            for (let j = 0; j < this.W - 1; j++)
            {
                if (this.A[i + 1][j] + this.A[i][j + 1]
                    < this.A[i][j] + this.A[i + 1][j + 1])
                {
                    flg = true;
                    break;
                }
            }
            if (flg) break;
        }

        console.log(flg ? NO : YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
