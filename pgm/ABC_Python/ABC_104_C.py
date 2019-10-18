import math

INF = 1000000007

D, G = map(int, input().split())

p = []
c = []

for i in range(D):
    pi, ci = map(int, input().split())
    p.append(pi)
    c.append(ci)


def main():
    ans = INF

    # 2 ** D - 1 まで
    for b in range(2 ** D):
        num = 0
        pnt = 0

        # コンプリートしない MAX
        x = None

        # 得点が高い方から
        for i in range(D - 1, -1, -1):
            # i 番目 の フラグ が 立っている
            if b >> i & 1:
                num += p[i]
                # コンプリートする
                pnt += c[i] + 100 * (i + 1) * p[i]

            elif x is None:
                x = i

        # コンプリート オール
        # または 既に 目標の 総合スコア に到達
        if x is None or G <= pnt:
            ans = min(ans, num)

        # コンプリートしない
        elif math.ceil((G - pnt) / (100 * (x + 1))) < p[x]:
            ans = min(ans, num + math.ceil((G - pnt) / (100 * (x + 1))))

    print(ans)
    return


main()
