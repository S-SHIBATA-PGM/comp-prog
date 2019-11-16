import sys


def main():
    txa, tya, txb, tyb, T, V, n, *xy = map(int, open(0).read().split())
    for x, y in zip(*[iter(xy)] * 2):
        t1 = ((x - txa) ** 2 + (y - tya) ** 2) ** 0.5
        t2 = ((txb - x) ** 2 + (tyb - y) ** 2) ** 0.5
        if T * V + sys.float_info.epsilon >= t1 + t2:
            print("YES")
            break
    else:
        print("NO")
    return


main()

