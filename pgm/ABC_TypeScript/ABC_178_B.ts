import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    a: bigint;
    b: bigint;
    c: bigint;
    d: bigint;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.a = BigInt(this.arr[0]);
        this.b = BigInt(this.arr[1]);
        this.c = BigInt(this.arr[2]);
        this.d = BigInt(this.arr[3]);
    }

    solve()
    {
        console.log(
            [this.a * this.c, this.a * this.d, this.b * this.c, this.b * this.d]
                .reduce((pre, cur) => pre < cur ? cur : pre).toString());
        return 0;
    }
}

const s = new Solver();
s.solve();
