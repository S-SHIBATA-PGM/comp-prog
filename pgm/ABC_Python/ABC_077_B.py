N = int(input())

ans = 0

for i in range(1, N + 1):
    if N < i * i:
        break
    ans = i * i

print(ans)
