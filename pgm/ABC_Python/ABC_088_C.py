c = [[int(j) for j in input().split()] for i in range(3)]


def main():
    flg = True

    for i in range(2):
        for j in range(2):
            if c[i][j] + c[i + 1][j + 1] != c[i][j + 1] + c[i + 1][j]:
                flg = False
                break

        if not flg:
            break

    print("Yes" if flg else "No")
    return


main()
