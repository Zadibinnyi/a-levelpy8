print ('Введите число:', end = " ")
num = int(input())
ns=str(num)
l=len(ns)
res=""
flg=0
for i in range(l):
    j=l-i
    a=ns[i]
    if a != '0':
        if j > 1:
            if flg==0:
                res+=a+"*10^"+str(j-1)
                flg=1
            else:
                res+="+"+a+"*10^"+str(j-1)
        else:
            if flg==0:
                res+=a
                flg=1
            else:
                res+="+"+a             

print(res)