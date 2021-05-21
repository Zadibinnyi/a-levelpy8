rating = [10, 20, 50, 100, 200, 500 ,1000]
print('Какую сумму вы хотите снять (кратную 10):')
sum = int(input())
bills = dict.fromkeys(rating, 0)
if not (sum % 10):
    for id in range (0, len(rating)):
        if not sum:
            break
        for i in range(10, 0, -1):
            if (not (sum - i * rating[id]) or ((sum - i * rating[id]) > 0 and not ((sum - i *rating[id]) % rating[id + 1]))):
                bills[rating[id]] = i
                sum -= i *rating[id]
                break
    print(bills)
else:
    print('Сумма не кратна 10!')
