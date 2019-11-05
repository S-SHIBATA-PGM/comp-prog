from itertools import product


def main():
    N = int(input())
    print("\n".join(["".join(x)
                     for x in product("abc", repeat=N)]))
    return


main()

