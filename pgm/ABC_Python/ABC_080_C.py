MAX_TIME = 10

N = int(input())

F = [int(input().replace(" ", ""), 2) for i in range(N)]

P = [[int(j) for j in input().split()] for i in range(N)]


def main():
    # 1 から 2 ** MAX_TIME - 1
    # 営業時間帯 最低でも ひとつの時間帯
    # 選択する時間帯を2進法で表現したもの

    # F[店のインデックス]
    # 他の店
    # 選択する時間帯を2進法で表現したもの

    # P[店のインデックス][合致した時間帯の数]
    # 利益
    print(max(sum(
        [p[bin(f & i).count("1")] for f, p in zip(F, P)])
        for i in range(1, 2 ** MAX_TIME)))

    return


main()
