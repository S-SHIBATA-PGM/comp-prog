input = open(0).read
S, T = input().split()


def main():
    C1 = [None] * (ord('z') - ord('a') + 1)
    C2 = [None] * (ord('z') - ord('a') + 1)

    flg = True

    for i in range(len(S)):
        c1 = ord(S[i]) - ord('a')
        c2 = ord(T[i]) - ord('a')

        if C1[c1] or C2[c2]:
            if c1 != C2[c2] or c2 != C1[c1]:
                flg = False
                break

        C1[c1] = c2
        C2[c2] = c1

    print("Yes" if flg else "No")
    return


main()
