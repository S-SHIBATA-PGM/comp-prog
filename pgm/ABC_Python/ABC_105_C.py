def main():
    N = int(input())
    S = ""

    if N == 0:
        print("0")

    else:
        while N:
            if N % 2:
                N -= 1
                S = "1" + S

            else:
                S = "0" + S

            N //= -2

        print(S)

    return


main()
