a = [10, 20, 30, 40]
n = b = 0
i = -1

for id, item in enumerate(a):
    b += item
print(b)

for id, item in enumerate(a):
    while i < id:
        n += item
        i += 1
print(n)