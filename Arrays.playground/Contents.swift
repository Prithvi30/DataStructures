import UIKit

var letters = ["a","b","c","d"]

//push
letters.append("e") // O(1)

//Pop
letters.remove(at: 3) // O(1)

letters[0] = "A" // O(n) because changing the memory address(indexes) of the items in array

letters.insert("H", at: letters.count/2) // O(n/2) ignore lest item so its O(n)

// Mark: BigO for Arrays

/* LookUp or access are faster O(1)
 Push or add are fater O(1)
 Insert changes in memory/Indexes of the items so its linear O(n)
 delete also changes the memory/Indices so linear O(n) */

class customArray {
    var lenght: Int
    var data: [Int: String]
    
    init() {
        self.lenght = 0
        self.data = [:]
    }
    
    // Get the item at Index
    func get(_ itemAtIndex: Int) -> String {
        guard let item = data[itemAtIndex] else {
            return "Undefined Value"
        }
        return item
    }
    
    // Push new item to array (this is O(1))
    func push(item: String) -> Int {
        self.data[lenght] = item
        lenght += 1
        return lenght
    }
    
    // pop item from array (this is O(1))
    func pop() -> String? {
        // Checking if index is valid to avoid index out of Range
        guard let index = data.index(forKey: self.lenght - 1) else {
            return nil
        }
        self.lenght - 1
        return data.remove(at: index).value
    }
    
    //delete the items from array
    func delete(item: Int) -> String? {
        guard let itemsToDelete = self.data[item] else { return nil }
        shiftIndices(item)
        return itemsToDelete
    }
    
    // ShiftIndices
    func shiftIndices(_ fromIndex: Int) {
        for i in fromIndex..<lenght - 1 {
            self.data[i] = data[i+1] //
        }
        //remove the last item
        self.pop()
    }
}

var array = customArray()
array.push(item: "One")
array.push(item: "Two")
array.push(item: "Three")
array.push(item: "Found")
array.pop()

array.delete(item: 0)
array.push(item: "five")
array.push(item: "six")
array.push(item: "seven")
array.delete(item: 3)

print(array)

extension customArray: CustomStringConvertible {
    var description: String {
        let sortedData = data.sorted { $0.key < $1.key }
        return "\(lenght) : \(sortedData)"
    }
}


// Example for reverse a string
func reverse(item: String) -> String {
    var reverse = ""
    for char in item {
        reverse = char.description + reverse
    }
    return reverse
}
reverse(item: "hello")
