import math

l = []
l.append([int(i) for i in input().split()])
l.append([int(i) for i in input().split()])
l.append([int(i) for i in input().split()])

ans = 0

for i in range(0, len(l), 1):
    ans += l[i][0] * l[i][1] // 10

print(math.floor(ans))
