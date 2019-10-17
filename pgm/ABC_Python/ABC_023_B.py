def f(i, s):
    if i == 0:
        s = 'b'
    elif i % 3 == 1:
        s = 'a' + s + 'c'
    elif i % 3 == 2:
        s = 'c' + s + 'a'
    else:
        s = 'b' + s + 'b'
    return s


N = int(input())
S = input()

cur = ''

flg = True

for i in range(N):
    cur = f(i, cur)

    if S == cur:
        break

    if len(S) < len(cur):
        flg = False
        break

print(i if flg else -1)
