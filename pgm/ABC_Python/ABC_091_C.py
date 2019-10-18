from sys import stdin
from operator import itemgetter

input = stdin.readline

N = int(input())

ab = [[int(j) for j in input().split()] for i in range(N)]

cd = [[int(j) for j in input().split()] for i in range(N)]


def main():
    # y 降順
    ab.sort(key=itemgetter(1), reverse=True)

    # x 昇順
    cd.sort(key=itemgetter(0))

    # ペアになった赤
    done = [False] * N

    ans = 0

    for i in range(N):
        for j in range(N):
            if not done[j] and ab[j][0] < cd[i][0] and ab[j][1] < cd[i][1]:
                done[j] = True
                ans += 1
                break

    print(ans)
    return


main()
