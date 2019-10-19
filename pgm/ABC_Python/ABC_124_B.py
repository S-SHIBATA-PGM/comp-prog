from sys import stdin

lines = stdin.readlines()

H = [int(i) for i in lines[1].split()]

hight = 0
ans = 0

for h in H:
    if hight <= h:
        hight = h
        ans += 1

print(ans)
