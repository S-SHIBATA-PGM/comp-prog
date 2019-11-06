INF = float('inf')


def main():
    graph = []
    N, *B = map(int, open(0).read().split())
    for i in range(N):
        graph.append([])
    for i, b in enumerate(B):
        # 0-indexed
        graph[b - 1].append(i + 1)
    B = [0] * N
    for i in range(N - 1, -1, -1):
        if len(graph[i]) == 0:
            B[i] = 1
        else:
            MAX_Bi = -1
            MIN_Bi = INF
            for gi in graph[i]:
                MAX_Bi = max(MAX_Bi, B[gi])
                MIN_Bi = min(MIN_Bi, B[gi])
            B[i] = MAX_Bi + MIN_Bi + 1
    print(B[0])
    return


main()

