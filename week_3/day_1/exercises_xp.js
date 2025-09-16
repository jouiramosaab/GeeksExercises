// Exercise 1 :
let people = ["Greg", "Mary", "Devon", "James"];

people.shift();

people[people.indexOf("James")] = "Jason";

people.push("Mosaab");

console.log(people.indexOf("Mary"));

let peopleCopy = people.slice(1, 3);
console.log(peopleCopy);

console.log(people.indexOf("Foo")); 

let last = people[people.length - 1];
console.log(last);

// Part II - Loops

for (let person of people) {
  console.log(person);
}

for (let person of people) {
  console.log(person);
  if (person === "Devon") break;
}


//  Exercise 2 : 

let colors = ["blue", "red", "green", "yellow", "black"];
let suffixes = ["st", "nd", "rd", "th", "th"]; 

for (let i = 0; i < colors.length; i++) {
  console.log(`My #${i + 1} choice is ${colors[i]}`);
  console.log(`My ${i + 1}${suffixes[i]} choice is ${colors[i]}`);
}


//  Exercise 3 :
let number;
do {
  number = prompt("Enter a number >= 10:");
} while (Number(number) < 10);


// Exercise 4 : 
const building = {
  numberOfFloors: 4,
  numberOfAptByFloor: {
    firstFloor: 3,
    secondFloor: 4,
    thirdFloor: 9,
    fourthFloor: 2,
  },
  nameOfTenants: ["Sarah", "Dan", "David"],
  numberOfRoomsAndRent: {
    sarah: [3, 990],
    dan: [4, 1000],
    david: [1, 500],
  },
};

console.log(building.numberOfFloors);

console.log(building.numberOfAptByFloor.firstFloor);
console.log(building.numberOfAptByFloor.thirdFloor);

let secondTenant = building.nameOfTenants[1];
let rooms = building.numberOfRoomsAndRent[secondTenant.toLowerCase()][0];
console.log(secondTenant, rooms);

let sarahRent = building.numberOfRoomsAndRent.sarah[1];
let davidRent = building.numberOfRoomsAndRent.david[1];
let danRent = building.numberOfRoomsAndRent.dan[1];

if (sarahRent + davidRent > danRent) {
  building.numberOfRoomsAndRent.dan[1] = 1200;
}
console.log(building.numberOfRoomsAndRent);


//  Exercise 5 : 
let family = {
  father: "Ahmed",
  mother: "Laila",
  son: "Ali"
};


for (let key in family) {
  console.log(key);
}


for (let key in family) {
  console.log(family[key]);
}


// Exercise 6 : 
const details = {
  my: 'name',
  is: 'Rudolf',
  the: 'reindeer'
};

let sentence = "";
for (let key in details) {
  sentence += key + " " + details[key] + " ";
}
console.log(sentence.trim()); 


//  Exercise 7 : 
const names = ["Jack", "Philip", "Sarah", "Amanda", "Bernard", "Kyle"];
let secretName = names
  .map(name => name[0])
  .sort() 
  .join(""); 
console.log(secretName); 
