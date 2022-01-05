import fs = require('fs');

class Solver
{
    private input: string;
    private Height, BMI:number;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        this.Height = this.input.split('\n')[0].split(' ')[0];
        this.BMI = this.input.split('\n')[0].split(' ')[1];
    }

    Solve()
    {
        console.log(
            this.BMI * Math.pow(this.Height / 100, 2));
    }
}

var s = new Solver();
s.Solve();

