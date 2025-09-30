// Exercises 1 :

let numbers = [123, 8409, 100053, 333333333, 7];

for (let i = 0; i < numbers.length; i++) {
  if (numbers[i] % 3 === 0) {
    console.log(true); 
  } else {
    console.log(false); 
  }
}


// Exercises 2 : 

let guestList = {
  randy: "Germany",
  karla: "France",
  wendy: "Japan",
  norman: "England",
  sam: "Argentina"
};

let name = prompt("What is your name?");

if (name.toLowerCase() in guestList) {
  let country = guestList[name.toLowerCase()];
  console.log(`Hi! I'm ${name}, and I'm from ${country}.`);
} else {
  console.log("Hi! I'm a guest.");
}


// Exercises : 

let age = [20, 5, 12, 43, 98, 55];


let sum = 0;
for (let i = 0; i < age.length; i++) {
  sum += age[i];
}
console.log("Sum:", sum);


let highest = age[0]; 
for (let i = 1; i < age.length; i++) {
  if (age[i] > highest) {
    highest = age[i];
  }
}
console.log("Highest age:", highest); 


