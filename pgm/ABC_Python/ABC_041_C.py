from operator import itemgetter
from sys import stdin


def main():
    lines = stdin.readlines()
    a = [[k, int(v)] for k, v in enumerate(lines[1].split())]
    a.sort(key=itemgetter(1), reverse=True)
    print("\n".join(str(ai[0] + 1) for ai in a))
    return


main()

