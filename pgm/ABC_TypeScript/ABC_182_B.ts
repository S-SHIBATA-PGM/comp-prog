import fs = require("fs");

const start: 2 = 2;
const end: 1000 = 1000;

class FastScanner
{
    line: string[];
    index = 0;
    constructor()
    {
        this.line = fs.readFileSync("/dev/stdin", "utf8").split("\n");
    }
    next()
    {
        return this.line[this.index++];
    }
    bigint(s: string): BigInt
    {
        return BigInt(s);
    }
    integer(s: string): number
    {
        return parseInt(s, 10);
    }
    number(s: string): number
    {
        return Number(s);
    }
    intArray()
    {
        return this.next().split(" ").map((s) => this.integer(s));
    }
    numberArray()
    {
        return this.next().split(" ").map((s) => this.number(s));
    }
    stringArray()
    {
        return this.next().split(" ");
    }
}

class Solver
{
    fs: FastScanner;

    A: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.intArray()[0];
        this.A = this.fs.intArray();
    }

    solve()
    {
        let freq = 0;
        let ans = 0;
        const mx = this.A.reduce((pre, cur) => pre < cur ? cur : pre);
        for (let i = start; i <= end; i++)
        {
            let f = 0;
            for (let j = 0; j < this.N && j <= mx; j++)
            {
                if (!(this.A[j] % i)) f++;
            }
            if (freq < f)
            {
                freq = f;
                ans = i;
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();

