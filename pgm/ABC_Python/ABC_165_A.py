def main():
    K = int(input())
    A, B = map(int, input().split())
    largest = B // K * K
    print("OK" if A <= largest else "NG")
    return


main()
