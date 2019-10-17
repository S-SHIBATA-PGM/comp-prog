N = int(input())
s = set(map(int, input().split()))
K = int(input())
P = [int(i) for i in input().split()]

flg = True

for i in range(K):
    if P[i] in s:
        flg = False
        break
    else:
        s.add(P[i])

print("YES" if flg else "NO")
