def main():
    S = input()
    lst = list()
    ans = 0
    for i in range(1 << len(S) - 1):
        lst.clear()
        pre = 0
        for j in range(len(S) - 1):
            if i >> j & 1:
                lst.append(int(S[pre:j + 1]))
                pre = j + 1
        lst.append(int(S[pre:]))
        ans += sum(lst)
    print(ans)
    return


main()

