S = list(input())

flg = True

for i in range(ord('a'), ord('z') + 1):
    if S.count(chr(i)) == 0:
        flg = False
        ans = chr(i)
        break

print("None" if flg else ans)
