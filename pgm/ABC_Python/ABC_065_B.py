import sys

l = [int(i) - 1 for i in sys.stdin]

N = l[0] + 1

a = l[1:]

done = [False] * N

i = 0

ans = 0

while True:
    if done[i] == False:
        done[i] = True
        ans += 1
        if a[i] == 1:
            break
        i = a[i]
    else:
        ans = -1
        break

print(ans)
