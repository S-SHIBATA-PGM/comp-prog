m = int(input())

if m < 100:
    VV = 0
elif 100 <= m <= 5000:
    VV = m // 100
elif 6000 <= m <= 30000:
    VV = m // 1000 + 50
elif 35000 <= m <= 70000:
    VV = (m // 1000 - 30) // 5 + 80
elif 70000 < m:
    VV = 89

print(str(VV).rjust(2, '0'))
