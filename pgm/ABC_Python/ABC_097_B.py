X = int(input())

ans = 1

for i in range(2, X + 1):
    for j in range(2, X + 1):
        if X < i ** j:
            break
        ans = max(ans, i ** j)

print(ans)
