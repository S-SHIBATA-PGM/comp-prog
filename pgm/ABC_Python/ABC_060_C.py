from sys import stdin


def main():
    lines = stdin.readlines()
    T = int(lines[0].split()[1])
    tn = [int(ti) for ti in lines[1].split()]
    print(tn[-1] + T - sum(t2 - t1 - T
                           for t1, t2
                           in zip(tn[0:], tn[1:]) if t2 - t1 > T))
    return


main()

