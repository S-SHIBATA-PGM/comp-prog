from collections import Counter
# バージョン0.14.0まで scipy.misc.comb()
# バージョン0.14.0から scipy.special.comb()
from scipy.misc import comb
# from scipy.special import comb


def main():
    s = Counter(["".join(sorted(i)) for i in open(0).read().split()[1:]])
    ans = 0
    for v in s.values():
        ans += comb(v, 2, exact=True)
    print(int(ans))
    return


main()
