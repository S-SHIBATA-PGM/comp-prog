import math

def main():
    N, K = map(int, input().split())
    print(int(math.log(N) / math.log(K)) + 1)
    return


main()
