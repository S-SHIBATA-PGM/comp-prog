N, *P = map(int, open(0).read().split())
ans = 0
cur = int(1e9 + 7)
for p in P:
    ans += 1 if p <= cur else 0
    cur = p if p < cur else cur
print(ans)
