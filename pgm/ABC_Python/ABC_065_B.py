N = int(input())

a = []

for i in range(N):
    a.append(int(input()) - 1)

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
