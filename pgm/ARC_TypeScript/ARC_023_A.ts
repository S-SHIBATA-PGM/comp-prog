import fs = require('fs');

class Solver
{
    private input: string;
    private y, m, d, before, after: number;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        this.y = parseInt(this.input.split('\n')[0]);
        this.m = parseInt(this.input.split('\n')[1]);
        this.d = parseInt(this.input.split('\n')[2]);

        this.y =
            (this.m == 1 || this.m == 2) ? this.y - 1 :
                this.y;

        this.m =
            this.m == 1 ? 13 :
                this.m == 2 ? 14 :
                    this.m;
    }

    Solve()
    {
        this.before =
            (365 * this.y)
                + Math.floor(this.y / 4)
                    - Math.floor(this.y / 100)
                        + Math.floor(this.y / 400)
                            + Math.floor(
                                306 * (this.m + 1) / 10)
                                    + this.d
                                        - 429;

        this.y = 2014;
        this.m = 5;
        this.d = 17;

        this.after =
            (365 * this.y)
                + Math.floor(this.y / 4)
                    - Math.floor(this.y / 100)
                        + Math.floor(this.y / 400)
                            + Math.floor(
                                306 * (this.m + 1) / 10)
                                    + this.d
                                        - 429;

        console.log(this.after - this.before);
    }
}

var s = new Solver();
s.Solve();

