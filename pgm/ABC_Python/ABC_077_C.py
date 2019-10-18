def main():
    N = int(input())

    A = sorted(map(int, input().split()))
    B = sorted(map(int, input().split()))
    C = sorted(map(int, input().split()))

    def lowerBound(a, v):
        # 以上
        return lb(a, 0, len(a), v)

    def upperBound(a, v):
        # より大きい
        # 値をプラス1
        return lb(a, 0, len(a), v + 1)

    def lb(a, l, r, v):
        low = l - 1
        high = r

        while high - low > 1:
            mid = low + high >> 1
            if a[mid] >= v:
                high = mid
            else:
                low = mid

        return high

    print(sum([lowerBound(A, Bi) * (N - upperBound(C, Bi)) for Bi in B]))

    return


main()
