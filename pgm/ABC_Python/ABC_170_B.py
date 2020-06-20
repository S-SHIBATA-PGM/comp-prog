# C + T = X
# 2 * C + 4 * T = Y
# T = X - C
# 2 * C + 4 * (X - C) = Y
# - 2 * C = Y - 4 * X
# C = 2 * X - Y // 2
# T = -X + Y // 2


def main():
    X, Y = map(int, input().split())
    C = 2 * X - Y // 2
    T = -X + Y // 2
    print("Yes" if 0 <= C and 0 <= T and C + T ==
          X and 2 * C + 4 * T == Y else "No")
    return


main()
