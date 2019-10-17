N = int(input())

done = [False] * 100000

ans = 0

for i in range(N):
    # 0-indexed
    A = int(input()) - 1

    if not done[A]:
        done[A] = True
    else:
        ans += 1

print(ans)
