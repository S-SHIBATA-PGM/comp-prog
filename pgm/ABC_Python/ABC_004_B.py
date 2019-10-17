c = []

for i in range(4):
    c.append(list(input()))

for i in range(2):
    c[i], c[-i-1] = reversed(c[-i-1]), reversed(c[i])

for i in range(4):
    print(''.join(c[i]))
