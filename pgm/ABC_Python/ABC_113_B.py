N = int(input())
T, A = map(int, input().split())
H = [int(i) for i in input().split()]

dif = 1000

for i in range(N):
    tmp = T - H[i] * 0.006
    if abs(A - tmp) < dif:
        dif = abs(A - tmp)
        ans = i + 1

print(ans)
