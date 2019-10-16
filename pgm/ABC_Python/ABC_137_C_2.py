from collections import defaultdict


def main():
    s = ["".join(sorted(i)) for i in open(0).read().split()[1:]]
    d = defaultdict(lambda: 0)
    ans = 0
    for i in s:
        ans += d[i]
        d[i] += 1
    print(ans)
    return


main()
