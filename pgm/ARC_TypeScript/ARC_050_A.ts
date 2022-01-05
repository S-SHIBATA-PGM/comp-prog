import fs = require('fs');

class Solver
{
    private input: string;
    private C, c: string;

    const interval = 32;
    const Yes = "Yes";
    const No = "No";

    constructor()
    {

        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        //C c
        var line = this.input.split(' ');
        this.C = line[0];
        this.c = line[1];
    }

    Solve()
    {
        // 26Characters A-Z 65-90
        // 26Characters a-z 97-122
        // Between 6Characters 91-96 [  \  ]  ^  _  `

        var ans = (
            (this.C.charCodeAt(0)
                + this.interval == this.c.charCodeAt(0))
            ? this.Yes
            : this.No);

        console.log(ans);
    }
}

var s = new Solver();
s.Solve();

