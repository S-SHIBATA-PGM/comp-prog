def main():
    S = [int(i) for i in input()]
    print(min(sum(S[::2]) + len(S) + (-len(S) // 2) - sum(S[1::2]),
              - (-len(S) // 2) - sum(S[::2]) + sum(S[1::2])))

    return


main()
