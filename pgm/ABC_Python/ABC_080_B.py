def isHarshad(x):
    s = str(x)

    num = 0

    for c in s:
        num += int(c)

    return True if x % num == 0 else False


N = int(input())
print("Yes" if isHarshad(N) else "No")
