journal = {'ivanov':(5, 4, 5), 'petrov':(2, 3), 'sidorov':(5, 5, 5, 5),'setrov':(5, 5, 5)}
middle_list = []
last = []

for val in journal.values(): 
    summ = 0
    for id, item in enumerate(val):
        summ += item
        middle = summ / len(val)
    middle_list.append(middle)    
rating = dict(zip(journal, middle_list))
list_rating = list(rating.items())
list_rating.sort(key=lambda i: i[1])
for i in rating.items()():
    if i >= rating.items():
        last.append(i)
        print (i)

