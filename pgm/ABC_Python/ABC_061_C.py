from sys import stdin


def main():
    lines = stdin.readlines()
    N, K = map(int, lines[0].split())
    abn = [[int(abi) for abi in line.split()] for line in lines[1:]]
    abn.sort()
    cnt = 0
    for ai, bi in abn:
        cnt += bi
        if K <= cnt:
            print(ai)
            break
    return


main()
