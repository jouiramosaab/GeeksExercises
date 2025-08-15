# ------ Exercise 1

keys = ["Ten","Twenty","Thirty"]
values = [10,20,30]

result = dict(zip(keys,values))
print (result)


# ------ Exercise 2

family = {"rick": 43, 'beth': 13, 'morty': 5, 'summer': 8}

total_cost = 0

for name, age in family.items():
    if age < 3:
        price = 0
    elif 3 <= age <= 12:
        price = 10
    else:
        price = 15
    print(f"{name} has to pay ${price}")
    total_cost += price

print(f"Total cost for family: ${total_cost}")


# bonus : 

family = {}

while True:
    name = input("دخل الاسم (أو 'stop' باش تسالي): ")
    if name.lower() == 'stop':
        break
    age = int(input(f"دخل العمر ديال {name}: "))
    family[name] = age

total_cost = 0
for name, age in family.items():
    if age < 3:
        price = 0
    elif 3 <= age <= 12:
        price = 10
    else:
        price = 15
    print(f"{name} has to pay ${price}")
    total_cost += price

print(f"Total cost for family: ${total_cost}")


# ------ Exercise 3

brand = {
    "name": "Zara",
    "creation_date": 1975,
    "creator_name": "Amancio Ortega Gaona",
    "type_of_clothes": ["men", "women", "children", "home"],
    "international_competitors": ["Gap", "H&M", "Benetton"],
    "number_stores": 7000,
    "major_color": {"France": "blue", "Spain": "red", "US": ["pink", "green"]}
}

brand["number_stores"] = 2
print(f"Zara sells clothes for: {', '.join(brand['type_of_clothes'])}")
brand["country_creation"] = "Spain"
if "international_competitors" in brand:
    brand["international_competitors"].append("Desigual")
del brand["creation_date"]
print(brand["international_competitors"][-1])
print(brand["major_color"]["US"])
print(len(brand))
print(brand.keys())

more_on_zara = {"creation_date": 1975, "number_stores": 10000}
brand.update(more_on_zara)
print(brand["number_stores"])  # النتيجة: 10000 بعد update


# ------ Exercise 4
def describe_city(city, country="Morocco"):
    print(f"{city} is in {country}")

describe_city("Rabat")
describe_city("Paris", "France")

# ------ Exercise 5

import random

def compare_numbers(user_number):
    rand_number = random.randint(1, 100)
    print(f"Your number: {user_number}, Random number: {rand_number}")
    if user_number == rand_number:
        print("Success! You guessed it!")
    else:
        print("Fail! Try again.")

compare_numbers(int(input("دخل رقم بين 1 و100: ")))


# ------ Exercise 6

def make_shirt(size="Large", text="I love Python"):
    print(f"The size of the shirt is {size} and the text is '{text}'")

make_shirt() 
make_shirt("Medium") 
make_shirt("Small", "Hello World")  
make_shirt(text="Python is fun", size="XL")  


# ------ Exercise 7

import random

def get_random_temp(season=None):
    if season == "winter":
        low, high = -10, 16
    elif season == "spring":
        low, high = 0, 23
    elif season == "summer":
        low, high = 16, 40
    elif season == "autumn":
        low, high = 0, 30
    else:
        low, high = -10, 40
    return round(random.uniform(low, high), 1)  # float

def main():
    season = input("دخل الموسم (winter, spring, summer, autumn): ").lower()
    temp = get_random_temp(season)
    print(f"The temperature right now is {temp}°C")
    if temp < 0:
        print("Brrr, that’s freezing! Wear some extra layers today.")
    elif 0 <= temp <= 16:
        print("Quite chilly! Don’t forget your coat.")
    elif 16 < temp <= 23:
        print("Nice weather. Light jacket is fine.")
    elif 24 <= temp <= 32:
        print("Warm! Dress comfortably.")
    else:
        print("Hot! Stay hydrated and wear light clothes.")

main()


# ------ Exercise 8

data = [
    {"question": "What is Baby Yoda's real name?", "answer": "Grogu"},
    {"question": "Where did Obi-Wan take Luke after his birth?", "answer": "Tatooine"},
    {"question": "What year did the first Star Wars movie come out?", "answer": "1977"},
    {"question": "Who built C-3PO?", "answer": "Anakin Skywalker"},
    {"question": "Anakin Skywalker grew up to be who?", "answer": "Darth Vader"},
    {"question": "What species is Chewbacca?", "answer": "Wookiee"}
]

def quiz():
    correct = 0
    incorrect = 0
    wrong_answers = []
    for item in data:
        ans = input(item["question"] + " ")
        if ans.strip().lower() == item["answer"].lower():
            correct += 1
        else:
            incorrect += 1
            wrong_answers.append({"question": item["question"], "your_answer": ans, "correct_answer": item["answer"]})
    print(f"Correct: {correct}, Incorrect: {incorrect}")
    if wrong_answers:
        print("Questions you got wrong:")
        for w in wrong_answers:
            print(f"{w['question']}, Your answer: {w['your_answer']}, Correct: {w['correct_answer']}")
    if incorrect > 3:
        print("You had more than 3 wrong answers. Try again!")

quiz()
