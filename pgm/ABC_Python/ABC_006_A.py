N = int(input())
m = N % 3
flg = False
while (0 < N):
    if (N % 10 == 3):
        flg = True
        break
    N //= 10
print("YES" if m == 0 or flg else "NO")
