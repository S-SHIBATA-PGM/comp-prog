A, B, C, D = map(int, input().split())
l = [0] * 102

l[A] += 1
l[B] -= 1
l[C] += 1
l[D] -= 1

for i in range(1, len(l)):
    l[i] += l[i - 1]

ans = 0

for i in range(0, len(l)):
    if l[i] == 2:
        ans += 1

print(ans)
