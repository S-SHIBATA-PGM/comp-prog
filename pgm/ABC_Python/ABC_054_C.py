from sys import stdin
N = int()
memo = {}
graph = []


def dfs(e, done):
    if (1 << N) - 1 == done:
        return 1
    key = (e, done)
    if key in memo:
        return memo[key]
    ret = 0
    for s in graph[e]:
        if done >> s & 1:
            continue
        done ^= 1 << s
        ret += dfs(s, done)
        done ^= 1 << s
    memo[key] = ret
    return ret


def main():
    lines = stdin.readlines()
    global N
    N, M = map(int, lines[0].split())
    global graph
    graph = [[] for i in range(N)]
    for i in range(1, M + 1):
        a, b = map(lambda x: int(x) - 1, lines[i].split())
        # 0-based indexing
        graph[a].append(b)
        graph[b].append(a)
    print(dfs(0, 1))
    return


main()
