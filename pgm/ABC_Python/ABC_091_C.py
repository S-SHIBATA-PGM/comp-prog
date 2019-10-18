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

    for blue in cd:
        i = 0

        for red in ab:
            if not done[i] and red[0] < blue[0] and red[1] < blue[1]:
                done[i] = True
                ans += 1
                break

            i += 1

    print(ans)
    return


main()
