def main():
    n, *a = open(0).read().split()
    if int(n) % 2:
        print(" ".join(reversed(a[0::2])), end=" ")
        print(" ".join(a[1::2]))
    else:
        print(" ".join(reversed(a[1::2])), end=" ")
        print(" ".join(a[0::2]))
    return


main()
