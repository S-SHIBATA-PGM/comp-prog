from sys import stdin


def main():
    lines = stdin.readlines()
    N, K = map(int, lines[0].split())
    bn = [0] * (int(1e5) + 1)
    for line in lines[1:]:
        ai, bi = map(int, line.split())
        bn[ai] += bi
    cnt = 0
    for ai, bi in enumerate(bn):
        cnt += bi
        if K <= cnt:
            print(ai)
            break
    return


main()

