from itertools import combinations
from itertools import permutations


def f(x, lst, rem):
    d = abs(x - min(lst))
    min_lst = min(lst)
    tpl = None
    for v in range(1, len(lst) - rem + 2):
        for t in combinations(lst, v):
            if abs(x - sum(t)) + 10 * (v - 1) < d:
                d = abs(x - sum(t)) + 10 * (v - 1)
                tpl = t
    if tpl is None:
        lst.remove(min_lst)
    else:
        for v in tpl:
            lst.remove(v)
    return d, lst


def main():
    N, A, B, C = map(int, input().split())
    *L, = [int(input()) for i in range(N)]

    ans = int(1e9+7)
    for ABC in permutations((A, B, C), 3):
        lst = L[:]
        accum = 0
        for i, v in enumerate(ABC):
            d, lst = f(v, lst, 3 - i)
            accum += d
        ans = min(ans, accum)
    print(ans)


main()
