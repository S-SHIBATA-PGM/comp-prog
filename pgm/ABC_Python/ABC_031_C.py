def main():
    N, *a = map(int, open(0).read().split())
    ans = -float('inf')
    for i in range(N):
        first = int()
        second = -float('inf')
        for j in range(N):
            if j == i:
                continue
            f = sum(a[min(i, j): max(i, j) + 1: 2])
            s = sum(a[min(i, j) + 1: max(i, j) + 1: 2])
            if second < s:
                first = f
                second = s
        ans = max(ans, first)
    print(ans)
    return


main()

