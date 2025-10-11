// ===== Exercise 1

    


// ===== Exercise 2
        var form = document.querySelector("form");
        console.log(form)

        var inp = document.getElementById("fname");
        console.log(inp)

        var inpu = document.getElementById("lname");
        console.log(inpu)

        var name = document.getElementsByName("firstname")
        console.log(name)


        const forum = document.querySelector("form")
        const ul = document.querySelector(".usersAnswer")

        form.addEventListener("submit",function(event){
            event.preventDefault()
        })

        const inputs = document.querySelectorAll("input[type='text']")

        inputs.forEach(input => {
            if(input.value.trim() !== ""){
                const li = document.createElement("li");
                li.textContent = input.value ;
                ul.appendChild(li)
                input.value = ""
            }
        });
// ===== Exercise 3

// ===== Exercise 4

// ===== Exercise ...