def main():
    N, *a = map(int, open(0).read().split())
    print(sum(a) - N)
    return


main()
