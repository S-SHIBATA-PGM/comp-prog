import math

N = int(input())

l = []

for i in range(N):
    l.append(int(input()))

l.sort(reverse=True)

ans = 0

for i in range(N):
    circle = l[i] * l[i] * math.pi
    if i % 2 == 0:
        ans += circle
    else:
        ans -= circle

print(ans)
