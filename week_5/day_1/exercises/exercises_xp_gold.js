// Exercise 1 : Promise.all()

const promise1 = Promise.resolve(3);
const promise2 = 42;
const promise3 = new Promise((resolve, reject) => {
  setTimeout(resolve, 3000, 'foo');
});
// expected output: Array [3, 42, "foo"]



    // Promise.all() works by taking an array of promises as its parameter.
    // These parameters are promises. 
    // If all of them are resolved, it resolves and goes to then.
    // But if any one of them is rejected, Promise.all() immediately goes to catch.
    // In this example, all three promises are correct, so Promise.all() returns all of them in then.


// Exercise 2 : Analyse Promise.all()


// Here we do a map on the array, passing each element as a parameter to timesTwoAsync, 
// and if the result stored in promiseArr is correct, we pass it to then. Just tell me if this is correct.

