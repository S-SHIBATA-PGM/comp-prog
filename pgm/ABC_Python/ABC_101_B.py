def S(n):
    ret = 0

    for i in range(len(n)):
        ret += int(n[i])

    return ret


N = input()
print("Yes" if int(N) % S(N) == 0 else "No")
