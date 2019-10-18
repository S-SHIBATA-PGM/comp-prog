N, M = map(int, input().split())

graph = [[] for i in range(N)]

for i in range(M):
    ai, bi = map(lambda x: int(x) - 1, input().split())
    graph[ai].append(bi)
    graph[bi].append(ai)

low = [N] * N
rank = [N] * N
visited = [False] * N


def dfs(k, pos, parent):
    low[pos] = k
    rank[pos] = k

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

    print(sum(
        [1 for i in range(N) for j in graph[i] if rank[j] < low[i]]))

    return


main()
