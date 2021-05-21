def squared_simple_num():
    numbers = list(range(1, 103))
    lst=[]
    lst1=[]
    for i in range(2, len(numbers)+2):
        for j in lst:
            if not i % j :
                break
        else:
            lst.append(i)
            lst1.append(i*i)
    print (lst)
    print (lst1)

squared_simple_num()