input = open(0).read

n, m, *l = map(int, input().split())

# abm は ai と bi の tuple を持つ list
*abm, = zip(l[::2], l[1::2])


def f(i):
    # 1 は tuple 1番目の要素 なので 2番目の要素
    # N は tuple 2番目の要素 なので 1番目の要素
    return set(abi[i < 2] for abi in abm if i in abi)


def main():
    print("POSSIBLE" if f(1) & f(n) else "IMPOSSIBLE")


main()
