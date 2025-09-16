// Exercises 1 : 

let person1 = {
  fullName: "Ali Ahmed",
  mass: 70,       // بالكيلوغرام
  height: 1.75,   // بالمتر
  calcBMI: function() {
    return this.mass / (this.height * this.height);
  }
};

let person2 = {
  fullName: "Sara Youssef",
  mass: 60,
  height: 1.60,
  calcBMI: function() {
    return this.mass / (this.height * this.height);
  }
};

function compareBMI(p1, p2) {
  let bmi1 = p1.calcBMI();
  let bmi2 = p2.calcBMI();

  if (bmi1 > bmi2) {
    console.log(p1.fullName + " has the largest BMI: " + bmi1.toFixed(2));
  } else if (bmi2 > bmi1) {
    console.log(p2.fullName + " has the largest BMI: " + bmi2.toFixed(2));
  } else {
    console.log("Both have the same BMI: " + bmi1.toFixed(2));
  }
}

compareBMI(person1, person2);

// Exercises 2 : 


function findAvg(gradesList) {
  let sum = 0;
  for (let i = 0; i < gradesList.length; i++) {
    sum += gradesList[i];
  }
  let avg = sum / gradesList.length;
  console.log("Average: " + avg);

  if (avg > 65) {
    console.log("You passed 🎉");
  } else {
    console.log("You failed 😢 and must repeat the course");
  }
}

findAvg([70, 80, 60, 90]);

