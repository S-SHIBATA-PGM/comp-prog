A, B, C, D, E, F = map(int, input().split())


def main():
    sa = {100 * i * A + 100 * j * B
          for i in range(F) for j in range(F)
          if 100 * i * A + 100 * j * B <= F and i + j != 0}

    sb = {i * C + j * D for i in range(F) for j in range(F)
          if i * C + j * D <= F and i + j != 0}

    a = sorted(sa)
    b = sorted(sb)

    conc = 0.0

    for i in a:
        for j in b:
            if F < i + j:
                break
            if E * i / 100 < j:
                break

            if conc < j / (i + j) * 100:
                conc = j / (i + j) * 100
                water = i
                sugar = j

    print(water + sugar, sugar)
    return


main()
