N = int(input())

l = []

flg = True

for i in range(N):
    s = input()

    if (s in l):
        flg = False
        break

    num = len(l)

    if (num != 0 and l[num - 1][-1] != s[0]):
        flg = False
        break

    l.append(s)

print("Yes" if flg else "No")
