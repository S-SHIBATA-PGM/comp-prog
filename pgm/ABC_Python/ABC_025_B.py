E = "East"
W = "West"
sp = ' '

N, A, B = map(int, input().split())

ans = 0

for i in range(N):
    s, d = map(str, input().split())
    tmp = int(d)

    if tmp < A:
        tmp = A
    elif B < tmp:
        tmp = B

    if s == W:
        tmp *= -1

    ans += tmp

dir = W if ans < 0 else E

print(ans if ans == 0 else dir + sp + str(abs(ans)))
