def main():
    N, *X = map(int, open(0).read().split())
    l, r = sorted(X)[N // 2 - 1:N // 2 + 1]
    print("\n".join(map(str, [r if x < r else l for x in X])))
    return


main()
