N = int(input())
an = [int(i) % 4 for i in input().split()]


def main():
    two = an.count(2)
    four = an.count(0)
    other = N - two - four

    if 0 < two:
        other += 1

    print("Yes" if other - 1 <= four else "No")
    return


main()
