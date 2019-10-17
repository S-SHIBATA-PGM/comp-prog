from functools import reduce
from math import log2
from operator import mul


def end_of_loop():
    raise StopIteration


def main():
    N, K = map(int, input().split())
    MAX_SHIFT = int(log2(K) + 1)
    print(sum(reduce(mul, (0.5
                           if i << j < K
                           else end_of_loop()
                           for j in range(MAX_SHIFT)), 1)
              for i in range(1, N + 1)) / N)
    return


main()

