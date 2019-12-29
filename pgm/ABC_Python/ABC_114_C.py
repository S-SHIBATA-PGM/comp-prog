N = input()


def f(d, used, next):
    num = len(used | set(next))
    if d == 0:
        if num == 3:
            return 1
        else:
            return 0
    elif num == 3:
        return 3 ** d
    elif num == 2:
        return 3 ** d - 2 ** d
    else:
        return 3 ** d - 2 * (2 ** d) + 1


def high(N, used, ret):
    if N:
        if N[0] > "3":
            ret += f(len(N) - 1, used, "3")
        if N[0] > "5":
            ret += f(len(N) - 1, used, "5")
        if N[0] > "7":
            ret += f(len(N) - 1, used, "7")
    else:
        if len(used) == 3:
            ret += 1
        return ret
    if N[0] in "357":
        ret = high(N[1:], used | set(N[0]), ret)
    return ret


def low():
    ret = 0
    for i in range(len(N) - 1):
        ret += 3 * (3 ** i - 2 ** (i + 1) + 1)
    return ret


def main():
    print(high(N, set(), low()))
    return


main()
