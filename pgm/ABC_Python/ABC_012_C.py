def main():
    N = int(input())
    print("\n".join(
        ["{} x {}".format(i, j)
         for i in range(1, 10)
         for j in range(1, 10)
         if i * j == 2025 - N]))
    return


main()

