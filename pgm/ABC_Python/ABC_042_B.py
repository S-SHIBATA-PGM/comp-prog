N, L = map(int, input().split())

l = []

for i in range(N):
    l.append(input())

l.sort()

for i in range(N):
    print(l[i], end='')

print()
