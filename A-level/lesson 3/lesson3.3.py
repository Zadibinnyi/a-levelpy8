import sys
filename = sys.argv[0]

f = open(filename, 'r')
q = list(f)
q.reverse()
for line in q: 
	print(line[::-1])
f.close() 