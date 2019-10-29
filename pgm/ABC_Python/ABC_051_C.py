def f(d1, t1, d2, t2):
    print(d1 * t1, end="")
    print(d2 * t2, end="")


def main():
    U, D, L, R = "U", "D", "L", "R"
    sx, sy, tx, ty = map(int, input().split())
    f(R, tx - sx, U, ty - sy)
    f(L, tx - sx, D, ty - sy)
    f(D, 1, "", 0)
    f(R, tx + 1 - sx, U, ty + 1 - sy)
    f(L, 1, "", 0)
    f(U, 1, "", 0)
    f(L, tx + 1 - sx, D, ty + 1 - sy)
    f(R, 1, "", 0)
    print()
    return


main()
