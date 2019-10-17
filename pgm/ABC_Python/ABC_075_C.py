def judge(visited):
    for v in visited:
        if not v:
            return True
    else:
        # 完走 橋ではない
        return False


def main():
    def dfs(visited, n):
        visited[n] = True

        for k, v in enumerate(graph[n]):
            if not v:
                continue

            if visited[k]:
                continue

            visited = dfs(visited, k)

        return visited

    N, M = map(int, input().split())

    graph = [[False for j in range(N)] for i in range(N)]

    am = [0] * M
    bm = [0] * M

    for i in range(M):
        # 0-indexed
        ai, bi = map(int, input().split())
        ai -= 1
        bi -= 1

        am[i] = ai
        bm[i] = bi

        graph[ai][bi] = True
        graph[bi][ai] = True

    ans = 0

    for ai, bi in zip(am, bm):
        graph[ai][bi] = False
        graph[bi][ai] = False

        # 訪問済 All False
        if judge(dfs([False] * N, 0)):
            ans += 1

        # 元に戻す
        graph[ai][bi] = True
        graph[bi][ai] = True

    print(ans)
    return


main()
