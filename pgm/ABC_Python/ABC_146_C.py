A, B, X = map(int, input().split())


def f(N):
    return X < A * N + B * len(str(N))


def bisectionMethod(left, right):
    # Bisection Method
    # [left, right)
    # to narrow the range
    while (1 < abs(right - left)):
        mid = (left + right) // 2
        if f(mid):
            right = mid
        else:
            left = mid
    return left


def main():
    print(bisectionMethod(0, int(1e9 + 1)))
    return


main()
