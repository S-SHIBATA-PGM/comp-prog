N = int(input())

SP = {i+1: input().split() for i in range(N)}

for v in SP.values():
    v[1] = int(v[1])

# 降順
SP = sorted(SP.items(), key=lambda x: x[1][1], reverse=True)

# 昇順
SP = sorted(SP, key=lambda x: x[1][0])

for sp in SP:
    print(sp[0])
