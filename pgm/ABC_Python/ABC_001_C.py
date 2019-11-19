from decimal import Decimal, ROUND_HALF_UP


class Constants:
    C = "C"
    MAX_DIS = 12000.1
    SCALE_DEG = "0.01"
    SCALE_DIS = "0.1"


class Deg:
    def __init__(self, f, t):
        # from to
        self.f = Decimal(str(f)).quantize(
            Decimal(Constants.SCALE_DEG), rounding=ROUND_HALF_UP)
        self.t = Decimal(str(t)).quantize(
            Decimal(Constants.SCALE_DEG), rounding=ROUND_HALF_UP)


class Dis:
    def __init__(self, f, t):
        # from to
        self.f = Decimal(str(f)).quantize(
            Decimal(Constants.SCALE_DIS), rounding=ROUND_HALF_UP)
        self.t = Decimal(str(t)).quantize(
            Decimal(Constants.SCALE_DIS), rounding=ROUND_HALF_UP)


Dg = {
    "NNE": Deg(11.25, 33.75),
    "NE": Deg(33.75, 56.25),
    "ENE": Deg(56.25, 78.75),
    "E": Deg(78.75, 101.25),
    "ESE": Deg(101.25, 123.75),
    "SE": Deg(123.75, 146.25),
    "SSE": Deg(146.25, 168.75),
    "S": Deg(168.75, 191.25),
    "SSW": Deg(191.25, 213.75),
    "SW": Deg(213.75, 236.25),
    "WSW": Deg(236.25, 258.75),
    "W": Deg(258.75, 281.25),
    "WNW": Deg(281.25, 303.75),
    "NW": Deg(303.75, 326.25),
    "NNW": Deg(326.25, 348.75)}


Ds = {
    0: Dis(0.0, 0.2),
    1: Dis(0.3, 1.5),
    2: Dis(1.6, 3.3),
    3: Dis(3.4, 5.4),
    4: Dis(5.5, 7.9),
    5: Dis(8.0, 10.7),
    6: Dis(10.8, 13.8),
    7: Dis(13.9, 17.1),
    8: Dis(17.2, 20.7),
    9: Dis(20.8, 24.4),
    10: Dis(24.5, 28.4),
    11: Dis(28.5, 32.6),
    12: Dis(32.7, Constants.MAX_DIS)}


def main():
    deg, dis = input().split()
    deg = Decimal(deg) / Decimal("10")
    deg = deg.quantize(
        Decimal(Constants.SCALE_DEG), rounding=ROUND_HALF_UP)
    dis = Decimal(dis) / Decimal("60")
    dis = dis.quantize(
        Decimal(Constants.SCALE_DIS), rounding=ROUND_HALF_UP)
    # 風力
    W = 0
    for k, v in Ds.items():
        if Decimal(v.f).compare(dis) <= 0 and 0 <= Decimal(v.t).compare(dis):
            W = k
            break
    # 風向
    Dir = "N"
    for k, v in Dg.items():
        if Decimal(v.f).compare(deg) <= 0 and 0 <= Decimal(v.t).compare(deg):
            Dir = k
            break
    print(" ".join([Constants.C, str(W)] if W == 0 else [Dir, str(W)]))
    return


main()

