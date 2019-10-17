N = int(input())
T = [int(i) for i in input().split()]
M = int(input())

PX = []

for i in range(M):
    # 0-indexed
    PX.append([int(j) for j in input().split()])
    PX[i][0] -= 1

ans = sum(T)

for i in range(M):
    print(ans - T[PX[i][0]] + PX[i][1])
