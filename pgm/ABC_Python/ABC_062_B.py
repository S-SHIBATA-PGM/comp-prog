H, W = map(int, input().split())

sh = '#'

print(sh * (W + 2))

for i in range(H):
    print(sh + input() + sh)

print(sh * (W + 2))
