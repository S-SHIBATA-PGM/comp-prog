import fs = require("fs");

const NO: number = -1;
const SCALE: 100 = 100;

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

    N: number;
    X: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.X = this.fs.integer();
    }

    solve()
    {
        let a = 0;
        let ans = NO;
        for (let i = 0; i < this.N; i++)
        {
            const V = this.fs.integer();
            const P = this.fs.integer();
            a += V * P;
            if (this.X * SCALE < a)
            {
                ans = i + 1;
                break;
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
