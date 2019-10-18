# 整数全体をある数で割った余りで分類
# 余りが同じ整数はすべて同じ(合同≡)とみなす
# 加法、減法、乗法を行っても合同を保つことから
# (1) a + b ≡ 0 mod K
# (2) b + c ≡ 0 mod K
# (3) c + a ≡ 0 mod K
# (1) - (2) + (3) 2a ≡ 0 mod K
# Kが偶数の場合、mod K / 2 もゼロと合同になる
# Kが8の場合、mod 4 もゼロとなるものも対象となる
# Kで割った余りはKより小さい
# Kで割った余りの数が等しくなるものがいくつあるか数え
# a mod Kで全探索する
N, K = map(int, input().split())

Kn = [0] * K


def main():
    # a b c は 1 から
    for i in range(1, N + 1):
        Kn[i % K] += 1

    ans = 0

    # 余りはゼロから
    # a mod K 全探索
    for a in range(K):

        # b と c は a から見て 等価
        b = (K - a) % K

        if 2 * b % K != 0:
            continue

        ans += Kn[a] * Kn[b] * Kn[b]

    print(ans)
    return


main()
