def main():
    from bisect import bisect_left
    from bisect import bisect_right

    N = int(input())

    A = sorted(map(int, input().split()))
    B = sorted(map(int, input().split()))
    C = sorted(map(int, input().split()))

    print(sum([bisect_left(A, Bi) * (N - bisect_right(C, Bi)) for Bi in B]))
    return


main()
