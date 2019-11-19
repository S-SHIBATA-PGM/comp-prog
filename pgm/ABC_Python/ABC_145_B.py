Yes = "Yes"
No = "No"


def main():
    N = int(input())
    S = input()
    if not N % 2:
        print(Yes if S[: N // 2] == S[N // 2:] else No)
    else:
        print(No)
    return


main()
