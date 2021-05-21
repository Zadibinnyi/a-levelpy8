f = open('fizzbuzz.txt', 'r') 
l = [ line.split() for line in f ]
for id, item in enumerate(l):
    q = l[id]
    for id, item in enumerate(q):
        fizz = int(q[0])
        buzz = int(q[1])
        n = int(q[2])
    for i in range(1, n+1):
        if i % fizz == 0 and i % buzz == 0:
            print ('FB', end=' ')
        elif i % fizz == 0:
            print ('F', end=' ')
        elif i % buzz == 0:
            print ('B', end=' ')
        else :
            print (i, end=' ')
    print('\n')

    
f.close() 

