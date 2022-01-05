import fs = require('fs');

class Solver
{
    private input: string;
    private N: number;

    const Red = "Red";
    const Blue = "Blue";

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');
        this.N = parseInt(this.input.split('\n')[0]);
    }

    Solve()
    {
        console.log(this.N % 2 == 1 ? this.Red : this.Blue);
        return 0;
    }
}

var s = new Solver();
s.Solve();

