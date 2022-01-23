import fs = require("fs");

const STRONG: "Strong" = "Strong";
const WEAK: "Weak" = "Weak";

class Solver
{
    X: number[];
    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = this.line[0].split("").map((str) => parseInt(str, 10));
    }

    solve()
    {
        let flg = true;

        if (this.X[0] == this.X[1]
            && this.X[1] == this.X[2]
            && this.X[2] == this.X[3])
        {
            flg = false;
        }
        else if ((this.X[0] + 1) % 10 == this.X[1]
            && (this.X[1] + 1) % 10 == this.X[2]
            && (this.X[2] + 1) % 10 == this.X[3])
        {
            flg = false;
        }

        console.log(flg ? STRONG : WEAK);
        return 0;
    }
}

const s = new Solver();
s.solve();
