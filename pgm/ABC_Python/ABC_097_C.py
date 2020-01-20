def main():
    s = input()
    K = int(input())
    print(sorted({s[i:j]
                  for i in range(len(s))
                  for j in range(i + 1, min(i + K + 1, len(s) + 1))})[K - 1])
    return


main()
