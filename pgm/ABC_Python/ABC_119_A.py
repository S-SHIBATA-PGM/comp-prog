import datetime

S = datetime.datetime.strptime(input(), "%Y/%m/%d")

T = datetime.datetime.strptime("2019/05/01", "%Y/%m/%d")

print("Heisei" if S < T else "TBD")
