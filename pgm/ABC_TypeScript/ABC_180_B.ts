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

    x: Array<number>;

    N: number;
    W: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.intArray()[0];
        this.x = this.fs.intArray().map(Math.abs);
    }

    solve()
    {
        const taxicab = this.x.reduce((pre, cur) => pre + cur);
        const euclidean
            = Math.sqrt(this.x.map((i) => Math.pow(i, 2))
                .reduce((pre, cur) => pre + cur));
        const chebyshev = this.x.reduce((pre, cur) => pre < cur ? cur : pre);
        console.log(taxicab);
        console.log(euclidean);
        console.log(chebyshev);
        return 0;
    }
}

const s = new Solver();
s.solve();

