def main():
    N, *A = map(int, open(0).read().split())
    b = None
    for a in A:
        if b is None:
            b = a
            continue
        while b:
            a, b = b, a % b
        b = a
    print(a)
    return


main()
