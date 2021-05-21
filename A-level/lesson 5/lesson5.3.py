result = {} 
def add_word(word):
    result[word] = result.get(word) is None and 1 or result[word]+1     
    return word 

filename = "text.txt" 
f = open(filename, 'r') 
text = list(map(lambda x: x.strip(), f.readlines())) 
text = "".join(text).split() 
list(map(add_word, text)) 
print(result)