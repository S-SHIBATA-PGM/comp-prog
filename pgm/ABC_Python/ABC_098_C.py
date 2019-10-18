from sys import stdin

input = stdin.readline

MAX_N = 300001

N = int(input())

S = input()


def main():
    # 東を向いている人の累積和
    E = [0] * N

    if S[0] == 'E':
        E[0] += 1

    for i in range(1, N):
        E[i] = E[i - 1]
        if S[i] == 'E':
            E[i] += 1

    ans = MAX_N

    for i in range(N):
        # 東を向いている人 西に向ける
        num = E[-1] - E[i]

        if (0 < i):
            # 西を向いている人 東に向ける
            num += i - E[i - 1]

        ans = min(ans, num)

    print(ans)
    return


main()
