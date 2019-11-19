cards = "123456"


def main():
    N = int(input())
    ans = list(cards)
    for i in range(N % 30):
        # 0-based indexing
        ans[i % 5], ans[(i % 5) + 1] = ans[(i % 5) + 1], ans[i % 5]
    print("".join(ans))
    return


main()

