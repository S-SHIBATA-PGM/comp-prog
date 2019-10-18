N, M, X = map(int, input().split())
A = [int(i) for i in input().split()]

cost0 = 0
costN = 0

for i in range(1, N):
    if i in A:
        if i < X:
            cost0 += 1
        else:
            costN += 1

print(min(cost0, costN))
