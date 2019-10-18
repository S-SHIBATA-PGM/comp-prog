N = int(input())

flg = False

for i in range(101):
    for j in range(101):
        if 100 < i + j:
            break
        if 4 * i + 7 * j == N:
            flg = True
            continue
    if flg:
        break

print("Yes" if flg else "No")
