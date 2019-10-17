w = list(input())

flg = True

for i in range(len(w)):
    if w.count(w[i]) % 2 != 0:
        flg = False
        break

print("Yes" if flg else "No")
