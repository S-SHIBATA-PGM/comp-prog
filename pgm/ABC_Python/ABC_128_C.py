from sys import stdin


def main():
    lines = stdin.readlines()
    N, M = map(int, lines[0].split())
    print(sum(1
              for i in range(1 << N)
              if sum(1
                     for s, p in zip(
                         (sum(1 << int(j) - 1
                              for j in i.split()[1:])
                          for i in lines[1:-1]),
                         (int(i)
                          for i in lines[-1].split()))
                     if bin(i & s).count("1") % 2 == p) == M))
    return


main()
