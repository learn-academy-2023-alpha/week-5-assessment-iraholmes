// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.
// Create an expect statement that takes in all 3 variables
// create a new parameter named "newWord"
// decide on what method will be used to convert a to 4, e to 3, i to 1, and o to 0
// try using the .includes? method 
// a) Create a test with expect statements using the variables provided.
// The .include method did not work so, instead I looked into a new method called regex
describe("codex", () => {
    it("The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o', to 0", () => {
      expect(codex(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
      expect(codex(secretCodeWord2)).toEqual("G0bbl3dyg00k")
      expect(codex(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
  })
//First Test:  ReferenceError:  codex is not defined

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.
// const codex = (shhh) => {
// const  letterChange = shhh.replace("a","4"), ("e","3"), ("i","1"), ("o","0")  
//   return letterChange
  
// }
//  const letters = shhh.includes("a, e, i, o")

// const codex = (shh) => {
//   const newCode = {
//    letter:"a",  number: "4",
//    letter:"e",  number: "3",
//    letter:"i",  number: "1",
//    letter:"o",  number: "0"}
//   const neWord = shh.includes(newCode)
//   if (neWord.includes("a")) {
//     return neWord.replaceAll("a", "4") 

//   } else if (neWord.includes("e")) {
//           return neWord.replaceAll("e", "3")
//   } else if (neWord.includes("i")){
//           return neWord.replaceAll("i", "1")
//   } else if (neWord.includes("o")) 
//           return
//           neWord.replaceAll("o", "0")
  
// }
const codex = (string) => {
    return string.replace(/a/gi, 4).replace(/[eE]/gi, 3).replace(/i/gi, 1).replace(/o/gi,0)
}
  //  newCode.replaceAll("a", 4),
  // shhh.replaceAll("e", 3),
  // shhh.replaceAll("i", 1),
  // shhh.replaceAll("o", 0))
  //  return newCode
  

console.log(codex(secretCodeWord1));


  // shhh.includes("a", "e", "i", "o")
  //   let newString = shhh.replaceAll("aeio", "4310") 
  //   let letter_a = "4"
  //   const letter_e = "3"
  //   const letter_i = "1"
  //   const letter_o = "0"   
  //     if (shhh.includes("a","e","i","o")){
  //       return shhh.replaceAll("a","4") ("e","3") 
  //   }else {
  //       return "Recalibrate"
  //   }


// only able to get the first A to return as 4. stuck!!!
// --------------------2) Create a function that takes in an array of words and a single letter and returns an array of all the words containing that particular letter.
// PsuedoCode: Create the test statement and name it "sorted"
// Add both given variables to the expect statement because both will be accounted for in the test
// a) Create a test with expect statements using the variables provided.
// Create a function for the test and create a function for the method of .filter(which only works on arrays) to filter the value of each array and search for any letters with the includes method.
//Use the OR operator to include another return condition
//Use .toUpperCase so that the capital A in apricot is also included in the search for letters a and e.
describe("sorted", () => {
    it("returns an array of all the words containing a single particular letter", () => {
      expect(sorted(fruitArray, letterA)).toEqual(["Mango", "Apricot", "Peach"])
      expect(sorted(fruitArray, letterE)).toEqual(["Cherry", "Blueberry", "Peach"])
    })
  })
  const fruitArray = ["Mango", "Cherry", "Apricot", "Blueberry", "Peach", "Kiwi"]

const letterA = "a"
// Expected output: ["Mango", "Apricot", "Peach"]
const letterE = "e"
// Expected output: ["Cherry", "Blueberry", "Peach"]
// First Output: ReferenceError: sorted is not defined

// b) Create the function that makes the test pass.
const sorted = (newArray, letter) => {
  return newArray.filter((value) => {
  return value.includes(letter) ||
   value.includes(letter.toUpperCase())
  
      
  })
}
    // if (letterA === "a") {
    //     return (["Mango", "Apricot", "Peach"])
    // } else if (letterE === "e") {
    //     return ["Cherry", "Blueberry", "Peach"]
    //   } else  "no no no"
        
      


 
// console.log(sorted(fruitArray.includes(letterA)));
// --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
// Name it myHand
// Create a function named pokerHand and a variable within the function in order to use the .sort method on the parameter I created
// Create conditional statements that will allow the cards to equal each other according to a full house and a pair.
// The && Oporator will be used to connect the "cards" as equal to the next
// 
describe ("myHand", () => {
it("returns a value of true or false", () => {
  expect(myHand(hand1)).toEqual(true)
  expect(myHand(hand2)).toEqual(false)
  expect(myHand(hand3)).toEqual(false)
  expect(myHand(hand4)).toEqual(true)

})
})

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.
// const placeHolder = (parameter) => {
// parameter.sort((a,b) => a - b)

// }


const myHand = (pokerHand) => {
  let cards = pokerHand.sort ((a,b) => a - b)
  if (cards[0] ===[1] && cards [1] === cards [2] && cards [3] === cards[4]){
  return true;
  
}else if (cards[0] === cards[1] && cards[3] && cards [2] === cards[4]){
  return true;
  
  }else 
    return false
}