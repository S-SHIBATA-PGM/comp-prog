import fs = require("fs");

class Queue<T>
{
    private data: Array<any> = [];
    front(item: T)
    {
        this.data.unshift(item);
    }
    pop(): T | undefined
    {
        return this.data.shift();
    }
    push(item: T)
    {
        this.data.push(item);
    }
    size()
    {
        return this.data.length;
    }
}

class Solver
{
    A: number[];
    arr: string[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[1].split(" ");
        this.N = parseInt(this.line[0], 10);
        this.A = this.arr.map((str) => parseInt(str, 10));
    }

    solve()
    {
        const queue = new Queue<number>();
        queue.push(360);
        for (let i = 0; i < this.N; i++)
        {
            while (queue.size())
            {
                const cur = queue.pop() as number;
                if (this.A[i] < cur)
                {
                    queue.push(this.A[i]);
                    queue.front(cur - this.A[i]);
                    break;
                }
                else
                {
                    queue.push(cur);
                    this.A[i] -= cur;
                }
            }
        }
        let ans = 0;
        while (queue.size())
        {
            const cur = queue.pop() as number;
            if (ans < cur) ans = cur;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
