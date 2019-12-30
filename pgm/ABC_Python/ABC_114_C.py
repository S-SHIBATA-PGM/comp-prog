N = int(input())


def dfs(ret, cur, f1, f2, f3):
    if N < cur:
        return ret

    ret += 1 if f1 and f2 and f3 else 0

    ret = dfs(ret, cur * 10 + 7, True, f2, f3)
    ret = dfs(ret, cur * 10 + 5, f1, True, f3)
    ret = dfs(ret, cur * 10 + 3, f1, f2, True)

    return ret


def main():
    print(dfs(0, 0, False, False, False))
    return


main()
