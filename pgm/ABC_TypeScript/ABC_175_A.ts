import fs = require("fs");

const SUNNY: string = "S";
const RAINY: string = "R";

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
        let num = 0;
        let ans = 0;
        if (this.S.charAt(0) === RAINY)
        {
            num++;
            ans = Math.max(ans, num);
        }
        else
        {
            num = 0;
        }

        if (this.S.charAt(1) === RAINY)
        {
            num++;
            ans = Math.max(ans, num);
        }
        else
        {
            num = 0;
        }

        if (this.S.charAt(2) === RAINY)
        {
            num++;
            ans = Math.max(ans, num);
        }
        else
        {
            num = 0;
        }

        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
