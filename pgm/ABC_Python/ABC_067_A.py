A, B = map(int, input().split())
print("Possible" if A % 3 == 0 else "Possible" if B %
      3 == 0 else "Possible" if (A + B) % 3 == 0 else "Impossible")
