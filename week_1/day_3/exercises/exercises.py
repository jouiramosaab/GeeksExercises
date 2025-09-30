# ------ Exercise 1

class Cat:
    def __init__(self, cat_name, cat_age):
        self.name = cat_name
        self.age = cat_age


cat1 = Cat("Mimi", 2)
cat2 = Cat("Lilly", 3)
cat3 = Cat("Minouch", 5)


def oldest_cat(*cats):
    oldest = cats[0]
    for  cat in cats[1:]:
        if cat.age > oldest.age :
            oldest = cat
    return oldest

oldest = oldest_cat(cat1,cat2,cat3)
print(f"The oldest cat is {oldest.name} and is {oldest.age} years old ")




# ------ Exercise 2
class Dog:
    def __init__(self,name,height):
        self.name = name
        self.height = height

    def  bark(self):
        print(f"{self.name} goes woof !!")

    def jump(self):
        print(f"{self.name} jumps {self.height*2} cm high !!")

def tallest_dog(*dogs):
    tallest = dogs[0]
    for dog in dogs[1:]:
        if dog.height > tallest.height:
            tallest = dog
    return tallest




davids_dog = Dog("Rex",50)
davids_dog.bark()
davids_dog.jump()
print("==============================")
sarahs_dog = Dog("Teacup",20)
sarahs_dog.bark()
sarahs_dog.jump()
print("==============================")

he = tallest_dog(davids_dog,sarahs_dog)
print(f"The tallest dog is {he.name} with height {he.height} cm ")


# ------ Exercise 3

class Song:
    def __init__(self,lyrics):
        self.lyrics = lyrics

    def sing_me_a_song(self):
        for line in self.lyrics :
            print(line)

s = Song([
"There’s a lady who's sure",
"all that glitters is gold",
"and she’s buying a stairway to heaven"
])

s.sing_me_a_song()


# ------ Exercise 4

class Zoo:
    def __init__(self,zoo_name):
        self.name = zoo_name
        self.animals = []


    def add_animal(self,new_animal):
        if new_animal not in self.animals :
            self.animals.append(new_animal)


    def get_animals(self):
        print("Animals in the Zoo :",self.animals)


    def sell_animals(self,animal_sold):
        if animal_sold in self.animals :
            self.animals.remove(animal_sold)

    def sort_animals(self):
        self.groups = {}


        for animal in sorted(self.animals):
            first_letter = animal[0].upper()
            if first_letter not in self.groups:
                self.groups[first_letter] = []
            self.groups[first_letter].append(animal)


    def get_groups(self):
        for letter,animals in self.groups.items():
            print(f"{letter}:{animals}")


new_york_zoo = Zoo("New York Zoo")


new_york_zoo.add_animal("Ape")
new_york_zoo.add_animal("Baboon")
new_york_zoo.add_animal("Bear")
new_york_zoo.add_animal("Cat")
new_york_zoo.add_animal("Cougar")
new_york_zoo.add_animal("Eel")
new_york_zoo.add_animal("Emu")
new_york_zoo.add_animal("Giraffe")



new_york_zoo.get_animals()


new_york_zoo.sell_animals("Baboon")
new_york_zoo.get_animals()

new_york_zoo.sort_animals()
new_york_zoo.get_groups()




