N = int(input())
an = map(int, input().split())


def main():
    ar = [0] * 3
    for ai in an:
        if ai % 4 == 0:
            ar[2] += 1
        elif ai % 2 == 0:
            ar[1] += 1
        else:
            ar[0] += 1

    if 0 < ar[1]:
        ar[0] += 1

    print("Yes" if ar[0] - 1 <= ar[2] else "No")
    return


main()
