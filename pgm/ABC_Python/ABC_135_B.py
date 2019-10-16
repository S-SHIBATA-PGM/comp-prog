N, *p = map(int, open(0).read().split())
cnt = 0
for i in range(N):
    if not p[i] == i + 1:
        cnt += 1
print("YES" if cnt <= 2 else "NO")
