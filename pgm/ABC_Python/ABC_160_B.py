def main():
    X = int(input())
    rm = X % 500
    print(X // 500 * 1000 + rm // 5 * 5)
    return


main()
