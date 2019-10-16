N, X, *L = map(int, open(0).read().split())
ans = 1
D = 0
for i in range(N):
    D += L[i]
    if (D <= X):
        ans += 1
    else:
        break
print(ans)
