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

    AB: Array<Array<number>>;

    N: number;
    W: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.intArray()[0];
        this.AB = new Array(this.N);
        for (let i = 0; i < this.N; i++) this.AB[i] = this.fs.intArray();
    }

    solve()
    {
        let ans = 0;
        for (let i = 0; i < this.N; i++)
        {
            ans += this.AB[i][1] * (this.AB[i][1] + 1);
            ans -= this.AB[i][0] * (this.AB[i][0] - 1);
        }
        console.log(ans / 2);
        return 0;
    }
}

const s = new Solver();
s.solve();
