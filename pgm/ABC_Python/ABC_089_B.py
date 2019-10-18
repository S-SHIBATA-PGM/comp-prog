N = int(input())
S = set(map(str, input().split()))

print("Three" if len(S) == 3 else "Four")
