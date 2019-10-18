from collections import Counter

N = int(input())

an = Counter([int(i) for i in input().split()])


def main():
    # 要素(k) よりも 要素数(v) が 以上ならば その差(v - k)
    # 要素(k) よりも 要素数(v) が 小さければ 要素数(v)
    print(sum([v - k if k <= v else v for k, v in an.items()]))

    return


main()
