from sys import stdin


def main():
    N, M = map(int, input().split())
    *X, = map(int, stdin.readline().split())
    X.sort()
    D = [X[i + 1] - X[i] for i in range(M - 1)]
    D.sort()
    print(0 if M <= N else sum(D[: M - N]))
    return


main()
