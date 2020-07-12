from sys import stdin


def main():
    N, *S = [i.strip() for i in stdin.readlines()]
    N = int(N)
    judge = ["AC", "WA", "TLE", "RE"]
    mul = " x "
    C = [0] * len(judge)
    for Si in S:
        C[judge.index(Si)] += 1
    print("\n".join([judge[i] + mul + str(C[i]) for i in range(len(judge))]))
    return


main()
