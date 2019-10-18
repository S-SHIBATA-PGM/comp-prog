def f(n, f1, f2, f3):
    ret = 0

    def dfs(n, f1, f2, f3):
        if N < n:
            return 0

        nonlocal ret
        ret += 1 if f1 and f2 and f3 else 0

        dfs(n * 10 + 7, True, f2, f3)
        dfs(n * 10 + 5, f1, True, f3)
        dfs(n * 10 + 3, f1, f2, True)

        return ret

    return dfs(n, f1, f2, f3)


N = int(input())

print(f(0, False, False, False))
