# ------ Exercise 1

class Pets():
    def __init__(self, animals):
        self.animals = animals

    def walk(self):
        for animal in self.animals:
            print(animal.walk())

class Cat():
    is_lazy = True

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def walk(self):
        return f'{self.name} is just walking around'

class Bengal(Cat):
    def sing(self, sounds):
        return f'{sounds}'

class Chartreux(Cat):
    def sing(self, sounds):
        return f'{sounds}'




class Siames(Cat):
    pass


b1 = Bengal("mimi",2)
c1 = Chartreux("minouch",3)
s1 = Siames("siames",5)

all_cats = [b1,c1,s1]

sara_pets = Pets(all_cats)
sara_pets.walk()

# ------ Exercise 2
class Dog :

    def __init__(self,n,a,w):
        self.name = n
        self.age = a
        self.weight = w


    def bark(self):
        print( self.name , " is barking !")

    def run_speed(self):
        return self.weight/self.age*10

    def fight(self,other_dog):

        my_dog = self.run_speed() * self.weight
        other = other_dog.run_speed() * other_dog.weight

        if my_dog > other :
            return f" {my_dog} howa li rba7 !! "
        elif my_dog < other :
            return f" {other_dog.name} howa li rba7 "
        else :
            return "kharjo ta3adol !!"


d1 = Dog("dog",2,3.0)
d2 = Dog("dooog",4,8.0)
d1.bark()
d1.run_speed()
print(d1.fight(d2))

# ------ Exercise 3
class PetDog(Dog):
    def __init__(self, name, age, weight):
        super().__init__(name, age, weight)
        self.trained = False  

    def train(self):
        print(self.bark()) 
        self.trained = True

    def play(self, *args):
        names = ", ".join([dog.name for dog in args] + [self.name])
        print(f"{names} all play together!")

    def do_a_trick(self):
        if self.trained:
            print(f"{self.name} does a barrel roll")
        else:
            print(f"{self.name} is not trained yet.")
# ------ Exercise 4

class Family:
    def __init__(self,members,last_name):
        self.last_name = last_name
        self.members = members if members else []




    def born(self,**kwargs):
        self.members.append(kwargs)
        print(f"Congratulations to the {self.last_name} family !!")


    def is_18(self,name):
        for member in self.members :
            if member["name"] == name :
                return member["age"] >= 18
        return False



    def family_presentation(self):
        print(f" Family Name : {self.last_name}")
        for m in self.members:
            print(m)


f1 = Family(
    last_name = "Johnson" ,
    members = [
        {'name':'Michael','age':35,'gender':'Male','is_child':False},
        {'name':'Sarah','age':32,'gender':'Female','is_child':False}
    ]
)


f1.born(name="Emma", age=1, gender="Female", is_child=True)

print(f1.is_18("Michael"))  # True
print(f1.is_18("Emma"))     # False

f1.family_presentation()

# ------ Exercise 5

class TheIncredibles(Family):
    def use_power(self, name):
        for member in self.members:
            if member["name"] == name:
                if member["age"] >= 18:
                    print(f"{member['name']} uses the power: {member['power']}")
                else:
                    raise Exception(f"{member['name']} is not over 18 years old!")
                return
        print(f"No member named {name} found.")

    def incredible_presentation(self):
        print("Here is our powerful family **")
        super().family_presentation()


incredible_family = TheIncredibles(
    [
        {'name':'Michael','age':35,'gender':'Male','is_child':False,'power': 'fly','incredible_name':'MikeFly'},
        {'name':'Sarah','age':32,'gender':'Female','is_child':False,'power': 'read minds','incredible_name':'SuperWoman'}
    ],
    "Incredibles"
)

incredible_family.incredible_presentation()

incredible_family.born(name="Baby Jack", age=1, gender="Male", is_child=True, power="Unknown Power", incredible_name="BabyJack")

incredible_family.incredible_presentation()

incredible_family.use_power("Michael")

