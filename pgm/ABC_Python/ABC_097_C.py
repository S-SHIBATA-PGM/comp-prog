def main():
    s = input()
    K = int(input())
    lst = sorted(list(set(s)))
    ans = []

    def dfs(sub):
        if len(ans) < K:
            ans.append(sub)
            for c in lst:
                if sub + c in s:
                    return dfs(sub + c)
        return

    for c in lst:
        dfs(c)
    print(ans[-1])
    return


main()
