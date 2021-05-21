sizes_of_footgear = {f'21': {'Европейские страны':(0, 1), 'Великобритания, США':(8, 8.5)},
f'23': {'Европейские страны':(2, 3), 'Великобритания, США':(9, 9.5)}, 
f'25': {'Европейские страны':(4, 5), 'Великобритания, США':(10, 10.5)}, 
f'27': {'Европейские страны':6, 'Великобритания, США':11}}

print ('Чулки и носки ')

def interpretation(sisizes_of_outerwearzes):
    print (list(sizes_of_footgear.keys()))
    print('Выберете размер для перевода (из Российских):')
    size = input()
    for i in sizes_of_footgear.keys():
        if size == i:
            print('Размеры одежды в странах:', sizes_of_footgear[i])

interpretation(sizes_of_footgear)
