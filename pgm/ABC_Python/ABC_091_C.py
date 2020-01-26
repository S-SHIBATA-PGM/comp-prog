from operator import itemgetter


def main():
    N = int(input())
    ab = [tuple(int(j) for j in input().split()) for i in range(N)]
    cd = [tuple(int(j) for j in input().split()) for i in range(N)]
    # y 降順
    ab.sort(key=itemgetter(1), reverse=True)
    # x 昇順
    cd.sort(key=itemgetter(0))
    # ペアになった赤
    done = [False] * N
    for bx, by in cd:
        for k, ((rx, ry), d) in enumerate(zip(ab, done)):
            if not d and rx < bx and ry < by:
                done[k] = True
                break
    print(sum(done))
    return


main()
