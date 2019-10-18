from collections import Counter

input = open(0).read

n, *v = map(int, input().split())


def main():
    e = Counter(v[::2])
    o = Counter(v[1::2])

    em = e.most_common(2)
    om = o.most_common(2)

    # 要素は最低でも 2 つ
    em.append((0, 0))
    om.append((0, 0))

    if em[0][0] == om[0][0]:
        print(min(n - em[0][1] - om[1][1], n - em[1][1] - om[0][1]))
    else:
        print(n - em[0][1] - om[0][1])

    return


main()
