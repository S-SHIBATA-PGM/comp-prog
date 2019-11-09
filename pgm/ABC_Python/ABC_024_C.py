from sys import stdin


def main():
    lines = stdin.readlines()
    N, D, K = map(int, lines[0].split())
    L = [0] * D
    R = [0] * D
    S = [0] * K
    T = [0] * K
    ans = [0] * K
    for i, j in enumerate(range(1, D + 1)):
        L[i], R[i] = map(int, lines[j].split())
    for i, j in enumerate(range(D + 1, D + K + 1)):
        S[i], T[i] = map(int, lines[j].split())
    for d in range(D):
        for k in range(K):
            if ans[k]:
                continue
            if L[d] <= S[k] <= R[d]:
                if S[k] < T[k]:
                    S[k] = min(T[k], R[d])
                else:
                    S[k] = max(T[k], L[d])
            if S[k] == T[k]:
                ans[k] = d + 1
    print("\n".join([str(a) for a in ans]))


main()

