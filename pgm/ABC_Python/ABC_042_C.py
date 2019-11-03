from sys import stdin


def main():
    lines = stdin.readlines()
    N = int(lines[0].split()[0])
    Dk = lines[1].split()
    for i in range(N, 10 * N):
        for D in Dk:
            if D in str(i):
                break
        else:
            print(i)
            break
    return


main()

