def main():
    N, x, *a = map(int, open(0).read().split())
    ans = a[0] - x if x < a[0] else 0
    pre = min(a[0], x)
    for i in range(1, N):
        dif = pre + a[i] - x
        if 0 < dif:
            ans += dif
            a[i] -= dif
        pre = a[i]
    print(ans)
    return


main()

