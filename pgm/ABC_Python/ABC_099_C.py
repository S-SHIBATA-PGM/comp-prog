def f(num, base):
    # calc max Pth Power
    ret = 1
    while ret <= num:
        ret *= base
    return ret // base


def main():
    N = int(input())
    st = {N}
    ans = 0
    while (all(st)):
        st = {x - f(x, 6) for x in st} | {x - f(x, 9) for x in st}
        ans += 1
    print(ans)
    return


main()
