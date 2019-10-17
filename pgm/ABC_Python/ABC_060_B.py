A, B, C = map(int, input().split())

for i in range(A, A * B + 1, A):
    if i % B == C:
        flg = True
        break
    else:
        flg = False

print("YES" if flg else "NO")
