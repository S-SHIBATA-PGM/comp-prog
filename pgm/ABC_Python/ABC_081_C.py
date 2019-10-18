from collections import Counter

N, K = map(int, input().split())

An = Counter(input().split())


def main():
    # 要素数 昇順
    # 先頭 から インデックス len(An) - K - 1 まで 合計
    print(sum(sorted(An.values())[:len(An) - K]))

    return


main()
