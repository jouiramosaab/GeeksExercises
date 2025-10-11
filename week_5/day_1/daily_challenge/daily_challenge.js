// 1st daily challenge

function makeAllCaps(arr){
      return new Promise((resolve,reject)=>{
        let newArr = []
        for(i = 0 ; i < arr.length ; i ++ ){
            if(typeof arr[i] == "string"){
              let element = arr[i].toUpperCase()
              newArr.push(element)
            }else{
              return reject("error")
            }

        }
        resolve(newArr)
      })
    }

    function sortWords(arr){
       return new Promise((resolve,reject)=>{
          if(arr.length > 4){
            resolve(arr.sort())
          }else{
            return reject("error")
          }
       })
    }



    makeAllCaps(["apple","avocado","melon","pear","kiwi"])
      .then((arr)=>sortWords(arr))
      .then((result)=>console.log(result))
      .catch( error => console.log(error) )



      


