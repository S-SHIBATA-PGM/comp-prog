MAX_TIME = 10

N = int(input())

# F[店のインデックス]
# 他の店
# 選択する時間帯を2進法で表現したもの
F = [sum(v << MAX_TIME - k - 1 for k, v
         in enumerate(map(int, input().split())))
     for i in range(N)]

# P[店のインデックス][合致した時間帯の数]
# 利益
P = [[int(j) for j in input().split()] for i in range(N)]


def main():
    # 予めビットをカウントしておく
    pattern = [sum(i >> j & 1 for j in range(MAX_TIME))
               for i in range(2 ** MAX_TIME)]

    # 営業時間帯 すべて試す
    # 最低でも ひとつの時間帯
    print(max(sum(
        P[j][pattern[F[j] & i]] for j in range(N))
        for i in range(1, 2 ** MAX_TIME)))

    return


main()
