from sys import stdin


def main():
    lines = stdin.readlines()
    N = int(lines[0])
    Tn = [0] * N
    An = [0] * N
    for i in range(N):
        Tn[i], An[i] = map(int, lines[i + 1].split())
    T = 1
    A = 1
    for Ti, Ai in zip(Tn, An):
        n = max(-(-T // Ti), -(-A // Ai))
        T = n * Ti
        A = n * Ai
    print(T + A)
    return


main()

