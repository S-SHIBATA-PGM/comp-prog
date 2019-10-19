import math

A, B = map(int, input().split())


def main():
    # 偶数 n と 奇数 n + 1 の ペア の数
    pair = math.floor((B - A) / 2)

    if A % 2 == 0:
        pair = math.ceil((B - A) / 2)

        if B % 2 == 1:
            print(pair % 2)
        else:
            print(pair % 2 ^ B)

    else:
        if B % 2 == 1:
            print(A ^ pair % 2)
        else:
            print(A ^ pair % 2 ^ B)

    return


main()
