N = int(input())
l = []
c = 0
for i in range(0, N.bit_length(), 1):
    if (N % 2 == 1):
        c += 1
        l.append(2 ** i)
    N //= 2
print(len(l))
for i in range(0, len(l), 1):
    print(l[i])
