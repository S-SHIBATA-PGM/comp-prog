from itertools import combinations, permutations


def f(x, lst, rem):
    c = int(1e9+7)
    tpl = ()
    for v in range(len(lst) - rem + 1):
        for t in combinations(lst, v + 1):
            if abs(x - sum(t)) + 10 * v < c:
                c = abs(x - sum(t)) + 10 * v
                tpl = t
    for v in tpl:
        lst.remove(v)
    return c, lst


def main():
    N, A, B, C = map(int, input().split())
    L = [int(input()) for i in range(N)]

    ans = int(1e9+7)
    for ABC in permutations((A, B, C), 3):
        lst = L[:]
        accum = 0
        for i, v in enumerate(ABC):
            c, lst = f(v, lst, 3 - i)
            accum += c
        ans = min(ans, accum)
    print(ans)


main()
