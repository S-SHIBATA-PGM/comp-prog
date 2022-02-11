import fs = require("fs");

const A: number = "A".charCodeAt(0);
const NO: "No" = "No";
const YES: "Yes" = "Yes";
const Z: number = "Z".charCodeAt(0);
const a: number = "a".charCodeAt(0);
const z: number = "z".charCodeAt(0);


class Solver
{
    line: string[];

    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
    }

    solve()
    {
        const lng = this.S.length;
        let flg = true;
        for (let i = 0; i < lng; i++)
        {
            if (i % 2
                && (this.S.charCodeAt(i) < A || Z < this.S.charCodeAt(i)))
            {
                flg = false;
                break;
            }
            if (!(i % 2)
                && (this.S.charCodeAt(i) < a || z < this.S.charCodeAt(i)))
            {
                flg = false;
                break;
            }
        }
        console.log(flg ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
