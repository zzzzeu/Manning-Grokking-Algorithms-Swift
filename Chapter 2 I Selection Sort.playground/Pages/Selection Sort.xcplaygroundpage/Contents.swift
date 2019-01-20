//sort an array from smallest to largest

func findSmallest(array: [Int]) -> Int {
    var smallest = array[0], smallest_index = 0
    for i in 1..<array.count {
        if array[i] < smallest {
            smallest = array[i]
            smallest_index = i
        }
    }
    return smallest_index
}

func selectionSort(array: [Int]) -> [Int] {
    var array = array
    var newArray = [Int]()
    for _ in array.indices {
        let smallest = findSmallest(array: array)
        newArray.append(array.remove(at: smallest))
    }
    return newArray
}
