def main():
    print(sum(1 for s in input().split("+") if "0" not in s))
    return


main()

