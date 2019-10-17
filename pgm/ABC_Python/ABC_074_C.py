A, B, C, D, E, F = map(int, input().split())

ans = {}


def main():
    MAX_A = F // (100 * A)

    for i in range(MAX_A + 1):
        MAX_B = (F - i * 100 * A) // (100 * B)

        for j in range(MAX_B + 1):
            if i == 0 and j == 0:
                continue

            a = i * A + j * B

            SAT = a * E

            CD = F - a * 100

            SAT_FLG = True

            if CD < SAT:
                SAT_FLG = False

            CD = min(SAT, CD)

            MAX_C = CD // C

            for k in range(MAX_C + 1):
                l = (CD - k * C) // D

                b = k * C + l * D

                if SAT == b:
                    print(a * 100 + b, b)
                    return

                LACK = SAT - b
                if not LACK in ans:
                    # Create New
                    ans[LACK] = (a * 100 + b, b, SAT_FLG)
                elif not ans[LACK][-1]:
                    # SAT_FLG False
                    # Overwrite
                    ans[LACK] = (a * 100 + b, b, SAT_FLG)

    print(" ".join([str(i) for i in ans[min(ans.keys())][:-1]]))
    return


main()
