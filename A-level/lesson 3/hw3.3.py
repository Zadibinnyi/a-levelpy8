f = open('fizzbuzz.txt', 'r') 
l = [ line.split() for line in f ]
f1 = open("result.txt", "w")
for id, item in enumerate(l):
    q = l[id]
    for id, item in enumerate(q):
        fizz = int(q[0])
        buzz = int(q[1])
        n = int(q[2])
    for i in range(1, n+1):
        if i % fizz == 0 and i % buzz == 0:
            f1.write('FB')
            f1.write(' ')
        elif i % fizz == 0:
            f1.write('F')
            f1.write(' ')
        elif i % buzz == 0:
            f1.write('B')
            f1.write(' ')
        else :
            f1.write(str(i))
            f1.write(' ')
    f1.write('\n')

    
f.close() 
f1.close() 
