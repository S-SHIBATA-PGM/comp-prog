import sys

l = [int(i) for i in sys.stdin]

done = [False] * (l[0] + 1)

i = 1

ans = 0

while True:
    if done[i] == False:
        done[i] = True
        ans += 1
        if l[i] == 2:
            break
        i = l[i]
    else:
        ans = -1
        break

print(ans)
