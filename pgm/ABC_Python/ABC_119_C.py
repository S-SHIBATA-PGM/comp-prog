INF = 1000000007


def dfs(cur, a, b, c):
    if cur == N:
        return abs(a - A) + abs(b - B) + abs(c - C) - 30\
            if 0 < min(a, b, c) else INF

    ret1 = dfs(cur + 1, a + l[cur], b, c) + 10
    ret2 = dfs(cur + 1, a, b + l[cur], c) + 10
    ret3 = dfs(cur + 1, a, b, c + l[cur]) + 10
    ret4 = dfs(cur + 1, a, b, c)

    return min(ret1, ret2, ret3, ret4)


N, A, B, C = map(int, input().split())

l = [int(input()) for i in range(N)]

print(dfs(0, 0, 0, 0))
