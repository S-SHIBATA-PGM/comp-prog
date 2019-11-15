from itertools import accumulate


def main():
    n, *abn = map(int, open(0).read().split())
    ab = [0] * (int(1e6) + 3)
    for a, b in zip(*[iter(abn)] * 2):
        # 1-based indexing
        a += 1
        b += 1
        ab[a] += 1
        ab[b + 1] -= 1
    print(max(accumulate(ab)))
    return


main()

