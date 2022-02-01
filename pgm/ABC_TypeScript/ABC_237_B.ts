import fs = require("fs");

class FastScanner
{
    inputs: string[];
    index = 0;
    constructor()
    {
        this.inputs = fs.readFileSync("/dev/stdin", "utf8").split(/ |\n/);
    }
    bigint(): BigInt
    {
        return BigInt(this.inputs[this.index++]);
    }
    integer(): number
    {
        return parseInt(this.inputs[this.index++], 10);
    }
    number(): number
    {
        return Number(this.inputs[this.index++]);
    }
    string()
    {
        return this.inputs[this.index++];
    }
}

function transpose<T>(table: T[][]): T[][]
{
    return table
        .sort((a, b) => b.length - a.length)[0]
        .map((_, idx) => table.map((row) => row[idx]))
        .map((row) => row.filter((v) => v));
}

class Solver
{
    fs: FastScanner;

    A: Array<Array<number>>;

    H: number;
    W: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.H = this.fs.integer();
        this.W = this.fs.integer();
        this.A = Array.from(new Array(this.H), _ => new Array(this.W).fill(0));
        for (let i = 0; i < this.H; i++)
        {
            for (let j = 0; j < this.W; j++)
            {
                this.A[i][j] = this.fs.integer();
            }
        }
    }

    solve()
    {
        const B = transpose(this.A);
        for (let i = 0; i < this.W; i++)
        {
            console.log(B[i].join(" "));
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
