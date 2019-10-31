def main():
    N, x, *an = map(int, open(0).read().split())
    ans = 0
    for i in range(N - 1):
        if x < an[i] + an[i + 1]:
            cur = an[i] + an[i + 1] - x
            ans += cur
            if an[i + 1] <= cur:
                an[i + 1] = 0
            else:
                an[i + 1] -= cur
    print(ans)
    return


main()

