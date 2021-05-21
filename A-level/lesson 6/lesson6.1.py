journal = {'ivanov':(5, 4, 5), 'petrov':(2, 3), 'sidorov':(5, 5, 5, 5),'setrov':(5, 5, 5)}
middle_list = []
best = list()
worst = list()

for val in journal.values(): 
    summ = 0
    for id, item in enumerate(val):
        summ += item
        middle = summ / len(val)
    middle_list.append(middle)    
rating = dict(zip(journal, middle_list))

vishaya_ocenka = max(rating.values())
nizshaya_ocenka = min(rating.values())

for name, ball in rating.items():
    if ball == vishaya_ocenka:
        best.append({name})
    elif ball == nizshaya_ocenka:
        worst.append({name})

        
print('Лучший студент -', best)
print('Худший студент -', worst)