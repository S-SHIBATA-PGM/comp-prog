from sys import stdin
Found = "Found"
Nothing = "Nothing"
N = 0
K = 0
T = []


def dfs(q, x):
    if q == N:
        return x == 0
    for i in range(K):
        if dfs(q + 1, x ^ T[q][i]):
            return True
    return False


def main():
    global N, K, T
    lines = stdin.readlines()
    N, K = map(int, lines[0].split())
    for Ti in lines[1:]:
        T.append([int(x) for x in Ti.split()])
    print(Found if dfs(0, 0) else Nothing)
    return


main()

