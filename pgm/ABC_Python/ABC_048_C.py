def main():
    N, x, *a = map(int, open(0).read().split())
    ans = 0
    pre = a[0]
    for i in range(1, N):
        if x < pre + a[i]:
            cur = pre + a[i] - x
            ans += cur
            a[i] = a[i] - cur if cur < a[i] else 0
        pre = a[i]
    print(ans)
    return


main()

