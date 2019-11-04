# バージョン0.14.0まで scipy.misc.comb()
# バージョン0.14.0から scipy.special.comb()
from scipy.misc import comb
# from scipy.special import comb
INF = int(1e9 + 7)


def main():
    W, H = map(int, open(0).read().split())
    print(comb(W + H - 2, H - 1, exact=True) % INF)
    return


main()

