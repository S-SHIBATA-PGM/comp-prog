INF = int(1e9+7)


def main():
    Sn = list(open(0).read().split()[1:])
    for i in range(26):
        cnt = INF
        for Si in Sn:
            cnt = min(cnt, Si.count(chr(ord("a") + i)))
        if cnt == INF:
            continue
        print(chr(ord("a") + i) * cnt, end="")


main()

