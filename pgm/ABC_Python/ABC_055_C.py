def main():
    N, a = map(int, open(0).read().split())
    print(min(abs(2 * a[:i] + sum(a) for i in range(N))))
    return


main()
