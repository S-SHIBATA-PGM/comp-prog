n = int(input())

mn = 100001

for i in range(1, n + 1):
    if n < i * i:
        break
    dif = abs(i - n // i)
    rem = n - i * (n // i)
    mn = min(mn, dif + rem)

print(mn)
