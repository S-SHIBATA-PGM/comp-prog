import fs = require("fs");

const INF: number = 1000000007;

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
    P: Array<number>;
    X: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.A = new Array<number>(this.N);
        this.P = new Array<number>(this.N);
        this.X = new Array<number>(this.N);
        for (let i = 0; i < this.N; i++)
        {
            this.A[i] = this.fs.integer();
            this.P[i] = this.fs.integer();
            this.X[i] = this.fs.integer() - this.A[i];
        }
    }

    solve()
    {
        if (this.X.reduce((pre, cur) => pre < cur ? cur : pre) <= 0)
        {
            console.log(-1);
        }
        else
        {
            let ans = INF;
            for (let i = 0; i < this.N; i++)
            {
                if (this.X[i] <= 0) continue;
                ans = Math.min(ans, this.P[i]);
            }
            console.log(ans);
        }

        return 0;
    }
}

const s = new Solver();
s.solve();
