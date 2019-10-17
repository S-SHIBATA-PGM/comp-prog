N = int(input())
flg = False
while 0 < N:
    if N % 10 == 9:
        flg = True
    N //= 10
print("Yes" if flg else "No")
