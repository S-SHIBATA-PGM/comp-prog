def main():
    *x, = map(int, input().split())
    print(x.index(0) + 1)
    return


main()
