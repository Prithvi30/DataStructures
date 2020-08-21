import UIKit

//Linear Time complexity
//Mark:- O(n) example
let everyone = ["dory", "bruce", "marlin", "nemo", "gill", "bloat", "nigel", "squirt", "darla", "hank"];
func findFish(_ fish: [String]) {
    for i in 0..<fish.count {
        if fish[i] == "nemo" {
            print("nemo found")
            break
        } else {
            print("nemo not found")
        }
    }
}
findFish(everyone)


//Constant Time complexity
//Mark:- O(1)
//Doesn't matter the maximum input size

var numbers = [1,2,3,4,5,6,7,8]
func logFirstTwoNumbers(boxes: [Int]){
    guard let first = numbers.first else {
        return
    }
    print(first)
}

logFirstTwoNumbers(boxes: numbers)

func funChallenge(_ input: [Int]) {
    var a = 10 // 0(1)
    a = 50 + 3 // 0(1)
    
    for _ in 0..<input.count { // 0(n)
        someFunc()  // 0(1)
        _ = true // 0(n)
        a += 1 // 0(n)
    }
}
func someFunc() {
    print("do nothing")
}
funChallenge([5]) // Big(O) for this is Big(n^2)

// Challenge second
func funTask(_ numbers: [Int]) {
    let a = 5  // 0(1)
    let b = 10 // 0(1)
    let c = 50 // 0(1)
    
    for i in 0..<numbers.count {
        let x = i + 1 // 0(n)
        let y = i + 2 // 0(n)
        let j = i + 3 // 0(n)
    }
    
    for j in 0..<numbers.count {
        let p = j * 2 // 0(n)
        let q = j * 2 // 0(n)
    }
    let whoAMI = "I don't know" // 0(1)
}

funTask([5])

// Big O for the above func is  Big O(4+5n)

func funcExample(_ number: [Int]) {
    print(numbers[0])
    
    var middleIndex = numbers.count / 2
    var index = 0
    
    while index > middleIndex {
        print(number[index])
        index += 1
    }
    
    for i in 0..<100 {
        print("hello")
    }
}

//Quadratic Time complexity
//Mark:- O(n^2) example

var pairs = [1,2,3,4,5,6]

func findAllPairs(_ pair: [Int]) {
    pair.forEach { (numer1) in
        print(numer1)
        pair.forEach { (number2) in
            print("[\(numer1), \(number2)]")
            print(number2)
        }
    }
}
print(pairs)


// Space Complexity
// Mark:- O(1) example
func simpleNumber(number: [Int]) {
    for _ in 0..<number.count {
        print("booo")
    }
}
simpleNumber(number: [1,2,3,4,5]) // Space complexity is O(1) because there is no variables in the function which create space complexity

func arrayOfitems(number: [Int]) {
    var name = [String]()  // New array which create space (data structure creates space complexity)
    for i in 0..<number.count {
        name[i] = "Raj"
    }
}
arrayOfitems(number: [5]) // O(n) Space complexity is Additional memory space.


