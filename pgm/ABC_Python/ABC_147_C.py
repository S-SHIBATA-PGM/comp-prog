def main():
    N = int(input())
    A = [int()] * N
    x = [[] for i in range(N)]
    y = [[] for i in range(N)]
    for i in range(N):
        A[i] = int(input())
        for j in range(A[i]):
            xij, yij = map(int, input().split())
            x[i].append(xij - 1)
            y[i].append(yij)
    ans = 0
    for b in range(1 << N):
        flg = True
        for i in range(N):
            if not b & 1 << i:
                continue
            for j in range(A[i]):
                if 1 & b >> x[i][j] ^ y[i][j]:
                    flg = False
                    break
            if not flg:
                break
        if flg:
            ans = max(ans, bin(b).count("1"))
    print(ans)
    return


main()
