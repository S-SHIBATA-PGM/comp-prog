N, K = map(int, input().split())
l = [int(i) for i in input().split()]

l.sort(reverse=True)

ans = 0

for i in range(K):
    ans += l[i]

print(ans)
