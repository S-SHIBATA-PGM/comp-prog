from collections import Counter
from operator import itemgetter

input()
An = Counter(map(int, input().split()))


def main():
    l = [[k, v] for k, v in An.items() if 2 <= v]
    l.sort(key=itemgetter(0), reverse=True)

    if len(l) == 0:
        print(0)
    elif 4 <= l[0][1]:
        print(l[0][0] * l[0][0])
    elif len(l) < 2:
        print(0)
    else:
        print(l[0][0] * l[1][0])

    return


main()
