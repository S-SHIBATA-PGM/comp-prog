from collections import deque


def main():
    n, *a = open(0).read().split()
    dq = deque()
    n = int(n) - 1
    for i, ai in enumerate(a):
        if i % 2 == n % 2:
            dq.appendleft(ai)
        else:
            dq.append(ai)
    print(" ".join(dq))
    return


main()
