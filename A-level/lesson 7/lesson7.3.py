import collections
filename = "text.txt" 
f = open(filename, 'r') 
f1 = f.readline()
c = collections.Counter(f1)

print (c)