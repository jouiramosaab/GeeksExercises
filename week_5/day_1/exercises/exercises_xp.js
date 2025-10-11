// Exercise 1

function compareToTen(num) {
  return new Promise((resolve, reject) => {
    if (num <= 10) {
      resolve("vous avez raison !!");
    } else {
      reject("desole !! vous avez une erreur");
    }
  });
}

compareToTen(88)
  .then((result) => console.log(result))
  .catch((error) => console.log(error));

// Exercise 2 :


    new Promise((resolve)=>{
      setTimeout(()=>{
        resolve("success");
      },4000)
    }).then((message)=>{
      console.log(message)
    })


// Exercise 3 :

Promise.resolve(3).then((value)=>{console.log(value)})
Promise.reject("Boo!").catch((error)=>{console.log(error)})



