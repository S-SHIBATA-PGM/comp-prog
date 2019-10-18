N, M = map(int, input().split())

graph = [[] for i in range(N)]

for i in range(M):
    ai, bi = map(int, input().split())
    ai -= 1
    bi -= 1
    graph[ai].append(bi)
    graph[bi].append(ai)

rank = [N] * N
low = [N] * N
visited = [False] * N


def dfs(k, pos, parent):
    rank[pos] = k
    low[pos] = k

    k += 1

    visited[pos] = True

    for i in graph[pos]:
        if not visited[i]:
            k = dfs(k, i, pos)
            low[pos] = min(low[pos], low[i])
        elif i != parent:
            low[pos] = min(low[pos], low[i])

    return k


def main():
    dfs(0, 0, -1)

    ans = 0

    for i in range(N):
        for j in graph[i]:
            if rank[j] < low[i]:
                ans += 1

    print(ans)
    return


main()
