def f(num, base):
    # calc max Pth Power
    ret = 1
    while ret <= num:
        ret *= base
    return ret // base


def main():
    N = {int(input())}
    ans = 0
    while (all(N)):
        N = {x - f(x, 6) for x in N} | {x - f(x, 9) for x in N}
        ans += 1
    print(ans)
    return


main()
