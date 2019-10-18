N = int(input())
h = [int(i) for i in input().split()]

ans = 0

while max(h):
    mx = max(h)
    on = False

    for i in range(N):
        if h[i] == mx:
            h[i] -= 1
            if not on:
                ans += 1
            on = True
        else:
            on = False

print(ans)
