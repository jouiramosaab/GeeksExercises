# ------ Challenge 1

number = int(input("entrer un nombre : "))
length = int(input("entrer length : "))

multiples =  [number * i for i in range(1,length+1)]

print(multiples)

# ------ Challenge 2

word = input("entrer un mot :")

result = word[0]  

for char in word[1:]: 
     
    if char != result[-1]:  
        result += char     

print(result)