N, T = map(int, input().split())

ct = []

for i in range(N):
    ct.append([int(i) for i in input().split()])

ct.sort(key=lambda x: x[0])

ans = 1001

for i in range(N):
    if ct[i][1] <= T:
        ans = ct[i][0]
        break

print("TLE" if ans == 1001 else ans)
