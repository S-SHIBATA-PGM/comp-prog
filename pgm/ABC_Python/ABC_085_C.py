N, Y = map(int, input().split())


def main():
    # 大きな額面の札から優先して使用
    # 最小枚になる
    x = Y // 10000
    y = (Y - 10000 * x) // 5000
    z = (Y - 10000 * x - 5000 * y) // 1000

    while True:
        t = x + y + z

        # 一万 → 一千
        if t + 9 <= N and 0 < x:
            x -= 1
            z += 10
            continue

        # 五千 → 一千
        if t + 4 <= N and 0 < y:
            y -= 1
            z += 5
            continue

        # 一万 → 五千
        if t + 1 <= N and 0 < x:
            x -= 1
            y += 2
            continue

        break

    print(x, y, z) if x + y + z == N else print(-1, -1, -1)

    return


main()
