ab = int(input().replace(' ', ''))

i = 0

flg = False

while i * i <= ab:
    if i * i == ab:
        flg = True
        break

    i += 1

print("Yes" if flg else "No")
