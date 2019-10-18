N = list(input())
len = len(N)
num = 0
for i in range(0, len, 1):
    cnt = 1
    for j in range(i + 1, len, 1):
        if (N[i] != N[j]):
            break
        else:
            cnt += 1
    num = max(num, cnt)
print("Yes" if 3 <= num else "No")
