import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

function arrays(arr: string[], start: number, end: number): string[][]
{
    return arr.slice(start, end).map((str) => str.split(" "));
}

function integers(x: string[][] | string[] | string): any
{
    return x instanceof (Array) ? x.map((x) => integers(x)) : retInt(x);
}

function retInt(str: string)
{
    return parseInt(str, 10);
}

class Solver
{
    a: number[][];
    arr: string[][];
    grp: Array<number>;
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0]);
        this.arr = arrays(this.line, 1, this.N);
        this.a = integers(this.arr);
        this.grp = new Array(this.N).fill(0);
    }

    solve()
    {
        for (let i = 0; i < this.N - 1; i++)
        {
            this.grp[--this.a[i][0]]++;
            this.grp[--this.a[i][1]]++;
        }

        console.log(
            this.grp.reduce((prev, curr) => Math.max(prev, curr)) === this.N - 1
                ? YES
                : NO);

        return 0;
    }
}

const s = new Solver();
s.solve();
