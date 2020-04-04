def main():
    S = input()
    str = S[0:len(S) // 2]
    flg = S == "".join(list(reversed(S))) \
        and str == "".join(list(reversed(str)))
    print("Yes" if flg else "No")
    return


main()
