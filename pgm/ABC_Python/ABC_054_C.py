from sys import stdin


def dfs(e, ans, graph, done, N):
    if sum(done) == N:
        ans += 1
        return ans
    for s in graph[e]:
        if not done[s]:
            done[s] = True
            ans = dfs(s, ans, graph, done, N)
            done[s] = False
    return ans


def main():
    lines = stdin.readlines()
    N, M = map(int, lines[0].split())
    graph = []
    for i in range(N):
        graph.append([])
    for i in range(1, M + 1):
        a, b = map(int, lines[i].split())
        # 0-based indexing
        graph[a - 1].append(b - 1)
        graph[b - 1].append(a - 1)
    ans = 0
    done = [False] * N
    done[0] = True
    print(dfs(0, ans, graph, done, N))
    return


main()
