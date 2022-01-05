import fs = require("fs");

const BEGINNER: number = 40;
const INTERMEDIATE: number = 70;
const ADVANCED: number = 90;
const expert: string = "expert";

class Solver
{
    line: string[];

    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = parseInt(this.line[0]);
    }

    solve()
    {
        if (ADVANCED <= this.X)
        {
            console.log(expert);
        }
        else if (INTERMEDIATE <= this.X)
        {
            console.log(ADVANCED - this.X);
        }
        else if (BEGINNER <= this.X)
        {
            console.log(INTERMEDIATE - this.X);
        }
        else
        {
            console.log(BEGINNER - this.X);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
