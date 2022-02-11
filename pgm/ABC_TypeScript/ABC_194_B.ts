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

class Solver
{
    fs: FastScanner;

    A: Array<number>;
    B: Array<number>;
    a: Array<number>;
    b: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.A = new Array<number>(this.N);
        this.B = new Array<number>(this.N);
        for (let i = 0; i < this.N; i++)
        {
            this.A[i] = this.fs.integer();
            this.B[i] = this.fs.integer();
        }
    }

    solve()
    {
        this.a = JSON.parse(JSON.stringify(this.A));
        this.b = JSON.parse(JSON.stringify(this.B));
        this.a.sort((pre, cur) => pre - cur);
        this.b.sort((pre, cur) => pre - cur);
        if (this.A.indexOf(this.a[0]) === this.B.indexOf(this.b[0]))
        {
            console.log(
                Math.min(
                    Math.max(this.a[0], this.b[1])
                    , Math.max(this.a[1], this.b[0])
                    , this.a[0] + this.b[0]));
        }
        else
        {
            console.log(Math.max(this.a[0], this.b[0]));
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
