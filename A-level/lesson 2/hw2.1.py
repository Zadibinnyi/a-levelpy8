print ('Первый пример')
print ("Give it to me!")
number = int(input())

if (number >= 100):
    print ("Thanks, man!")
elif ((number > 10) and (number < 100)):
    print ("OK :(")
else:
    print ("WHAAAAT????")

if (number > 1000):
    print ("!!!!WOOOOWWWW!!!")

print ('Второй пример')
x = 5
y = 10
z = 15

example1 = (x < y) and (y <= z)

example2 = x < y <= z

print (example1)
print (example2)

print ('Третий пример')

l1 = [1, 2, 3]
l2 = [1, 2, 3]

example = l1 == l2
print (example)
example = l1 is l2
print (example)
example = l1 is not l2
print (example)
example = 3 in l1
print (example)
example = 4 in l1
print (example)
example = 5 not in l1
print (example)

print ('Четвертый пример') 
test = True
result = 'Test is True' if test else 'Test is False'
print (result)
print ('ttt' if test else 'fff') # выведет ttt

print ('Пятый пример') 

s = ''

if s !='':
    print ()
    
if 8 % 2 != 0:
    print ()

if s:
    print ()
    
if 8 % 2:
    print ()

print ('Шестой пример')

a = 11
if a>10 and a < 20:
    print ('Число входит в заданные рамки')

test = True
result = test and 'Test is True' or 'Test is False'
print (result)