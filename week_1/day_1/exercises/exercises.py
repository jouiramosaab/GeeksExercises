# ------ Exercise 1

for i in range(0,4):
    print("hello World !")


# ------ Exercise 2

result = (99 ** 3) * 8
print(result)


# ------ Exercise 3

user_name = input("enter your name ")
my_name = "MOSAAB"
if(user_name.strip().lower() == my_name.strip().lower() ):
    print("We have the same name !!")
else : 
    print(f"Nice to meet you, {user_name}! 😂")

# ------ Exercise 4

your_height = int(input("your height : "))

if your_height > 145 : 
    print("You are tall enough to ride the roller coaster !")
else:
    print("You need to grow some more to ride the roller coaster!")

    
# ------ Exercise 5

my_fav_numbers ={5,10,15}
friend_fav_numbers = {50,70,90}

my_fav_numbers.add(20)
my_fav_numbers.add(25)

my_fav_numbers.remove(10)

our_fav_numbers = my_fav_numbers.union(friend_fav_numbers)


print(my_fav_numbers)
print(our_fav_numbers)

# ------ Exercise 6

# No, you cannot add integers directly to a tuple because it is immutable


# ------ Exercise 7


basket = ["Banana", "Apples", "Oranges", "Blueberries"]


basket.remove("Banana")
basket.remove("Blueberries")

basket.append("Kiwi")
basket.insert(0,"Apples")

print(basket.count("Apples"))
basket.clear()


print(basket)

# ------ Exercise 8


sandwich_orders = ["Tuna sandwich", "Pastrami sandwich", "Avocado sandwich", "Pastrami sandwich", "Egg sandwich", "Chicken sandwich", "Pastrami sandwich"]

while "Pastrami sandwich" in sandwich_orders :
    sandwich_orders.remove("Pastrami sandwich")

finished_sandwiches = []

while sandwich_orders:
    current_sandwich = sandwich_orders.pop(0)
    finished_sandwiches.append(current_sandwich)

for sandwich in finished_sandwiches:
    print(f"I made your {sandwich.lower()}")
