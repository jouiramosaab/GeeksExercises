class Farm:
    def __init__(self, farm_name):
        self.name = farm_name
        self.animals = {} 

    def add_animal(self, animal_type, count=1):
        if animal_type in self.animals:
            self.animals[animal_type] += count  
        else:
            self.animals[animal_type] = count   

    def get_info(self):
        info = f"{self.name}'s farm\n\n"
        for animal, count in self.animals.items():
            info += f"{animal} : {count}\n"
        info += "\nE-I-E-I-0!"
        return info


    def get_animal_types(self):
        return sorted(self.animals.keys())  


    def get_short_info(self):
        animal_list = self.get_animal_types()
        animal_strings = []
        for animal in animal_list:
            count = self.animals[animal]
            name = animal + "s" if count > 1 else animal
            animal_strings.append(name)
     
        if len(animal_strings) > 1:
            short_info = ", ".join(animal_strings[:-1]) + " and " + animal_strings[-1]
        else:
            short_info = animal_strings[0]
        return f"{self.name}'s farm has {short_info}."



macdonald = Farm("McDonald")
macdonald.add_animal('cow', 5)
macdonald.add_animal('sheep')
macdonald.add_animal('sheep')
macdonald.add_animal('goat', 12)

print(macdonald.get_info())
print("\n" + macdonald.get_short_info())
