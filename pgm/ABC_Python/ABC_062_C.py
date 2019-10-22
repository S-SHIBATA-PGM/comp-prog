def f(Hn, Wn):
    ret = float('inf')
    for Wi in range(1, Wn):
        h = Hn // 2
        w = Wn - Wi
        Sn = Wi * Hn, w * h, w * (Hn - h)
        ret = min(ret, max(Sn) - min(Sn))
        w //= 2
        Sn = Wi * Hn, w * Hn, (Wn - Wi - w) * Hn
        ret = min(ret, max(Sn) - min(Sn))
    return ret


def main():
    H, W = map(int, input().split())
    ans = f(H, W)
    if not ans:
        print(ans)
        return
    ans = min(ans, f(W, H))
    if not ans:
        print(ans)
        return
    print(ans)
    return


main()
