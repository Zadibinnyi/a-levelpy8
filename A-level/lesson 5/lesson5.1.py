def lower(str):
    lower_string = str.lower()
    return lower_string

def upper(str):
    upper_string = str.upper()
    return upper_string

first_string = ['jhGHJUHHUIGnklnihg', 'jkjkhihuJKHghhiooi', 'jkijoiohiofnjhHUTs']
second_string = ['jhGHJUHHUIGnklnihg', 'jkjkhihuJKHghhiooi', 'jkijoiohiofnjhHUTs']

first_task = list(map(lower, first_string))
second_task = list(map(upper, second_string))

print(first_task)
print(second_task)