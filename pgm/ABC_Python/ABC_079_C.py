MAX_ITEM = 4
NUM = 7

ABCD = [int(i) for i in list(input())]


def main():
    for i in range(2 ** (MAX_ITEM - 1)):
        ans = ABCD[0]

        for j in range(MAX_ITEM - 2, -1, -1):
            if i >> j & 1:
                ans += ABCD[j + 1]

            else:
                ans -= ABCD[j + 1]

        if NUM == ans:
            print("".join(
                ["+" if k % 2 and i >> k // 2 & 1 else
                 "-" if k % 2 else
                 str(ABCD[k // 2]) for k in range(2 * MAX_ITEM - 1)])
                + "=" + str(NUM))

            break

    return


main()
