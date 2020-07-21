import UIKit

//Linear search
let a = [2,5,6,7,7]
let search = 2

for i in a where search == i {
    print("found")
}


//merge 2 array
let array1 = [1,2,3,5,7]
let array2 = [2,4]

func merge(_ array1: [Int], _ array2: [Int]) -> [Int] {
    
    var finalArray:[Int] = []

    let array1_length = array1.count
    let array2_length = array2.count
    
    var i = 0
    var j = 0
    
    while i != array1_length && j != array2_length {
        
        if array1[i] < array2[j] {
            finalArray.append(array1[i])
            i += 1
        } else {
            finalArray.append(array2[j])
            j += 1
        }
    }
    
    while i != array1_length {
        finalArray.append(array1[i])
        i += 1
    }
    
    while j != array2_length {
           finalArray.append(array2[j])
           j += 1
       }
        
    return finalArray
}

let result = merge(array1, array2)

print(result)

//union, intersection, subtract, symmetricDifference

let arr1 = ["a", "b", "c"]
let arr2 = ["a", "b", "d"]

let set1 = Set(arr1)
let set2 = Set(arr2)

print("union is \(set1.union(set2))")
print("union is \(set1.intersection(set2))")

print("subtract is \(set1.subtracting(arr2))")
print("subtract is \(set2.subtracting(arr1))")

print("symmetricDifference is \(set1.symmetricDifference(arr2))")

