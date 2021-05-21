n = int(input("Введите число: "))
print("Результат:", end = " ")
for i in range(1 , n+1): 
    if not n % i:
        print(i, end = " ")