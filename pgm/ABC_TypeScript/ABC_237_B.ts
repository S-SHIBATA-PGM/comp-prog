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

    B: Array<Array<number>>;

    H: number;
    W: number;

    constructor()
    {
        this.fs = new FastScanner();
        [this.H, this.W] = this.fs.intArray();
        this.B = Array.from(Array(this.W), (_) => Array(this.H));
        for (let i = 0; i < this.H; i++)
        {
            const row = this.fs.intArray();
            for (let j = 0; j < this.W; j++) this.B[j][i] = row[j];
        }
    }

    solve()
    {
        for (let i = 0; i < this.W; i++) console.log(this.B[i].join(" "));
        return 0;
    }
}

const s = new Solver();
s.solve();
