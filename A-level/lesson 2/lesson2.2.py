print ('Введите число:')
n = int(input())

if n % 2 :
    print ('Число не четное')
else:
    print ('Число четное')     

if  n % 3 and n %  5 and n % 10:     
    print ('Число подходит')
else:
     print ('Число не подходит')