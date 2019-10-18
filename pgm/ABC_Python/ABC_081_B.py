N = int(input())
A = [int(i) for i in input().split()]

ans = 0
flg = True

while flg:
    for i in range(N):
        if A[i] % 2:
            flg = False
            break
        else:
            A[i] >>= 1

    if flg:
        ans += 1

print(ans)
