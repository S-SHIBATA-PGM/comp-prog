name = "atcoder"

N = int(input())

d = {}

num = 0

for i in range(N):
    S, P = map(str, input().split())
    d[S] = int(P)
    num += int(P)

half = num // 2

for k in d:
    if half < d[k]:
        name = k
        break

print(name)
