L, H = map(int, input().split())
N = int(input())

for i in range(N):
    A = int(input())
    if H < A:
        print(-1)
    elif A < L:
        print(L - A)
    else:
        print(0)
