S = input()
T = int(input())

x, y, q = 0, 0, 0

for c in S:
    if c == 'L':
        x -= 1
    elif c == 'R':
        x += 1
    elif c == 'D':
        y -= 1
    elif c == 'U':
        y += 1
    else:
        q += 1

    dst = abs(x) + abs(y)
    mx = dst + q
    mn = dst - q

    if mn < 0:
        mn = 0
        if (q - dst) % 2:
            mn = 1

print(mx if T == 1 else mn)
