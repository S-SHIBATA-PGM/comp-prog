N, A, B, C = map(int, input().split())
L = [int(input()) for i in range(N)]


def dfs(cur, a, b, c):
    if cur == N:
        return abs(a - A) + abs(b - B) + abs(c - C) - 30\
            if 0 < min(a, b, c) else int(1e9+7)

    ret1 = dfs(cur + 1, a + L[cur], b, c) + 10
    ret2 = dfs(cur + 1, a, b + L[cur], c) + 10
    ret3 = dfs(cur + 1, a, b, c + L[cur]) + 10
    ret4 = dfs(cur + 1, a, b, c)

    return min(ret1, ret2, ret3, ret4)


def main():
    print(dfs(0, 0, 0, 0))


main()
