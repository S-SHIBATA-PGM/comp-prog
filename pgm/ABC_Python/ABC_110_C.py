def main():
    S = input()
    T = input()
    d = dict()
    flg = True
    for s, t in zip(S, T):
        # 同アルファベット、違アルファベット変換チェック
        if s in d and d[s] != t:
            flg = False
            break
        d[s] = t
    # 変換先重複チェック
    if len(d.values()) != len(set(d.values())):
        flg = False
    print("Yes" if flg else "No")
    return


main()
