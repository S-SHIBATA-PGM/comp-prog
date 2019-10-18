MAX_TIME = 10

N = int(input())

F = [[int(j) for j in input().split()] for i in range(N)]

P = [[int(j) for j in input().split()] for i in range(N)]


def main():
    ans = -11000000001

    # 営業時間帯 最低でも ひとつの時間帯
    # 選択パターン
    for i in range(1, 2 ** MAX_TIME):
        tmp = 0

        # 他の店
        for j in range(N):
            # 各時間帯
            cnt = sum([F[j][k] for k in range(MAX_TIME) if i >> k & 1])
            tmp += P[j][cnt]

        ans = max(ans, tmp)

    print(ans)
    return


main()
