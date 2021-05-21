import random

n1 = random.randint(0, 100)
n2 = random.randint(0, 100)
n3 = random.randint(0, 100)

print ('Первое число:', n1)
print ('Второе число:', n2)
print ('Третье число:', n3)

if (n1 > n3) and (n2 > n3):
    print('Первое и второе больше чем третье')
elif (n3 > n1) and (n3 > n2):
    print('Третье больше чем первые два')
elif (n1 > n3) or (n2 > n3) :
    print('Первое или второе больше чем третье')

