INF = int(1e9 + 7)
MAX_W_PLUS_H = int()


def modmulti(a, b):
    # aとbを掛けた値をmodする(a * b mod p)
    return a * b % INF


def modcalc(a, b):
    # aのb乗をpで割った余りを計算する(a ^ b mod p)
    # O(log b)
    d = 0
    if int(b) == 0:
        return 1
    elif int(b) & 1 == 0:
        # 偶数 bを半分にできる
        d = modcalc(a, b // 2)
        return modmulti(d, d)
    else:
        # 奇数 - 1乗から1乗をかける
        return modmulti(a, modcalc(a, b - 1))


FCT = []
INV = []


def factorial(x):
    FCT[0] = 1
    FCT[1] = 1
    for i in range(2, x + 1):
        FCT[i] = modmulti(FCT[i - 1], i)


def inverse(x):
    INV[0] = 1
    INV[1] = 1
    INV[x] = modcalc(FCT[x], INF - 2)
    for i in range(x - 1, 1, -1):
        INV[i] = modmulti(INV[i + 1], i + 1)


def combination(a, b):
    # tmp = a! / b!
    tmp = modmulti(FCT[a], INV[b])
    # tmp / (a - b)!
    return modmulti(tmp, INV[a - b])


def main():
    W, H = map(int, open(0).read().split())
    global MAX_W_PLUS_H, FCT, INV
    MAX_W_PLUS_H = W + H
    FCT = [0] * (MAX_W_PLUS_H + 1)
    INV = [0] * (MAX_W_PLUS_H + 1)
    # 階乗テーブル作成
    factorial(MAX_W_PLUS_H)
    # 逆元テーブル作成
    inverse(MAX_W_PLUS_H)
    print(combination(W + H - 2, H - 1))
    return


main()

