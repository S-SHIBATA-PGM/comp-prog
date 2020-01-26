def main():
    A, B, C = sorted(map(int, input().split()))
    print((2 * C - A - B) // 2 + 2 if (2 * C - A - B) % 2 else
          (2 * C - A - B) // 2)
    return


main()
