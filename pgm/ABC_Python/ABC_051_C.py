def main():
    U, D, L, R = "U", "D", "L", "R"
    sx, sy, tx, ty = map(int, input().split())
    dx = tx - sx
    dy = ty - sy
    print(R * dx + U * dy
          + L * dx + D * dy
          + D * 1
          + R * (dx + 1) + U * (dy + 1)
          + L
          + U
          + L * (dx + 1) + D * (dy + 1)
          + R)
    return


main()

