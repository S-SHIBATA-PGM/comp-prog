import fs = require("fs");

const SCALE: 1 = 1;

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
            this.B[i] = this.fs.integer() * SCALE;
        }
    }

    solve()
    {
        let ans = 0;
        for (let i = 0; i < this.N; i++)
        {
            for (let j = i + 1; j < this.N; j++)
            {
                const slope = (this.B[j] - this.B[i]) / (this.A[j] - this.A[i]);
                if (-SCALE <= slope && slope <= SCALE) ans++;
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
