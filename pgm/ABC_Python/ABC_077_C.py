def main():
    from bisect import bisect_left
    from bisect import bisect_right

    N = int(input())

    An = sorted(map(int, input().split()))
    Bn = sorted(map(int, input().split()))
    Cn = sorted(map(int, input().split()))

    ans = 0
    lx = 0
    ux = 0

    for Bi in Bn:
        # 以上
        lx = bisect_left(An, Bi, lx, N)

        # より大きい
        ux = bisect_right(Cn, Bi, ux, N)

        ans += lx * (N - ux)

    print(ans)
    return


main()
