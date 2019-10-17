S = list(input())

l = []

for i in range(ord('A'), ord('F') + 1):
    l.append(str(S.count(chr(i))))

print(' '.join(l))
