import fs = require("fs");

const B: "#" = "#";

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
    integer(s: string): number
    {
        return parseInt(s, 10);
    }
    intArray()
    {
        return this.next().split(" ").map((s) => this.integer(s));
    }
    stringArray()
    {
        return this.next().split("");
    }
}

class Solver
{
    fs: FastScanner;

    S: Array<Array<string>>;

    H: number;
    W: number;
    X: number;
    Y: number;

    constructor()
    {
        this.fs = new FastScanner();
        [this.H, this.W, this.X, this.Y] = this.fs.intArray();
        this.X--;
        this.Y--;
        this.S = Array.from(Array(this.H), (_) => Array(this.W));
        for (let i = 0; i < this.H; i++) this.S[i] = this.fs.stringArray();
    }

    solve()
    {
        let ans = 0;
        // 左右上下
        for (let i = this.X; 0 <= i && B !== this.S[i][this.Y]; i--) ans++;
        for (let i = this.X; i < this.H && B !== this.S[i][this.Y]; i++) ans++;
        for (let i = this.Y; 0 <= i && B !== this.S[this.X][i]; i--) ans++;
        for (let i = this.Y; i < this.W && B !== this.S[this.X][i]; i++) ans++;
        console.log(ans - 3);
        return 0;
    }
}

const s = new Solver();
s.solve();
