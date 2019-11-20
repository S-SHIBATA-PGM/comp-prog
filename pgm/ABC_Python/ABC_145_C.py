from itertools import permutations
from math import factorial


class Point:
    def __init__(self, y, x):
        self.y = y
        self.x = x


def main():
    N = int(input())
    xy = []
    for i in range(N):
        xi, yi = map(int, input().split())
        xy.append(Point(yi, xi))
    ans = 0
    for i in permutations(xy):
        for j in range(N - 1):
            ans += ((i[j + 1].y - i[j].y) ** 2 +
                    (i[j + 1].x - i[j].x) ** 2) ** 0.5
    print('{:.10f}'.format(ans / factorial(N)))
    return


main()
