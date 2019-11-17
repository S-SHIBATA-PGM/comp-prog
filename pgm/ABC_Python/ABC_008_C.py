C = []


def dcount(c):
    # 約数カウント
    ret = 0
    for Ci in C:
        if c % Ci == 0:
            ret += 1
    return ret


def main():
    global C
    N, *C = map(int, open(0).read().split())
    ans = 0.0
    for Ci in C:
        cnt = dcount(Ci)
        if cnt % 2:
            # 約数 自身を含めて(cnt枚) 奇数
            ans += (cnt + 1) / (2 * cnt)
        else:
            # 約数 自身を含めて(cnt枚) 偶数
            ans += 0.5
    print('{:.12f}'.format(ans))
    return


main()

