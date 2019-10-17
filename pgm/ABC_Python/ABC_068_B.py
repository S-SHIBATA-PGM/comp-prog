N = int(input())

ans = 1

while True:
    if N < ans << 1:
        break
    ans <<= 1

print(ans)
