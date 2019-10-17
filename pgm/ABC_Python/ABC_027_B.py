N = int(input())
a = [int(i) for i in input().split()]

if sum(a) % N != 0:
    print(-1)
else:
    bridge = 0
    person = 0
    num = 0
    average = sum(a) // N

    for i in range(N - 1):
        person += a[i]
        num += 1

        if average != person // num or person % num != 0:
            bridge += 1
        else:
            num = 0
            person = 0

    print(bridge)
