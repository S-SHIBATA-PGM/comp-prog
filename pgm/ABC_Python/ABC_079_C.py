from itertools import product

MAX_ITEM = 4
NUM = 7
OPS = ("+", "-")

ABCD = input()


def main():
    for p in product(OPS, repeat=3):
        eq = ABCD[0]

        for o, abcd in zip(p, ABCD[1:]):
            eq += o
            eq += abcd

        if eval(eq) == NUM:
            print(eq + "=" + str(NUM))
            break

    return


main()
