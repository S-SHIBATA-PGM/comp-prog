A, B, C, X, Y = map(int, input().split())


def main():
    print(
        min(A * X + B * Y,
            2 * max(X, Y) * C,
            2 * min(X, Y) * C + (B if X < Y else A) * abs(X - Y)))
    return


main()
