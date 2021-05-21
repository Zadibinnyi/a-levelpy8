sizes = {f'XXS': {'Россия':42, 'Германия':36, 'США':8, 'Франция':38, 'Великобритания':24},
f'XS': {'Россия':44, 'Германия':38, 'США':10, 'Франция':40, 'Великобритания':26},
f'S': {'Россия':48, 'Германия':40, 'США':12, 'Франция':42, 'Великобритания':28},
f'M': {'Россия':50, 'Германия':42, 'США':14, 'Франция':44, 'Великобритания':30},
f'L': {'Россия':52, 'Германия':44, 'США':16, 'Франция':46, 'Великобритания':32},
f'XL': {'Россия':54, 'Германия':46, 'США':18, 'Франция':48, 'Великобритания':34},
f'XXL': {'Россия':56, 'Германия':48, 'США':20, 'Франция':50, 'Великобритания':36}}


def interpretation(sizes):
    print (list(sizes.keys()))
    print('Выберете размер для перевода:')
    size = input()
    for i in sizes.keys():
        if size == i:
            print('Размеры одежды в странах:', sizes[i])

interpretation(sizes)
