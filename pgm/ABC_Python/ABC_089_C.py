input = open(0).read

N, *Sn = map(str, input().split())
N = int(N)


def main():
    M = {j for j in Sn if j[0] in "M"}
    A = {j for j in Sn if j[0] in "A"}
    R = {j for j in Sn if j[0] in "R"}
    C = {j for j in Sn if j[0] in "C"}
    H = {j for j in Sn if j[0] in "H"}

    m = len(M)
    a = len(A)
    r = len(R)
    c = len(C)
    h = len(H)

    print(
        m * a * r
        + m * a * c
        + m * a * h
        + m * r * c
        + m * r * h
        + m * c * h
        + a * r * c
        + a * r * h
        + a * c * h
        + r * c * h)

    return


main()
