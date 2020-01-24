def main():
    A, B, C, X, Y = map(int, input().split())
    if 2 * C < A + B:
        print(min(
            2 * C * max(X, Y),
            2 * C * min(X, Y) + A * (X - min(X, Y)) + B * (Y - min(X, Y))
        ))
    else:
        print(A * X + B * Y)
    return


main()
