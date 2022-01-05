import fs = require('fs');

class Solver
{
    private input: string;
    private n: number;

    const coefficient = 1.8;
    const intersept = 32.0;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');
        this.n = parseInt(this.input.split('\n')[0]);
    }

    Solve()
    {
        console.log(this.coefficient * this.n + this.intersept);
        return 0;
    }
}

var s = new Solver();
s.Solve();

