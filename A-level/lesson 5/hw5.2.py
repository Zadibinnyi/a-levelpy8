f = open('fizzbuzz.txt', 'r') 
l = [ line.split() for line in f ]

for id, item in enumerate(l):
    q = l[id]
    for id, item in enumerate(q):
        fizz = int(q[0])
        buzz = int(q[1])
        n = int(q[2])
    result = (list( map ( lambda n:"FB" if n % fizz == 0 and n % buzz == 0 else "F" if n % fizz == 0 else "B" if n % buzz == 0 else n, [i for i in range(1,n+1)])))
    print (result)
        
f.close() 
