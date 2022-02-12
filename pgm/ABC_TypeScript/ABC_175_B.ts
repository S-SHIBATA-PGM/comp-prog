import fs = require("fs");

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

    L: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.intArray()[0];
        this.L = this.fs.intArray();
    }

    solve()
    {
        let ans = 0;
        for (let i = 0; i < this.N; i++)
        {
            for (let j = i + 1; j < this.N; j++)
            {
                for (let k = j + 1; k < this.N; k++)
                {
                    const e
                        = [this.L[i], this.L[j], this.L[k]]
                            .sort((pre, cur) => pre - cur);
                    if (e[2] < e[0] + e[1] && e[0] !== e[1]
                        && e[1] !== e[2] && e[0] != e[2]) ans++;
                }
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
