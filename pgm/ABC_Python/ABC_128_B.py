from operator import itemgetter

N = int(input())

SP = [input().split() for i in range(N)]

for k, v in enumerate(SP):
    v.insert(0, str(k + 1))
    v[2] = int(v[2])

# 降順
SP.sort(key=itemgetter(2), reverse=True)

# 昇順
SP.sort(key=itemgetter(1))

for sp in SP:
    print(sp[0])
