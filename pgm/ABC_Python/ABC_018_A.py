class Mame:
    def __init__(self, ABC, point, rank):
        self.ABC = ABC
        self.point = point
        self.rank = rank

    def __repr__(self, ABC, point, rank):
        return repr((self.ABC, self.point, self.rank))


A = int(input())
B = int(input())
C = int(input())

l = []
l.append(Mame('A', A, 0))
l.append(Mame('B', B, 0))
l.append(Mame('C', C, 0))

l = sorted(l, key=lambda x: x.point, reverse=True)

for i in range(0, len(l), 1):
    l[i].rank = i + 1

l = sorted(l, key=lambda x: x.ABC)

for i in range(0, len(l), 1):
    print(l[i].rank)
