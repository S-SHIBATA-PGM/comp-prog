from sys import stdin

lines = stdin.readlines

l = [[int(i) - 1 for i in line.split()] for line in lines()]

N, M = l[0][0] + 1, l[0][1] + 1


def main():
    f = [False] * N
    t = [False] * N

    for a, b in l[1:]:
        if a == 0:
            f[b] = True
        elif b == N - 1:
            t[a] = True

    for a, b in zip(f, t):
        if a and b:
            print("POSSIBLE")
            return
    else:
        print("IMPOSSIBLE")

    return


main()
