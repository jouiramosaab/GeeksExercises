// ===== Exercise 1

function displayNumbersDivisible(){
    for(let i = 0 ; i <= 500 ; i++ ){
        if( i % 23 === 0 ){
            console.log(i)
        }
    }
}

 function displayNumbersDivisible(divisor){
    let sum = 0 ;
    for(let i = 0 ; i <= 500 ; i++ ){
        if( i % divisor === 0 ){
            console.log(i)
            sum = sum + i
        }
    }
    console.log("all the number divisible " + divisor + " and their sum  " + sum )
}


// ===== Exercise 2


const stock = { 
    "banana": 6, 
    "apple": 0,
    "pear": 12,
    "orange": 32,
    "blueberry":1
}  

const prices = {    
    "banana": 4, 
    "apple": 2, 
    "pear": 1,
    "orange": 1.5,
    "blueberry":10
} 



let shoppingList = ["banana","apple","orange"]

function myBill(){
    let sum = 0 ;
    for(let item of shoppingList){
        if( stock[item] > 0){
            sum += prices[item];
            stock[item] =- 1
        }
    }
    console.log("Total prices " + sum)
    return sum
}



// ===== Exercise 3



function changeEnough(itemPrice, amountOfChange) {
    let total = amountOfChange[0] * 0.25 + 
                amountOfChange[1] * 0.10 + 
                amountOfChange[2] * 0.05 + 
                amountOfChange[3] * 0.01;

    if (total >= itemPrice) {
        return true;
    } else {
        return false;
    }
}

console.log(changeEnough(4.25, [25, 20, 5, 0])); 
console.log(changeEnough(14.11, [2, 100, 0, 0])); 
console.log(changeEnough(0.75, [0, 0, 20, 5])); 



// ===== Exercise 4

function hotelCost(nights) {
    return nights * 140;
}

function planeRideCost(destination) {
    if (destination === "London") return 183;
    else if (destination === "Paris") return 220;
    else return 300;
}

function rentalCarCost(days) {
    let cost = days * 40;
    if (days > 10) cost *= 0.95; 
    return cost;
}

function totalVacationCost(nights, destination, days) {
    let hotel = hotelCost(nights);
    let plane = planeRideCost(destination);
    let car = rentalCarCost(days);

    console.log(`Hotel: $${hotel}, Plane: $${plane}, Car: $${car}`);
    return hotel + plane + car;
}


console.log("Total vacation cost:", totalVacationCost(5, "London", 12));


// ===== Exercise 5

        document.querySelectorAll("ul")[0].children[1].textContent = "Richard";

        document.querySelectorAll("ul")[1].children[1].remove();

        document.querySelectorAll("ul").forEach(ul => ul.children[0].textContent = "Mosaab");

        document.querySelectorAll("li").forEach(li => { if(li.textContent=="Dan") li.style.display="none"; });

        document.querySelectorAll("li").forEach(li => { if(li.textContent=="Richard") li.style.border="1px solid black"; });

        document.body.style.fontSize = "18px";

// ===== Exercise 6 
let nav = document.getElementById("navBar");
    nav.id = "socialNetworkNavigation";

    let li = document.createElement("li");
    li.textContent = "Logout";
    nav.querySelector("ul").appendChild(li);

    console.log("First:", nav.querySelector("ul").firstElementChild.textContent);
    console.log("Last:", nav.querySelector("ul").lastElementChild.textContent);

// ===== Exercise 7 :

for(var i=0; i<books.length; i++){
    var div = document.createElement("div");
    var p = document.createElement("p");
    p.textContent = books[i].title + " written by " + books[i].author;
    if(books[i].alreadyRead){
        p.style.color = "red";
    }
    var img = document.createElement("img");
    img.src = books[i].image;
    img.width = 100;
    div.appendChild(p);
    div.appendChild(img);
    section.appendChild(div);
}
