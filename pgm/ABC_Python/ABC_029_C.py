from itertools import product


def main():
    N = int(input())
    print("\n".join(map("".join, product("abc", repeat=N))))
    return


main()

