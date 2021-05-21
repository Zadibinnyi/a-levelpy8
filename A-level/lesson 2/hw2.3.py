print ('Введите число fizz:')
fizz = int(input())
print ('Введите число buzz:')
buzz = int(input())
print ('Введите число до которого нужно досчитать:')
n = int(input())
for i in range(1, n+1):
    if not i % fizz and not i % buzz:
        print ('FB', end=' ')
    elif not i % fizz:
        print ('F', end=' ')
    elif not i % buzz:
        print ('B', end=' ')
    else :
        print (i, end=' ')