def main():
    N = int(input())
    ab = [tuple(int(j) for j in input().split()) for i in range(N)]
    cd = [tuple(int(j) for j in input().split()) for i in range(N)]
    # y 降順
    ab.sort(key=lambda x: x[1], reverse=True)
    # x 昇順
    cd.sort()
    ans = 0
    for bx, by in cd:
        for rx, ry in ab:
            if rx < bx and ry < by:
                ab.remove((rx, ry))
                ans += 1
                break
    print(ans)
    return


main()
