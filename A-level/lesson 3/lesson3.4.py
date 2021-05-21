bills = [10, 20, 50, 100, 200, 500 ,1000]
print('Какую сумму вы хотите снять (кратную 10):')
sum = int(input())
if not (sum % 10):
    INF = 10 ** 10
    F = [ INF ] * (sum + 1)

    F [0] = 0
    for key in range (1 , sum + 1) :
        for id in range (len(bills)) :
            if key - bills[id] >= 0 and F[key - bills[id]] < F[key] :
                F[key] = F[key - bills[id]]
                F[key] += 1
    result = []
    key = sum
    while key != 0 :
        for id in range (len (bills)) :
            if key - bills[id] >= 0 and F[key] == F[key - bills[id]] + 1 :
                result.append (bills[id])
                key -= bills[id]
    print(result)
else:
    print('Сумма не кратна 10!')
