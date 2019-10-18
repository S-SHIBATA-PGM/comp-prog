N, Y = map(int, input().split())


def main():
    for x in range(N + 1):
        for y in range(N + 1):
            if N < x + y:
                break

            z = N - x - y

            if 10000 * x + 5000 * y + 1000 * z == Y:
                print(x, y, z)
                return

    print(-1, -1, -1)
    return


main()
